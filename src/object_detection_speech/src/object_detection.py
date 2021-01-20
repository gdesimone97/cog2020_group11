#!/usr/bin/python3
import rospy
import tensorflow as tf

assert (int(tf.__version__.split('.')[0]) >= 2)
import ros_numpy
import numpy as np
from classmap import category_map as classmap
from object_detection_speech.srv import capture_ended, capture_endedResponse, Say
import os
from object_detection_speech.msg import ImagePos
from head_movement import HeadMovement
from threading import Condition
import time

'''
This class performs the detection task.
It loads the detector net and obtains the objects list from an image.
'''
class Detector():
    #This class performs a subscription to the topic TOPIC_SUB to retrieve the captured image, while publish on the topic 
    #TOPIC_PUB to publish/return the result of the image detection on the previously captured image
    TOPIC_SUB = "frame_read"
    TOPIC_PUB = "obj_detected"


    '''
    Builder for the class
    '''
    def __init__(self):
        #Initialize the node 'object_detection'
        rospy.init_node('object_detection')
        #Create the service 'capture_ended' and start it
        rospy.Service("capture_ended", capture_ended, self.handleService)
        #Subscrive to the 'frame_read' topic to retrieve the images
        rospy.Subscriber(Detector.TOPIC_SUB, ImagePos, self.callback)
        #Counter to keep track of executed movements of the head after end_capture service response, the head should move 3 times
        self.count = 0
        #Dictionary to keep track of the different detected objects in the 3 directions
        self.dict_obj = {HeadMovement.CENTRO: {}, HeadMovement.SINISTRA: {}, HeadMovement.DESTRA: {}}

    '''
    Utility to check if the counter reached its maximum value
    '''
    def _count_end(self):
        return self.count == 3
        
    '''
    Increse the counter, if it reached the maximum acquire the scheduler variable, then notify who's waiting on that and release the variable
    '''
    def sum_count(self):
        self.count += 1
        if self.count == 3:
            scheduler.acquire()
            scheduler.notify()
            scheduler.release()

    '''
    Method to perform the speech of Pepper with the identified objects
    '''
    def talk(self):

        '''
        Map actual direction of the detection to a string

        @param: pos Position of the head as integer
        '''
        def pos2string(pos):
            pos = int(pos)
            if pos == HeadMovement.DESTRA:
                #return "A Destra"
                return  "On the right"
            elif pos == HeadMovement.CENTRO:
                #return "Al Centro"
                return "In the center"
            elif pos == HeadMovement.SINISTRA:
                #return "A Sinistra"
                return "On the left"
        #Generate the full string with all the objects detected and identified associated to their position
        #stringa = "Questi sono gli oggetti che ho rilevato:"
        stringa = "I detected these objects: "
        #Iterate first on the different direction
        for k, v in self.dict_obj.items():
            #stringa = stringa + self.pos2string(k) + " ho visto: "
            stringa = stringa + pos2string(k) + " I saw: "
            if len(v) == 0:
                #stringa = stringa + "Niente. "
                stringa = stringa + "nothing. "
            else:
                #If is detected at least one object, generate a string indicating the type of the object and number of its occurrencies
                for obj, num in v.items():
                    #stringa = stringa + "un " + obj + " " + str(num) + (" volte" if num > 1 else " volta") + ", "
                    stringa = stringa + (str(num) if num>1 else "a") + " " + obj + ("s" if num > 1 else "") + ", "
                stringa = stringa + ". "

        #stringa = stringa + "Finito."
        stringa = stringa + "Finished."
        #print(stringa)
        #Wait for  the animatedSay service
        rospy.wait_for_service('animatedSay')
        #Call the service with the previusly build string and return the result of the call
        resp1= call(stringa)
        return resp1

    '''
    Clear the dictionary that keep tracks of the detected objects
    '''
    def _clear_dict(self):

        self.dict_obj[HeadMovement.CENTRO].clear()
        self.dict_obj[HeadMovement.SINISTRA].clear()
        self.dict_obj[HeadMovement.DESTRA].clear()


    '''
    Callback called after receiving an update on the topic in which I'm subscribed
    
    @param: data Message containing head position as integer and data stream of image.
    '''
    def callback(self, data: ImagePos):
        #Retrieve postion from the image
        pos = data.pos
        # convert Image into numpy array
        img = ros_numpy.numpify(data.image)

        # image preprocessing
        img = img[:, :, ::-1]
        input_tensor = tf.convert_to_tensor(img)
        input_tensor = input_tensor[tf.newaxis, ...]

        # detect classes into the image
        start = time.time()
        detections = detect_fn(input_tensor)
        end = time.time()
        elapse = str(round(end - start, 2))
        print("Detection completed in", elapse, "seconds")
        num_above_thresh = np.sum(detections['detection_scores'] > 0.5)
        detections.pop('num_detections')
        detections = {key: value[0, :num_above_thresh].numpy() for key, value in detections.items()}
        detections['detection_classes'] = detections['detection_classes'].astype(np.int64)

        #For every detected object update or initialize the counting of that object in that direction
        for c, s in zip(detections['detection_classes'], detections['detection_scores']):
            if self.dict_obj[pos].get(classmap[c]) is None:
                self.dict_obj[pos][classmap[c]] = 1
            else:
                self.dict_obj[pos][classmap[c]] = self.dict_obj[pos][classmap[c]] + 1
        print(pos, self.dict_obj[pos])

        #Update the counter variable "count"
        self.sum_count()

    '''
    Callback is called when the dictionary is ready to be sent.
    
    @param: req Client request 
    '''
    def handleService(self, req):

        #First case, Pepper didn't do all 3 movements, so wait to be notified after every detection
        if(self.count != 3):
            scheduler.acquire()
            scheduler.wait()
            scheduler.release()
            
        self.count = 0
        try:
            #Call the method talk to make Pepper perform the speech
            resp = self.talk()
            #Clear the dictionary with found and detected objects
            self._clear_dict()
            #Return the result of 'capture_ended' service
            return capture_endedResponse(resp.result)
        except rospy.ServiceException as e:
            rospy.logwarn("Service call failed: %s" % e)
            self._clear_dict()
            return capture_endedResponse(False)


if __name__ == '__main__':
    #Wait the service animatedSay
    rospy.wait_for_service('animatedSay')
    #Call the service Say
    call = rospy.ServiceProxy('animatedSay', Say)
    #call("One moment please. I'm loading the model into my brain")
    print('Loading model...', end='')
    #Create a Condition object called scheduler to manage inter-thread communication
    scheduler = Condition()
    MODEL_NAME = "efficientdet_d2_coco17_tpu-32" #Modify model name here
    DET_PATH = os.path.dirname(__file__) + '/../models/' + MODEL_NAME
    #Load the tf model
    start = time.time()
    detect_fn = tf.saved_model.load(DET_PATH)
    end = time.time()
    elapse = str(round(end - start, 2))
    print('Done!')
    #Create the Detector object
    det = Detector()
    print("Model loaded in", elapse, "seconds")
    rospy.spin()