; Auto-generated. Do not edit!


(cl:in-package object_detection_speech-msg)


;//! \htmlinclude ImagePos.msg.html

(cl:defclass <ImagePos> (roslisp-msg-protocol:ros-message)
  ((pos
    :reader pos
    :initarg :pos
    :type cl:fixnum
    :initform 0)
   (image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass ImagePos (<ImagePos>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImagePos>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImagePos)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_detection_speech-msg:<ImagePos> is deprecated: use object_detection_speech-msg:ImagePos instead.")))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <ImagePos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection_speech-msg:pos-val is deprecated.  Use object_detection_speech-msg:pos instead.")
  (pos m))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <ImagePos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection_speech-msg:image-val is deprecated.  Use object_detection_speech-msg:image instead.")
  (image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImagePos>) ostream)
  "Serializes a message object of type '<ImagePos>"
  (cl:let* ((signed (cl:slot-value msg 'pos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImagePos>) istream)
  "Deserializes a message object of type '<ImagePos>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pos) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImagePos>)))
  "Returns string type for a message object of type '<ImagePos>"
  "object_detection_speech/ImagePos")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImagePos)))
  "Returns string type for a message object of type 'ImagePos"
  "object_detection_speech/ImagePos")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImagePos>)))
  "Returns md5sum for a message object of type '<ImagePos>"
  "73eebf94e6b1aa3fd1a240462bd30d03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImagePos)))
  "Returns md5sum for a message object of type 'ImagePos"
  "73eebf94e6b1aa3fd1a240462bd30d03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImagePos>)))
  "Returns full string definition for message of type '<ImagePos>"
  (cl:format cl:nil "int8 pos~%sensor_msgs/Image image~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImagePos)))
  "Returns full string definition for message of type 'ImagePos"
  (cl:format cl:nil "int8 pos~%sensor_msgs/Image image~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImagePos>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImagePos>))
  "Converts a ROS message object to a list"
  (cl:list 'ImagePos
    (cl:cons ':pos (pos msg))
    (cl:cons ':image (image msg))
))
