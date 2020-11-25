#!/usr/bin/python2.7
import rospy
from naoqi_bridge_msgs.msg import JointAnglesWithSpeed
from object_detection_speech.srv import Capture, capture_ended

class HeadMovement():

    #Mapping between directions in which the head can move and numerical value
    SINISTRA = 2
    CENTRO = 1
    DESTRA = 0

    #Builder for the class
    def __init__(self):

        #Initializaiton of ROS node with name "head_movement"
        rospy.init_node('head_moviment')
        #Create a publisher on the topic joint_angles to retrieve the actual position of the joints
        self.p = rospy.Publisher('/pepper_robot/pose/joint_angles', JointAnglesWithSpeed, queue_size=0)
        #This part of the code is used to manage the movement of Pepper's head
        self.s = JointAnglesWithSpeed()
        self.s.joint_names = ['HeadPitch', 'HeadYaw']
        self.s.relative = 0
        self.s.speed = 0.2
        self.rate = rospy.Rate(0.37)


    def move_head(self, pos, capture=True):
        #Set the joint angles for the actual movement to perform
        self.s.joint_angles = [0.2, pos-1]
        rospy.loginfo(self.s.joint_angles)
        #Publish the new value for the joint angles on the topic joint_angles
        self.p.publish(self.s)
        self.rate.sleep()

        #Pepper is not busy capturing image of the enviroment, return True
        if not capture:
            return True

        #Error management during the frame capture
        if (self.capture_images(pos) == False):
            rospy.logerr("Errore cattura immagini a ", pos)
            return False

        #Pepper did the capture of the frame and everything went succesful
        return True


    #Call the capture_ended service and in case of succesful operation, return the reply retrieved by response of the service
    def end_capture(self):
        try:
            call = rospy.ServiceProxy('capture_ended', capture_ended)
            resp = call()
        except rospy.ServiceException as e:
            rospy.logwarn("Service call failed: %s" %e)
            return False
        return resp.result

    #Call the Capture service to retrieve a frame of the environment, if everything goes well return True, otherwise False
    def capture_images(self, pos):
        try:
            call = rospy.ServiceProxy('Capture', Capture)
            resp = call(pos)
        except rospy.ServiceException as e:
            rospy.logwarn("Service call failed: %s" %e)
            return False
        return True


if __name__ == "__main__":
    #Create a HeadMovement object and move the head for the first time without capturing any frame
    headMovement = HeadMovement()
    #Call of the "Capture" service 
    rospy.loginfo("Sto aspettando Capture")
    rospy.wait_for_service('Capture')
    rospy.loginfo("Sto aspettando capture_ended")
    #Wait for the capture to be compelted through waiting the service 'capture_ended'
    rospy.wait_for_service('capture_ended')
    #Perform movement of the head in any direction performing a capture
    headMovement.rate.sleep()
    headMovement.move_head(HeadMovement.CENTRO, False)
    headMovement.move_head(HeadMovement.SINISTRA)
    
    headMovement.move_head(HeadMovement.CENTRO)
    headMovement.move_head(HeadMovement.DESTRA)
    #Align the head back to the center without retrieving any frame
    headMovement.move_head(HeadMovement.CENTRO, False)
    #Call the service 'capture_ended' to end with the retrieving of the images
    headMovement.end_capture()