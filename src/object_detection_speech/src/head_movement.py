#!/usr/bin/python2.7
import rospy
from naoqi_bridge_msgs.msg import JointAnglesWithSpeed
from object_detection_speech.srv import Capture, CaptureResponse, capture_ended
import time

def end_capture():
    try:
        call = rospy.ServiceProxy('capture_ended', capture_ended)
        resp = call()
    except rospy.ServiceException as e:
        rospy.logwarn("Service call failed: %s" %e)
        return False
    return resp.result

def capture_images():
    try:
        call = rospy.ServiceProxy('Capture',Capture)
        resp = call()
    except rospy.ServiceException as e:
        rospy.logwarn("Service call failed: %s" %e)
        return False
    return True



rospy.init_node('test')
print("Sto aspettando Capture")
rospy.wait_for_service('Capture')
print("Sto aspettando capture_ended")
rospy.wait_for_service('capture_ended')
p = rospy.Publisher('/pepper_robot/pose/joint_angles', JointAnglesWithSpeed, queue_size=0)
s = JointAnglesWithSpeed()
s.joint_names=['HeadPitch', 'HeadYaw']
s.relative=0
s.speed=0.2
rate = rospy.Rate(0.2)
s.joint_angles=[0.2, 0]
rospy.loginfo(s.joint_angles) #va al centro
p.publish(s)
rate.sleep()
while not rospy.is_shutdown():
    command = raw_input("Press f to start")
    if(command == 'f'):
        s.joint_angles=[0.2, 1.0 ]  #va a sinistrra
        rospy.loginfo(s.joint_angles)
        p.publish(s)
        rate.sleep()
        if(capture_images()==False):
            rospy.logerr("Errore cattura immagini a sinistra")
            break
        rospy.loginfo("fine acquisizione immagine a sinistra")
        s.joint_angles=[0.2, 0]
        rospy.loginfo(s.joint_angles) #va al centro
        p.publish(s)
        rate.sleep()
        if(capture_images()==False):
            rospy.logerr("Errore cattura immagini al centro")
            break
        rospy.loginfo("fine acquisizione immagine al centro")
        
        s.joint_angles=[0.2, -1.0] #va a destra
        rospy.loginfo(s.joint_angles)
        p.publish(s)
        rate.sleep()

        if(capture_images()==False):
            rospy.logerr("Errore cattura immagini a destra")
            break
        rospy.loginfo("fine acquisizione immagine a destra")
        s.joint_angles=[0.2, 0] #va al centro
        rospy.loginfo(s.joint_angles)
        p.publish(s)
        rate.sleep()
        if(capture_images()==False):
            rospy.logerr("Errore discorso")
            break
        rospy.loginfo("fine discorso")#qui ci chiama il servizio di fine acquisione