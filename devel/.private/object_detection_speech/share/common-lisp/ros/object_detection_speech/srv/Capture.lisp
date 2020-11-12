; Auto-generated. Do not edit!


(cl:in-package object_detection_speech-srv)


;//! \htmlinclude Capture-request.msg.html

(cl:defclass <Capture-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Capture-request (<Capture-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Capture-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Capture-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_detection_speech-srv:<Capture-request> is deprecated: use object_detection_speech-srv:Capture-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Capture-request>) ostream)
  "Serializes a message object of type '<Capture-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Capture-request>) istream)
  "Deserializes a message object of type '<Capture-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Capture-request>)))
  "Returns string type for a service object of type '<Capture-request>"
  "object_detection_speech/CaptureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Capture-request)))
  "Returns string type for a service object of type 'Capture-request"
  "object_detection_speech/CaptureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Capture-request>)))
  "Returns md5sum for a message object of type '<Capture-request>"
  "e27848a10f8e7e4030443887dfea101b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Capture-request)))
  "Returns md5sum for a message object of type 'Capture-request"
  "e27848a10f8e7e4030443887dfea101b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Capture-request>)))
  "Returns full string definition for message of type '<Capture-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Capture-request)))
  "Returns full string definition for message of type 'Capture-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Capture-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Capture-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Capture-request
))
;//! \htmlinclude Capture-response.msg.html

(cl:defclass <Capture-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Capture-response (<Capture-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Capture-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Capture-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_detection_speech-srv:<Capture-response> is deprecated: use object_detection_speech-srv:Capture-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <Capture-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection_speech-srv:res-val is deprecated.  Use object_detection_speech-srv:res instead.")
  (res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Capture-response>) ostream)
  "Serializes a message object of type '<Capture-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'res) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Capture-response>) istream)
  "Deserializes a message object of type '<Capture-response>"
    (cl:setf (cl:slot-value msg 'res) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Capture-response>)))
  "Returns string type for a service object of type '<Capture-response>"
  "object_detection_speech/CaptureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Capture-response)))
  "Returns string type for a service object of type 'Capture-response"
  "object_detection_speech/CaptureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Capture-response>)))
  "Returns md5sum for a message object of type '<Capture-response>"
  "e27848a10f8e7e4030443887dfea101b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Capture-response)))
  "Returns md5sum for a message object of type 'Capture-response"
  "e27848a10f8e7e4030443887dfea101b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Capture-response>)))
  "Returns full string definition for message of type '<Capture-response>"
  (cl:format cl:nil "bool res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Capture-response)))
  "Returns full string definition for message of type 'Capture-response"
  (cl:format cl:nil "bool res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Capture-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Capture-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Capture-response
    (cl:cons ':res (res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Capture)))
  'Capture-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Capture)))
  'Capture-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Capture)))
  "Returns string type for a service object of type '<Capture>"
  "object_detection_speech/Capture")