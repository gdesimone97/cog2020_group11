#!/usr/bin/env python2
import rospy
from naoqi_driver.naoqi_moveto import MoveToListener

if __name__ == "__main__":
  listener = MoveToListener()
  rospy.spin()
  exit(0)
