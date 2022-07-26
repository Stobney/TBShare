
(cl:in-package :asdf)

(defsystem "gazebo_video_monitor_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Pose" :depends-on ("_package_Pose"))
    (:file "_package_Pose" :depends-on ("_package"))
    (:file "Strings" :depends-on ("_package_Strings"))
    (:file "_package_Strings" :depends-on ("_package"))
  ))