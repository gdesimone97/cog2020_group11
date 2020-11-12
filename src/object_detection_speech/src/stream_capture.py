#!/usr/bin/python2.7

import cv2 as cv
import rospy
from sensor_msgs.msg import Image
import cv_bridge    
from naoqi import ALProxy
from progetto.srv import Capture,CaptureResponse


def callback(req):
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



IP = "10.0.252.91"
PORT = 9559
rospy.init_node("frame_reader")
try:
  videoDevice = ALProxy("ALVideoRecorder", IP, PORT)
except Exception as e:
  print("Error when creating ALVideoRecorder proxy:")
  print(str(e))
  exit(1)
  
AL_kTopCamera = 0
AL_kQVGA = 1            # 320x240
AL_kBGRColorSpace = 13
captureDevice = videoDevice.subscribeCamera("test", AL_kTopCamera, AL_kQVGA, AL_kBGRColorSpace, 10)
width = 320
height = 240
frame = np.zeros((height, width, 3), np.uint8)
r = rospy.Rate(1)
pub = rospy.Publisher("frame_read", Image, queue_size=1)
rospy.Service("Capture",Capture,callback)
rospy.spin()

    
    
    
    