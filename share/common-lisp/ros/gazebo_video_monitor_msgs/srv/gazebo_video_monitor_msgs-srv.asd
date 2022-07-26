
(cl:in-package :asdf)

(defsystem "gazebo_video_monitor_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :gazebo_video_monitor_msgs-msg
)
  :components ((:file "_package")
    (:file "SetCamera" :depends-on ("_package_SetCamera"))
    (:file "_package_SetCamera" :depends-on ("_package"))
    (:file "StartGmcmRecording" :depends-on ("_package_StartGmcmRecording"))
    (:file "_package_StartGmcmRecording" :depends-on ("_package"))
    (:file "StartGvmRecording" :depends-on ("_package_StartGvmRecording"))
    (:file "_package_StartGvmRecording" :depends-on ("_package"))
    (:file "StopRecording" :depends-on ("_package_StopRecording"))
    (:file "_package_StopRecording" :depends-on ("_package"))
  ))