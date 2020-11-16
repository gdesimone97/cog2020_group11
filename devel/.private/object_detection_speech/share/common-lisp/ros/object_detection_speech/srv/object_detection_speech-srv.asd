
(cl:in-package :asdf)

(defsystem "object_detection_speech-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Capture" :depends-on ("_package_Capture"))
    (:file "_package_Capture" :depends-on ("_package"))
    (:file "Say" :depends-on ("_package_Say"))
    (:file "_package_Say" :depends-on ("_package"))
    (:file "capture_ended" :depends-on ("_package_capture_ended"))
    (:file "_package_capture_ended" :depends-on ("_package"))
  ))