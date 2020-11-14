#!/usr/bin/python2.7

import rospy
from sensor_msgs.msg import Image
from object_detection_speech.srv import Capture, CaptureResponse
import time

def frame_reader(data):

    global flag

    if flag:
        image = data

        '''
        values = map(ord, list(result[6]))
        i = 0
        for y in range(0, height):
            for x in range(0, width):
                image.itemset((y, x, 0), values[i + 0])
                image.itemset((y, x, 1), values[i + 1])
                image.itemset((y, x, 2), values[i + 2])
                i += 3
        '''
        pub.publish(image)
        flag = False
        rospy.loginfo("Publishing image...")

def callback(req):

    global flag
    flag = True
    time.sleep(0.2)
    return CaptureResponse(True)

    '''  
    frame = videoDevice.getImageRemote(captureDevice)
    values = map(ord, list(result[6]))
    i = 0
    for y in range(0, height):
      for x in range(0, width):
          image.itemset((y, x, 0), values[i + 0])
          image.itemset((y, x, 1), values[i + 1])
          image.itemset((y, x, 2), values[i + 2])
          i += 3
    pub_img(frame, pub)
    rospy.loginfo("Publishing image...")
    return CaptureResponse(True)
    '''

if __name__ == "__main__":

    rospy.init_node("frame_reader")

    #width = 320
    #height = 240
    flag = False
    #frame = np.zeros((height, width, 3), np.uint8)
    r = rospy.Rate(1)
    pub = rospy.Publisher("frame_read", Image, queue_size=1)
    #rospy.Subscriber("/pepper_robot/camera/front/camera/image_raw", Image, frame_reader)
    rospy.Service("Capture", Capture, callback)
    rospy.spin()