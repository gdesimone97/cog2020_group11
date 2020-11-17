#!/usr/bin/python2.7

import rospy
from sensor_msgs.msg import Image
from object_detection_speech.srv import Capture, CaptureResponse
import time
from object_detection_speech.msg import ImagePos

class StreamCapture():
    def __init__(self):
        rospy.init_node("frame_reader")
        self.r = rospy.Rate(1)
        self.pub = rospy.Publisher("frame_read", ImagePos, queue_size=1)
        rospy.Subscriber("/pepper_robot/camera/front/camera/image_raw", Image, self.frame_reader)
        rospy.Service("Capture", Capture, self.callback)
        self.flag = False
        self.pos = 0


    def frame_reader(self, data):
        if self.flag:
            mex = ImagePos()
            mex.pos = self.pos
            mex.image = data
            self.pub.publish(mex)
            self.flag = False
            rospy.loginfo("Publishing image...")

    def callback(self, req):
        self.pos = req.pos
        self.flag = True
        time.sleep(0.2)
        return CaptureResponse(True)


if __name__ == "__main__":
    streamCapture = StreamCapture()
    print("All ok")
    rospy.spin()