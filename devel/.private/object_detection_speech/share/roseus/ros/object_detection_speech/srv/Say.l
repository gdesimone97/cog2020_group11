;; Auto-generated. Do not edit!


(when (boundp 'object_detection_speech::Say)
  (if (not (find-package "OBJECT_DETECTION_SPEECH"))
    (make-package "OBJECT_DETECTION_SPEECH"))
  (shadow 'Say (find-package "OBJECT_DETECTION_SPEECH")))
(unless (find-package "OBJECT_DETECTION_SPEECH::SAY")
  (make-package "OBJECT_DETECTION_SPEECH::SAY"))
(unless (find-package "OBJECT_DETECTION_SPEECH::SAYREQUEST")
  (make-package "OBJECT_DETECTION_SPEECH::SAYREQUEST"))
(unless (find-package "OBJECT_DETECTION_SPEECH::SAYRESPONSE")
  (make-package "OBJECT_DETECTION_SPEECH::SAYRESPONSE"))

(in-package "ROS")





(defclass object_detection_speech::SayRequest
  :super ros::object
  :slots (_message ))

(defmethod object_detection_speech::SayRequest
  (:init
   (&key
    ((:message __message) "")
    )
   (send-super :init)
   (setq _message (string __message))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass object_detection_speech::SayResponse
  :super ros::object
  :slots (_result ))

(defmethod object_detection_speech::SayResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass object_detection_speech::Say
  :super ros::object
  :slots ())

(setf (get object_detection_speech::Say :md5sum-) "744b6fa2f5c40325431e2e62fe3a175f")
(setf (get object_detection_speech::Say :datatype-) "object_detection_speech/Say")
(setf (get object_detection_speech::Say :request) object_detection_speech::SayRequest)
(setf (get object_detection_speech::Say :response) object_detection_speech::SayResponse)

(defmethod object_detection_speech::SayRequest
  (:response () (instance object_detection_speech::SayResponse :init)))

(setf (get object_detection_speech::SayRequest :md5sum-) "744b6fa2f5c40325431e2e62fe3a175f")
(setf (get object_detection_speech::SayRequest :datatype-) "object_detection_speech/SayRequest")
(setf (get object_detection_speech::SayRequest :definition-)
      "string message
---
bool result
")

(setf (get object_detection_speech::SayResponse :md5sum-) "744b6fa2f5c40325431e2e62fe3a175f")
(setf (get object_detection_speech::SayResponse :datatype-) "object_detection_speech/SayResponse")
(setf (get object_detection_speech::SayResponse :definition-)
      "string message
---
bool result
")



(provide :object_detection_speech/Say "744b6fa2f5c40325431e2e62fe3a175f")


