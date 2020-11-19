#!/usr/bin/python2.7
import rospy
from naoqi_driver.naoqi_node import NaoqiNode
from object_detection_speech.srv import Say, SayResponse
from head_movement import HeadMovement
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
        self.speech.say("Questi sono gli oggetti che ho rilevato:")
        
        # Converting Json
        dictionary = json.loads(data.message)
        print("dict: ", dictionary)
        stringa = ""
        for k,v in dictionary.items():
            stringa = stringa + self.pos2string(k) + " ho visto: "
            if len(v) == 0:
                stringa = stringa + "Niente. "
            else:
                for obj, num in v.items():
                    stringa = stringa + "un " + obj + " " + str(num) + (" volte" if num > 1 else " volta") + ", "
                stringa = stringa + ". "

        stringa = stringa + "Finito."
        print(stringa)
        self.speech.say(str(stringa))
        rospy.loginfo("END: %s" %data.message)
        return SayResponse(True)

    def connectNaoQi(self):
        self.speech = self.get_proxy("ALAnimatedSpeech")
        self.speech.setLanguage("English")
        self.s = rospy.Service('animatedSay', Say, self.say)

    def pos2string(self, pos):
        pos = int(pos)
        if pos == HeadMovement.DESTRA:
            return "A Destra"
        elif pos == HeadMovement.CENTRO:
            return "Al Centro"
        elif pos == HeadMovement.SINISTRA:
            return "A Sinistra"


if __name__ == '__main__':
    #rospy.init_node('speak')
    #rospy.set_param("~pip", "10.0.1.230")
    #rospy.set_param("~pport", 9559)
    pub = AnimatedSay()
    rospy.spin()