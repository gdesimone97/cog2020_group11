#!/usr/bin/python2.7

import rospy
from sensor_msgs.msg import Image
from object_detection_speech.srv import Capture, CaptureResponse
import time
from object_detection_speech.msg import ImagePos

class StreamCapture():
    def __init__(self):
        #Initialize a nod called frame_reader
        rospy.init_node("frame_reader")
        self.r = rospy.Rate(1)
        #Createa  publisher for the topic 'frame_read'
        self.pub = rospy.Publisher("frame_read", ImagePos, queue_size=1)
        #Subscribe to the 'image_raw' topic that directly comes from the camera
        rospy.Subscriber("/pepper_robot/camera/front/camera/image_raw", Image, self.frame_reader)
        #Create and start the service Capture
        rospy.Service("Capture", Capture, self.callback)
        self.flag = False
        self.pos = 0




    def frame_reader(self, data):
        #Activate only if the flag is set to True so can performs frame reading
        if self.flag:
            mex = ImagePos()
            mex.pos = self.pos
            mex.image = data
            #Publish the acquired image on 'frame_read'
            self.pub.publish(mex)
            #Release the flag
            self.flag = False
            rospy.loginfo("Publishing image...")

    #Callback of the Capture service
    def callback(self, req):
        #Upon receiving a request, identify the postion
        self.pos = req.pos
        #Set the flag to true to allow the reading of the frame and sleep for 0.2 seconds while the operation is performed
        self.flag = True
        time.sleep(0.2)
        return CaptureResponse(True)


if __name__ == "__main__":
    streamCapture = StreamCapture()
    print("All ok")
    rospy.spin()