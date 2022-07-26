;; Auto-generated. Do not edit!


(when (boundp 'gazebo_video_monitor_msgs::StartGmcmRecording)
  (if (not (find-package "GAZEBO_VIDEO_MONITOR_MSGS"))
    (make-package "GAZEBO_VIDEO_MONITOR_MSGS"))
  (shadow 'StartGmcmRecording (find-package "GAZEBO_VIDEO_MONITOR_MSGS")))
(unless (find-package "GAZEBO_VIDEO_MONITOR_MSGS::STARTGMCMRECORDING")
  (make-package "GAZEBO_VIDEO_MONITOR_MSGS::STARTGMCMRECORDING"))
(unless (find-package "GAZEBO_VIDEO_MONITOR_MSGS::STARTGMCMRECORDINGREQUEST")
  (make-package "GAZEBO_VIDEO_MONITOR_MSGS::STARTGMCMRECORDINGREQUEST"))
(unless (find-package "GAZEBO_VIDEO_MONITOR_MSGS::STARTGMCMRECORDINGRESPONSE")
  (make-package "GAZEBO_VIDEO_MONITOR_MSGS::STARTGMCMRECORDINGRESPONSE"))

(in-package "ROS")





(defclass gazebo_video_monitor_msgs::StartGmcmRecordingRequest
  :super ros::object
  :slots (_cameras ))

(defmethod gazebo_video_monitor_msgs::StartGmcmRecordingRequest
  (:init
   (&key
    ((:cameras __cameras) (instance gazebo_video_monitor_msgs::Strings :init))
    )
   (send-super :init)
   (setq _cameras __cameras)
   self)
  (:cameras
   (&rest __cameras)
   (if (keywordp (car __cameras))
       (send* _cameras __cameras)
     (progn
       (if __cameras (setq _cameras (car __cameras)))
       _cameras)))
  (:serialization-length
   ()
   (+
    ;; gazebo_video_monitor_msgs/Strings _cameras
    (send _cameras :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; gazebo_video_monitor_msgs/Strings _cameras
       (send _cameras :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; gazebo_video_monitor_msgs/Strings _cameras
     (send _cameras :deserialize buf ptr-) (incf ptr- (send _cameras :serialization-length))
   ;;
   self)
  )

(defclass gazebo_video_monitor_msgs::StartGmcmRecordingResponse
  :super ros::object
  :slots ())

(defmethod gazebo_video_monitor_msgs::StartGmcmRecordingResponse
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

(defclass gazebo_video_monitor_msgs::StartGmcmRecording
  :super ros::object
  :slots ())

(setf (get gazebo_video_monitor_msgs::StartGmcmRecording :md5sum-) "176032962ec0f63db7c7bb19a86e7410")
(setf (get gazebo_video_monitor_msgs::StartGmcmRecording :datatype-) "gazebo_video_monitor_msgs/StartGmcmRecording")
(setf (get gazebo_video_monitor_msgs::StartGmcmRecording :request) gazebo_video_monitor_msgs::StartGmcmRecordingRequest)
(setf (get gazebo_video_monitor_msgs::StartGmcmRecording :response) gazebo_video_monitor_msgs::StartGmcmRecordingResponse)

(defmethod gazebo_video_monitor_msgs::StartGmcmRecordingRequest
  (:response () (instance gazebo_video_monitor_msgs::StartGmcmRecordingResponse :init)))

(setf (get gazebo_video_monitor_msgs::StartGmcmRecordingRequest :md5sum-) "176032962ec0f63db7c7bb19a86e7410")
(setf (get gazebo_video_monitor_msgs::StartGmcmRecordingRequest :datatype-) "gazebo_video_monitor_msgs/StartGmcmRecordingRequest")
(setf (get gazebo_video_monitor_msgs::StartGmcmRecordingRequest :definition-)
      "# Start recording service for the Gazebo Multi Camera Monitor plugin

gazebo_video_monitor_msgs/Strings cameras

================================================================================
MSG: gazebo_video_monitor_msgs/Strings
string[] names
---

")

(setf (get gazebo_video_monitor_msgs::StartGmcmRecordingResponse :md5sum-) "176032962ec0f63db7c7bb19a86e7410")
(setf (get gazebo_video_monitor_msgs::StartGmcmRecordingResponse :datatype-) "gazebo_video_monitor_msgs/StartGmcmRecordingResponse")
(setf (get gazebo_video_monitor_msgs::StartGmcmRecordingResponse :definition-)
      "# Start recording service for the Gazebo Multi Camera Monitor plugin

gazebo_video_monitor_msgs/Strings cameras

================================================================================
MSG: gazebo_video_monitor_msgs/Strings
string[] names
---

")



(provide :gazebo_video_monitor_msgs/StartGmcmRecording "176032962ec0f63db7c7bb19a86e7410")


