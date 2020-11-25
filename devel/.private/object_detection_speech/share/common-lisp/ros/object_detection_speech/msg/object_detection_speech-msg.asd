
(cl:in-package :asdf)

(defsystem "object_detection_speech-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "ImagePos" :depends-on ("_package_ImagePos"))
    (:file "_package_ImagePos" :depends-on ("_package"))
  ))