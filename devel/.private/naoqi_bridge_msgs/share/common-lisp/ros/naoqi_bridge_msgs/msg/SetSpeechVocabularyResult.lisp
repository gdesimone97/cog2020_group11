; Auto-generated. Do not edit!


(cl:in-package naoqi_bridge_msgs-msg)


;//! \htmlinclude SetSpeechVocabularyResult.msg.html

(cl:defclass <SetSpeechVocabularyResult> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetSpeechVocabularyResult (<SetSpeechVocabularyResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetSpeechVocabularyResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetSpeechVocabularyResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name naoqi_bridge_msgs-msg:<SetSpeechVocabularyResult> is deprecated: use naoqi_bridge_msgs-msg:SetSpeechVocabularyResult instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetSpeechVocabularyResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader naoqi_bridge_msgs-msg:success-val is deprecated.  Use naoqi_bridge_msgs-msg:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetSpeechVocabularyResult>) ostream)
  "Serializes a message object of type '<SetSpeechVocabularyResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetSpeechVocabularyResult>) istream)
  "Deserializes a message object of type '<SetSpeechVocabularyResult>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetSpeechVocabularyResult>)))
  "Returns string type for a message object of type '<SetSpeechVocabularyResult>"
  "naoqi_bridge_msgs/SetSpeechVocabularyResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetSpeechVocabularyResult)))
  "Returns string type for a message object of type 'SetSpeechVocabularyResult"
  "naoqi_bridge_msgs/SetSpeechVocabularyResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetSpeechVocabularyResult>)))
  "Returns md5sum for a message object of type '<SetSpeechVocabularyResult>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetSpeechVocabularyResult)))
  "Returns md5sum for a message object of type 'SetSpeechVocabularyResult"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetSpeechVocabularyResult>)))
  "Returns full string definition for message of type '<SetSpeechVocabularyResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetSpeechVocabularyResult)))
  "Returns full string definition for message of type 'SetSpeechVocabularyResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetSpeechVocabularyResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetSpeechVocabularyResult>))
  "Converts a ROS message object to a list"
  (cl:list 'SetSpeechVocabularyResult
    (cl:cons ':success (success msg))
))
