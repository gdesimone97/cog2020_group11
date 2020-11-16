;; Auto-generated. Do not edit!


(when (boundp 'object_detection_speech::Capture)
  (if (not (find-package "OBJECT_DETECTION_SPEECH"))
    (make-package "OBJECT_DETECTION_SPEECH"))
  (shadow 'Capture (find-package "OBJECT_DETECTION_SPEECH")))
(unless (find-package "OBJECT_DETECTION_SPEECH::CAPTURE")
  (make-package "OBJECT_DETECTION_SPEECH::CAPTURE"))
(unless (find-package "OBJECT_DETECTION_SPEECH::CAPTUREREQUEST")
  (make-package "OBJECT_DETECTION_SPEECH::CAPTUREREQUEST"))
(unless (find-package "OBJECT_DETECTION_SPEECH::CAPTURERESPONSE")
  (make-package "OBJECT_DETECTION_SPEECH::CAPTURERESPONSE"))

(in-package "ROS")





(defclass object_detection_speech::CaptureRequest
  :super ros::object
  :slots ())

(defmethod object_detection_speech::CaptureRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass object_detection_speech::CaptureResponse
  :super ros::object
  :slots (_res ))

(defmethod object_detection_speech::CaptureResponse
  (:init
   (&key
    ((:res __res) nil)
    )
   (send-super :init)
   (setq _res __res)
   self)
  (:res
   (&optional __res)
   (if __res (setq _res __res)) _res)
  (:serialization-length
   ()
   (+
    ;; bool _res
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _res
       (if _res (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _res
     (setq _res (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass object_detection_speech::Capture
  :super ros::object
  :slots ())

(setf (get object_detection_speech::Capture :md5sum-) "e27848a10f8e7e4030443887dfea101b")
(setf (get object_detection_speech::Capture :datatype-) "object_detection_speech/Capture")
(setf (get object_detection_speech::Capture :request) object_detection_speech::CaptureRequest)
(setf (get object_detection_speech::Capture :response) object_detection_speech::CaptureResponse)

(defmethod object_detection_speech::CaptureRequest
  (:response () (instance object_detection_speech::CaptureResponse :init)))

(setf (get object_detection_speech::CaptureRequest :md5sum-) "e27848a10f8e7e4030443887dfea101b")
(setf (get object_detection_speech::CaptureRequest :datatype-) "object_detection_speech/CaptureRequest")
(setf (get object_detection_speech::CaptureRequest :definition-)
      "---
bool res
")

(setf (get object_detection_speech::CaptureResponse :md5sum-) "e27848a10f8e7e4030443887dfea101b")
(setf (get object_detection_speech::CaptureResponse :datatype-) "object_detection_speech/CaptureResponse")
(setf (get object_detection_speech::CaptureResponse :definition-)
      "---
bool res
")



(provide :object_detection_speech/Capture "e27848a10f8e7e4030443887dfea101b")


