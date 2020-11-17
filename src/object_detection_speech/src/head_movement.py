#!/usr/bin/python2.7
import rospy
from naoqi_bridge_msgs.msg import JointAnglesWithSpeed
from object_detection_speech.srv import Capture, capture_ended
import sys

class HeadMovement():

    SINISTRA = 2
    CENTRO = 1
    DESTRA = 0

    def __init__(self):

        rospy.init_node('head_moviment')
        self.p = rospy.Publisher('/pepper_robot/pose/joint_angles', JointAnglesWithSpeed, queue_size=0)
        self.s = JointAnglesWithSpeed()
        self.s.joint_names = ['HeadPitch', 'HeadYaw']
        self.s.relative = 0
        self.s.speed = 0.2
        self.rate = rospy.Rate(0.2)

    def move_head(self, pos, capture=True):

        self.s.joint_angles = [0.2, pos-1]
        rospy.loginfo(self.s.joint_angles)
        self.p.publish(self.s)
        self.rate.sleep()

        if not capture:
            return True

        if (self.capture_images(pos) == False):
            rospy.logerr("Errore cattura immagini a ", pos)
            return False

        return True


    def end_capture(self):
        try:
            call = rospy.ServiceProxy('capture_ended', capture_ended)
            resp = call()
        except rospy.ServiceException as e:
            rospy.logwarn("Service call failed: %s" %e)
            return False
        return resp.result

    def capture_images(self, pos):
        try:
            call = rospy.ServiceProxy('Capture', Capture)
            resp = call(pos)
        except rospy.ServiceException as e:
            rospy.logwarn("Service call failed: %s" %e)
            return False
        return True

if __name__ == "__main__":

    headMovement = HeadMovement()
    print("Sto aspettando Capture")
    rospy.wait_for_service('Capture')
    print("Sto aspettando capture_ended")
    rospy.wait_for_service('capture_ended')
    headMovement.move_head(HeadMovement.CENTRO, False)

    headMovement.move_head(HeadMovement.SINISTRA)
    headMovement.move_head(HeadMovement.CENTRO)
    headMovement.move_head(HeadMovement.DESTRA)
    headMovement.move_head(HeadMovement.CENTRO, False)

    headMovement.end_capture()