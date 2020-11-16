; Auto-generated. Do not edit!


(cl:in-package object_detection_speech-srv)


;//! \htmlinclude capture_ended-request.msg.html

(cl:defclass <capture_ended-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass capture_ended-request (<capture_ended-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <capture_ended-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'capture_ended-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_detection_speech-srv:<capture_ended-request> is deprecated: use object_detection_speech-srv:capture_ended-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <capture_ended-request>) ostream)
  "Serializes a message object of type '<capture_ended-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <capture_ended-request>) istream)
  "Deserializes a message object of type '<capture_ended-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<capture_ended-request>)))
  "Returns string type for a service object of type '<capture_ended-request>"
  "object_detection_speech/capture_endedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'capture_ended-request)))
  "Returns string type for a service object of type 'capture_ended-request"
  "object_detection_speech/capture_endedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<capture_ended-request>)))
  "Returns md5sum for a message object of type '<capture_ended-request>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'capture_ended-request)))
  "Returns md5sum for a message object of type 'capture_ended-request"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<capture_ended-request>)))
  "Returns full string definition for message of type '<capture_ended-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'capture_ended-request)))
  "Returns full string definition for message of type 'capture_ended-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <capture_ended-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <capture_ended-request>))
  "Converts a ROS message object to a list"
  (cl:list 'capture_ended-request
))
;//! \htmlinclude capture_ended-response.msg.html

(cl:defclass <capture_ended-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass capture_ended-response (<capture_ended-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <capture_ended-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'capture_ended-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_detection_speech-srv:<capture_ended-response> is deprecated: use object_detection_speech-srv:capture_ended-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <capture_ended-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection_speech-srv:result-val is deprecated.  Use object_detection_speech-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <capture_ended-response>) ostream)
  "Serializes a message object of type '<capture_ended-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <capture_ended-response>) istream)
  "Deserializes a message object of type '<capture_ended-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<capture_ended-response>)))
  "Returns string type for a service object of type '<capture_ended-response>"
  "object_detection_speech/capture_endedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'capture_ended-response)))
  "Returns string type for a service object of type 'capture_ended-response"
  "object_detection_speech/capture_endedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<capture_ended-response>)))
  "Returns md5sum for a message object of type '<capture_ended-response>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'capture_ended-response)))
  "Returns md5sum for a message object of type 'capture_ended-response"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<capture_ended-response>)))
  "Returns full string definition for message of type '<capture_ended-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'capture_ended-response)))
  "Returns full string definition for message of type 'capture_ended-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <capture_ended-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <capture_ended-response>))
  "Converts a ROS message object to a list"
  (cl:list 'capture_ended-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'capture_ended)))
  'capture_ended-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'capture_ended)))
  'capture_ended-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'capture_ended)))
  "Returns string type for a service object of type '<capture_ended>"
  "object_detection_speech/capture_ended")