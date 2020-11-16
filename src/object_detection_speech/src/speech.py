#!/usr/bin/python2.7
import rospy
from naoqi_driver.naoqi_node import NaoqiNode
from object_detection_speech.srv import Say, SayResponse
import json

class AnimatedSay(NaoqiNode):
    TOPIC_SUB = "obj_detected"

    def __init__(self):
        NaoqiNode.__init__(self, 'animated_speech')
        self.connectNaoQi()
        pass

    def say(self, data):
        rospy.loginfo("START: %s" %data.message)
        self.speech.say("In totale ho rilevato questi oggetti:")
        
        # Converting Json
        dictionary = json.loads(data.message)

        for k,v in dictionary.items():
            stringa = k + ", " + v + ". "
            self.speech.say(stringa)
        rospy.loginfo("END: %s" %data.message)

        self.speech.say("Ho finito.")
        return SayResponse(True)

    def connectNaoQi(self):
        self.speech = self.get_proxy("ALAnimatedSpeech")
        self.s = rospy.Service('animatedSay', Say, self.say)


if __name__ == '__main__':
    rospy.init_node('speak')
    pub = AnimatedSay()
    rospy.spin()