#!/usr/bin/python3
import rospy
import tensorflow as tf

assert (int(tf.__version__.split('.')[0]) >= 2)
import ros_numpy
import numpy as np
from classmap import category_map as classmap
from sensor_msgs.msg import Image
from object_detection_speech.srv import capture_ended, capture_endedResponse, Say
import json
import os
from object_detection_speech.msg import ImagePos
from head_movement import HeadMovement
from threading import Condition


class Detector():
    TOPIC_SUB = "frame_read"
    TOPIC_PUB = "obj_detected"

    def __init__(self):
        rospy.init_node('object_detection')
        rospy.Service("capture_ended", capture_ended, self.handleService)
        rospy.Subscriber(Detector.TOPIC_SUB, ImagePos, self.callback)
        self.count = 0
        self.dict_obj = {HeadMovement.CENTRO: {}, HeadMovement.SINISTRA: {}, HeadMovement.DESTRA: {}}

    def _count_end(self):
        return self.count == 3
        
    def sum_count(self):
        self.count += 1
        if self.count == 3:
            scheduler.acquire()
            scheduler.notify()
            scheduler.release()

    def talk(self):

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

        #stringa = "Questi sono gli oggetti che ho rilevato:"
        stringa = "I detected these objects: "
        for k, v in self.dict_obj.items():
            #stringa = stringa + self.pos2string(k) + " ho visto: "
            stringa = stringa + pos2string(k) + " I saw: "
            if len(v) == 0:
                #stringa = stringa + "Niente. "
                stringa = stringa + "nothing. "
            else:
                for obj, num in v.items():
                    #stringa = stringa + "un " + obj + " " + str(num) + (" volte" if num > 1 else " volta") + ", "
                    stringa = stringa + (str(num) if num>1 else "a") + " " + obj + ("s" if num > 1 else "") + ", "
                stringa = stringa + ". "

        #stringa = stringa + "Finito."
        stringa = stringa + "Finished."
        print(stringa)
        rospy.wait_for_service('animatedSay')
        resp1= call(stringa)
        return resp1

    def _clear_dict(self):

        self.dict_obj[HeadMovement.CENTRO].clear()
        self.dict_obj[HeadMovement.SINISTRA].clear()
        self.dict_obj[HeadMovement.DESTRA].clear()

    def callback(self, data: ImagePos):
        pos = data.pos
        # convert Image into numpy array
        img = ros_numpy.numpify(data.image)

        # image preprocessing
        img_copy = img.copy()
        img = img[:, :, ::-1]
        input_tensor = tf.convert_to_tensor(img)
        input_tensor = input_tensor[tf.newaxis, ...]

        # detect classes into the image
        detections = detect_fn(input_tensor)
        num_above_thresh = np.sum(detections['detection_scores'] > 0.5)
        detections.pop('num_detections')
        detections = {key: value[0, :num_above_thresh].numpy() for key, value in detections.items()}
        detections['detection_classes'] = detections['detection_classes'].astype(np.int64)

        for c, s in zip(detections['detection_classes'], detections['detection_scores']):
            if self.dict_obj[pos].get(classmap[c]) is None:
                self.dict_obj[pos][classmap[c]] = 1
            else:
                self.dict_obj[pos][classmap[c]] = self.dict_obj[pos][classmap[c]] + 1
        print(pos, self.dict_obj[pos])
        self.sum_count()

    def handleService(self, req):

        
        if(self.count != 3):
            scheduler.acquire()
            scheduler.wait()
            scheduler.release()
            
        self.count = 0
        try:
            resp = self.talk()
            self._clear_dict()
            print(self.dict_obj)
            return capture_endedResponse(resp.result)
        except rospy.ServiceException as e:
            rospy.logwarn("Service call failed: %s" % e)
            self._clear_dict()
            print(self.dict_obj)
            return capture_endedResponse(False)


if __name__ == '__main__':
    rospy.wait_for_service('animatedSay')
    call = rospy.ServiceProxy('animatedSay', Say)
    #call("One moment please. I'm loading the model into my brain")
    print('Loading model...', end='')
    scheduler = Condition()
    DET_PATH = os.path.dirname(__file__) + '/../efficientdet_d1_coco17_tpu-32'
    detect_fn = tf.saved_model.load(DET_PATH)
    print('Done!')
    det = Detector()
    rospy.spin()