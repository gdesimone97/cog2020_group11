#!/usr/bin/python2.7
import rospy
from naoqi_driver.naoqi_node import NaoqiNode
from object_detection_speech.srv import Say, SayResponse
import json

class AnimatedSay(NaoqiNode):
    TOPIC_SUB = "obj_detected"
    IP = "10.0.1.230"
    PORT = "9559"

    def __init__(self):
        NaoqiNode.__init__(self, 'animated_speech')
        self.connectNaoQi()
        pass

    def say(self, data):
        rospy.loginfo("START: %s" %data.message)
        self.speech.say(str(data.message))
        return SayResponse(True)

    def connectNaoQi(self):
        self.speech = self.get_proxy("ALAnimatedSpeech")
        #self.speech.setLanguage("English")
        self.s = rospy.Service('animatedSay', Say, self.say)


if __name__ == '__main__':
    #rospy.init_node('speak')
    #rospy.set_param("~pip", "10.0.1.230")
    #rospy.set_param("~pport", 9559)
    pub = AnimatedSay()
    rospy.spin()