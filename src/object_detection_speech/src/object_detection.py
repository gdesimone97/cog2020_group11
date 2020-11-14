#!/usr/bin/python3
import rospy
import tensorflow as tf
assert(int(tf.__version__.split('.')[0]) >= 2)
import ros_numpy
import numpy as np
from classmap import category_map as classmap
from sensor_msgs.msg import Image
from object_detection_speech.srv import capture_ended, capture_endedResponse, Say
import json
import os

def callback(data):

    # convert Image into numpy array
    img = ros_numpy.numpify(data)
    global dict_obj
    
    # image preprocessing
    img_copy = img.copy()
    img = img[:,:,::-1]
    input_tensor = tf.convert_to_tensor(img)
    input_tensor = input_tensor[tf.newaxis, ...]

    # detect classes into the image
    detections = detect_fn(input_tensor)
    num_above_thresh = np.sum( detections['detection_scores'] > 0.5 )
    detections.pop('num_detections')
    detections = {key: value[0, :num_above_thresh].numpy() for key, value in detections.items()}
    detections['detection_classes'] = detections['detection_classes'].astype(np.int64)

    h,w,_ = img_copy.shape
    for c,s in zip(detections['detection_classes'], detections['detection_scores']):
        if dict_obj.get(classmap[c]) is None:
            dict_obj[classmap[c]] = 1
        else:
            dict_obj[classmap[c]] = dict_obj[classmap[c]] + 1


def handleService(req):

    global dict_obj
    rospy.wait_for_service('animatedSay')
    try:
        call = rospy.ServiceProxy('animatedSay', Say)
        resp1 = call(json.dumps(dict_obj))
    except rospy.ServiceException as e:
        rospy.logwarn("Service call failed: %s" %e)
        dict_obj = {}
        return capture_endedResponse(False)

    dict_obj = {}
    return capture_endedResponse(resp1.result)

def detector():
    rospy.init_node('object_detection')
    rospy.Service("capture_ended", capture_ended, handleService)
    rospy.Subscriber(TOPIC_SUB, Image, callback)
    rospy.spin()


if __name__ == '__main__':
    TOPIC_SUB = "frame_read"
    TOPIC_PUB = "obj_detected"
    dict_obj = {}
    print('Loading model...', end='')
    DET_PATH = os.path.dirname(__file__) + '/../efficientdet_d1_coco17_tpu-32'
    detect_fn = tf.saved_model.load(DET_PATH)
    print('Done!')
    detector()