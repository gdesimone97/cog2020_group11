; Auto-generated. Do not edit!


(cl:in-package object_detection_speech-srv)


;//! \htmlinclude Say-request.msg.html

(cl:defclass <Say-request> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass Say-request (<Say-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Say-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Say-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_detection_speech-srv:<Say-request> is deprecated: use object_detection_speech-srv:Say-request instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Say-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection_speech-srv:message-val is deprecated.  Use object_detection_speech-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Say-request>) ostream)
  "Serializes a message object of type '<Say-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Say-request>) istream)
  "Deserializes a message object of type '<Say-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Say-request>)))
  "Returns string type for a service object of type '<Say-request>"
  "object_detection_speech/SayRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Say-request)))
  "Returns string type for a service object of type 'Say-request"
  "object_detection_speech/SayRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Say-request>)))
  "Returns md5sum for a message object of type '<Say-request>"
  "744b6fa2f5c40325431e2e62fe3a175f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Say-request)))
  "Returns md5sum for a message object of type 'Say-request"
  "744b6fa2f5c40325431e2e62fe3a175f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Say-request>)))
  "Returns full string definition for message of type '<Say-request>"
  (cl:format cl:nil "string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Say-request)))
  "Returns full string definition for message of type 'Say-request"
  (cl:format cl:nil "string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Say-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Say-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Say-request
    (cl:cons ':message (message msg))
))
;//! \htmlinclude Say-response.msg.html

(cl:defclass <Say-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Say-response (<Say-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Say-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Say-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_detection_speech-srv:<Say-response> is deprecated: use object_detection_speech-srv:Say-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Say-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection_speech-srv:result-val is deprecated.  Use object_detection_speech-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Say-response>) ostream)
  "Serializes a message object of type '<Say-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Say-response>) istream)
  "Deserializes a message object of type '<Say-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Say-response>)))
  "Returns string type for a service object of type '<Say-response>"
  "object_detection_speech/SayResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Say-response)))
  "Returns string type for a service object of type 'Say-response"
  "object_detection_speech/SayResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Say-response>)))
  "Returns md5sum for a message object of type '<Say-response>"
  "744b6fa2f5c40325431e2e62fe3a175f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Say-response)))
  "Returns md5sum for a message object of type 'Say-response"
  "744b6fa2f5c40325431e2e62fe3a175f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Say-response>)))
  "Returns full string definition for message of type '<Say-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Say-response)))
  "Returns full string definition for message of type 'Say-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Say-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Say-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Say-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Say)))
  'Say-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Say)))
  'Say-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Say)))
  "Returns string type for a service object of type '<Say>"
  "object_detection_speech/Say")