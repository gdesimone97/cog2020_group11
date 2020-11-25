; Auto-generated. Do not edit!


(cl:in-package naoqi_bridge_msgs-msg)


;//! \htmlinclude RunBehaviorGoal.msg.html

(cl:defclass <RunBehaviorGoal> (roslisp-msg-protocol:ros-message)
  ((behavior
    :reader behavior
    :initarg :behavior
    :type cl:string
    :initform ""))
)

(cl:defclass RunBehaviorGoal (<RunBehaviorGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RunBehaviorGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RunBehaviorGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name naoqi_bridge_msgs-msg:<RunBehaviorGoal> is deprecated: use naoqi_bridge_msgs-msg:RunBehaviorGoal instead.")))

(cl:ensure-generic-function 'behavior-val :lambda-list '(m))
(cl:defmethod behavior-val ((m <RunBehaviorGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader naoqi_bridge_msgs-msg:behavior-val is deprecated.  Use naoqi_bridge_msgs-msg:behavior instead.")
  (behavior m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RunBehaviorGoal>) ostream)
  "Serializes a message object of type '<RunBehaviorGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'behavior))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'behavior))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RunBehaviorGoal>) istream)
  "Deserializes a message object of type '<RunBehaviorGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'behavior) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'behavior) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RunBehaviorGoal>)))
  "Returns string type for a message object of type '<RunBehaviorGoal>"
  "naoqi_bridge_msgs/RunBehaviorGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RunBehaviorGoal)))
  "Returns string type for a message object of type 'RunBehaviorGoal"
  "naoqi_bridge_msgs/RunBehaviorGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RunBehaviorGoal>)))
  "Returns md5sum for a message object of type '<RunBehaviorGoal>"
  "03729983c4b9be7a4f2b56846a7ccbdc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RunBehaviorGoal)))
  "Returns md5sum for a message object of type 'RunBehaviorGoal"
  "03729983c4b9be7a4f2b56846a7ccbdc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RunBehaviorGoal>)))
  "Returns full string definition for message of type '<RunBehaviorGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal [behavior]: name of the behavior to be executed~%# Result: none, will be set to aborted or preempted~%# Feedback: none as NaoQI API cannot be queried in this respect~%string behavior~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RunBehaviorGoal)))
  "Returns full string definition for message of type 'RunBehaviorGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal [behavior]: name of the behavior to be executed~%# Result: none, will be set to aborted or preempted~%# Feedback: none as NaoQI API cannot be queried in this respect~%string behavior~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RunBehaviorGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'behavior))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RunBehaviorGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'RunBehaviorGoal
    (cl:cons ':behavior (behavior msg))
))
