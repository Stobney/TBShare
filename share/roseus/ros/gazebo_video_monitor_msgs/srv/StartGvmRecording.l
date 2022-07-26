;; Auto-generated. Do not edit!


(when (boundp 'gazebo_video_monitor_msgs::StartGvmRecording)
  (if (not (find-package "GAZEBO_VIDEO_MONITOR_MSGS"))
    (make-package "GAZEBO_VIDEO_MONITOR_MSGS"))
  (shadow 'StartGvmRecording (find-package "GAZEBO_VIDEO_MONITOR_MSGS")))
(unless (find-package "GAZEBO_VIDEO_MONITOR_MSGS::STARTGVMRECORDING")
  (make-package "GAZEBO_VIDEO_MONITOR_MSGS::STARTGVMRECORDING"))
(unless (find-package "GAZEBO_VIDEO_MONITOR_MSGS::STARTGVMRECORDINGREQUEST")
  (make-package "GAZEBO_VIDEO_MONITOR_MSGS::STARTGVMRECORDINGREQUEST"))
(unless (find-package "GAZEBO_VIDEO_MONITOR_MSGS::STARTGVMRECORDINGRESPONSE")
  (make-package "GAZEBO_VIDEO_MONITOR_MSGS::STARTGVMRECORDINGRESPONSE"))

(in-package "ROS")





(defclass gazebo_video_monitor_msgs::StartGvmRecordingRequest
  :super ros::object
  :slots (_disable_window _world_as_main_view ))

(defmethod gazebo_video_monitor_msgs::StartGvmRecordingRequest
  (:init
   (&key
    ((:disable_window __disable_window) nil)
    ((:world_as_main_view __world_as_main_view) nil)
    )
   (send-super :init)
   (setq _disable_window __disable_window)
   (setq _world_as_main_view __world_as_main_view)
   self)
  (:disable_window
   (&optional (__disable_window :null))
   (if (not (eq __disable_window :null)) (setq _disable_window __disable_window)) _disable_window)
  (:world_as_main_view
   (&optional (__world_as_main_view :null))
   (if (not (eq __world_as_main_view :null)) (setq _world_as_main_view __world_as_main_view)) _world_as_main_view)
  (:serialization-length
   ()
   (+
    ;; bool _disable_window
    1
    ;; bool _world_as_main_view
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _disable_window
       (if _disable_window (write-byte -1 s) (write-byte 0 s))
     ;; bool _world_as_main_view
       (if _world_as_main_view (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _disable_window
     (setq _disable_window (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _world_as_main_view
     (setq _world_as_main_view (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass gazebo_video_monitor_msgs::StartGvmRecordingResponse
  :super ros::object
  :slots ())

(defmethod gazebo_video_monitor_msgs::StartGvmRecordingResponse
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

(defclass gazebo_video_monitor_msgs::StartGvmRecording
  :super ros::object
  :slots ())

(setf (get gazebo_video_monitor_msgs::StartGvmRecording :md5sum-) "74a62fa060bc26d4ef1f8e73a79a72f6")
(setf (get gazebo_video_monitor_msgs::StartGvmRecording :datatype-) "gazebo_video_monitor_msgs/StartGvmRecording")
(setf (get gazebo_video_monitor_msgs::StartGvmRecording :request) gazebo_video_monitor_msgs::StartGvmRecordingRequest)
(setf (get gazebo_video_monitor_msgs::StartGvmRecording :response) gazebo_video_monitor_msgs::StartGvmRecordingResponse)

(defmethod gazebo_video_monitor_msgs::StartGvmRecordingRequest
  (:response () (instance gazebo_video_monitor_msgs::StartGvmRecordingResponse :init)))

(setf (get gazebo_video_monitor_msgs::StartGvmRecordingRequest :md5sum-) "74a62fa060bc26d4ef1f8e73a79a72f6")
(setf (get gazebo_video_monitor_msgs::StartGvmRecordingRequest :datatype-) "gazebo_video_monitor_msgs/StartGvmRecordingRequest")
(setf (get gazebo_video_monitor_msgs::StartGvmRecordingRequest :definition-)
      "# Start recording service for the Gazebo Video Monitor plugin

bool disable_window
bool world_as_main_view
---

")

(setf (get gazebo_video_monitor_msgs::StartGvmRecordingResponse :md5sum-) "74a62fa060bc26d4ef1f8e73a79a72f6")
(setf (get gazebo_video_monitor_msgs::StartGvmRecordingResponse :datatype-) "gazebo_video_monitor_msgs/StartGvmRecordingResponse")
(setf (get gazebo_video_monitor_msgs::StartGvmRecordingResponse :definition-)
      "# Start recording service for the Gazebo Video Monitor plugin

bool disable_window
bool world_as_main_view
---

")



(provide :gazebo_video_monitor_msgs/StartGvmRecording "74a62fa060bc26d4ef1f8e73a79a72f6")


