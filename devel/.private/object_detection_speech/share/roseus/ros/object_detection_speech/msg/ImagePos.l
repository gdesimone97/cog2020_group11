;; Auto-generated. Do not edit!


(when (boundp 'object_detection_speech::ImagePos)
  (if (not (find-package "OBJECT_DETECTION_SPEECH"))
    (make-package "OBJECT_DETECTION_SPEECH"))
  (shadow 'ImagePos (find-package "OBJECT_DETECTION_SPEECH")))
(unless (find-package "OBJECT_DETECTION_SPEECH::IMAGEPOS")
  (make-package "OBJECT_DETECTION_SPEECH::IMAGEPOS"))

(in-package "ROS")
;;//! \htmlinclude ImagePos.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass object_detection_speech::ImagePos
  :super ros::object
  :slots (_pos _image ))

(defmethod object_detection_speech::ImagePos
  (:init
   (&key
    ((:pos __pos) 0)
    ((:image __image) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _pos (round __pos))
   (setq _image __image)
   self)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:serialization-length
   ()
   (+
    ;; int8 _pos
    1
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _pos
       (write-byte _pos s)
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _pos
     (setq _pos (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _pos 127) (setq _pos (- _pos 256)))
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;;
   self)
  )

(setf (get object_detection_speech::ImagePos :md5sum-) "73eebf94e6b1aa3fd1a240462bd30d03")
(setf (get object_detection_speech::ImagePos :datatype-) "object_detection_speech/ImagePos")
(setf (get object_detection_speech::ImagePos :definition-)
      "int8 pos
sensor_msgs/Image image
================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :object_detection_speech/ImagePos "73eebf94e6b1aa3fd1a240462bd30d03")


