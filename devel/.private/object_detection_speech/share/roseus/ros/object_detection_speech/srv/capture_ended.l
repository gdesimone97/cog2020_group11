;; Auto-generated. Do not edit!


(when (boundp 'object_detection_speech::capture_ended)
  (if (not (find-package "OBJECT_DETECTION_SPEECH"))
    (make-package "OBJECT_DETECTION_SPEECH"))
  (shadow 'capture_ended (find-package "OBJECT_DETECTION_SPEECH")))
(unless (find-package "OBJECT_DETECTION_SPEECH::CAPTURE_ENDED")
  (make-package "OBJECT_DETECTION_SPEECH::CAPTURE_ENDED"))
(unless (find-package "OBJECT_DETECTION_SPEECH::CAPTURE_ENDEDREQUEST")
  (make-package "OBJECT_DETECTION_SPEECH::CAPTURE_ENDEDREQUEST"))
(unless (find-package "OBJECT_DETECTION_SPEECH::CAPTURE_ENDEDRESPONSE")
  (make-package "OBJECT_DETECTION_SPEECH::CAPTURE_ENDEDRESPONSE"))

(in-package "ROS")





(defclass object_detection_speech::capture_endedRequest
  :super ros::object
  :slots ())

(defmethod object_detection_speech::capture_endedRequest
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

(defclass object_detection_speech::capture_endedResponse
  :super ros::object
  :slots (_result ))

(defmethod object_detection_speech::capture_endedResponse
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

(defclass object_detection_speech::capture_ended
  :super ros::object
  :slots ())

(setf (get object_detection_speech::capture_ended :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get object_detection_speech::capture_ended :datatype-) "object_detection_speech/capture_ended")
(setf (get object_detection_speech::capture_ended :request) object_detection_speech::capture_endedRequest)
(setf (get object_detection_speech::capture_ended :response) object_detection_speech::capture_endedResponse)

(defmethod object_detection_speech::capture_endedRequest
  (:response () (instance object_detection_speech::capture_endedResponse :init)))

(setf (get object_detection_speech::capture_endedRequest :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get object_detection_speech::capture_endedRequest :datatype-) "object_detection_speech/capture_endedRequest")
(setf (get object_detection_speech::capture_endedRequest :definition-)
      "---
bool result
")

(setf (get object_detection_speech::capture_endedResponse :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get object_detection_speech::capture_endedResponse :datatype-) "object_detection_speech/capture_endedResponse")
(setf (get object_detection_speech::capture_endedResponse :definition-)
      "---
bool result
")



(provide :object_detection_speech/capture_ended "eb13ac1f1354ccecb7941ee8fa2192e8")


