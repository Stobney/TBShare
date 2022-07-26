;; Auto-generated. Do not edit!


(when (boundp 'gazebo_video_monitor_msgs::SetCamera)
  (if (not (find-package "GAZEBO_VIDEO_MONITOR_MSGS"))
    (make-package "GAZEBO_VIDEO_MONITOR_MSGS"))
  (shadow 'SetCamera (find-package "GAZEBO_VIDEO_MONITOR_MSGS")))
(unless (find-package "GAZEBO_VIDEO_MONITOR_MSGS::SETCAMERA")
  (make-package "GAZEBO_VIDEO_MONITOR_MSGS::SETCAMERA"))
(unless (find-package "GAZEBO_VIDEO_MONITOR_MSGS::SETCAMERAREQUEST")
  (make-package "GAZEBO_VIDEO_MONITOR_MSGS::SETCAMERAREQUEST"))
(unless (find-package "GAZEBO_VIDEO_MONITOR_MSGS::SETCAMERARESPONSE")
  (make-package "GAZEBO_VIDEO_MONITOR_MSGS::SETCAMERARESPONSE"))

(in-package "ROS")





(defclass gazebo_video_monitor_msgs::SetCameraRequest
  :super ros::object
  :slots (_camera_name _model_name _link_name _pose ))

(defmethod gazebo_video_monitor_msgs::SetCameraRequest
  (:init
   (&key
    ((:camera_name __camera_name) "")
    ((:model_name __model_name) "")
    ((:link_name __link_name) "")
    ((:pose __pose) (instance gazebo_video_monitor_msgs::Pose :init))
    )
   (send-super :init)
   (setq _camera_name (string __camera_name))
   (setq _model_name (string __model_name))
   (setq _link_name (string __link_name))
   (setq _pose __pose)
   self)
  (:camera_name
   (&optional __camera_name)
   (if __camera_name (setq _camera_name __camera_name)) _camera_name)
  (:model_name
   (&optional __model_name)
   (if __model_name (setq _model_name __model_name)) _model_name)
  (:link_name
   (&optional __link_name)
   (if __link_name (setq _link_name __link_name)) _link_name)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; string _camera_name
    4 (length _camera_name)
    ;; string _model_name
    4 (length _model_name)
    ;; string _link_name
    4 (length _link_name)
    ;; gazebo_video_monitor_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _camera_name
       (write-long (length _camera_name) s) (princ _camera_name s)
     ;; string _model_name
       (write-long (length _model_name) s) (princ _model_name s)
     ;; string _link_name
       (write-long (length _link_name) s) (princ _link_name s)
     ;; gazebo_video_monitor_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _camera_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _camera_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _model_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _link_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _link_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; gazebo_video_monitor_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass gazebo_video_monitor_msgs::SetCameraResponse
  :super ros::object
  :slots (_message _success ))

(defmethod gazebo_video_monitor_msgs::SetCameraResponse
  (:init
   (&key
    ((:message __message) "")
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _message (string __message))
   (setq _success __success)
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass gazebo_video_monitor_msgs::SetCamera
  :super ros::object
  :slots ())

(setf (get gazebo_video_monitor_msgs::SetCamera :md5sum-) "62faff843444223b685376b7fecc4898")
(setf (get gazebo_video_monitor_msgs::SetCamera :datatype-) "gazebo_video_monitor_msgs/SetCamera")
(setf (get gazebo_video_monitor_msgs::SetCamera :request) gazebo_video_monitor_msgs::SetCameraRequest)
(setf (get gazebo_video_monitor_msgs::SetCamera :response) gazebo_video_monitor_msgs::SetCameraResponse)

(defmethod gazebo_video_monitor_msgs::SetCameraRequest
  (:response () (instance gazebo_video_monitor_msgs::SetCameraResponse :init)))

(setf (get gazebo_video_monitor_msgs::SetCameraRequest :md5sum-) "62faff843444223b685376b7fecc4898")
(setf (get gazebo_video_monitor_msgs::SetCameraRequest :datatype-) "gazebo_video_monitor_msgs/SetCameraRequest")
(setf (get gazebo_video_monitor_msgs::SetCameraRequest :definition-)
      "string camera_name                   # Name of the camera (as given in the SDF description)
string model_name                    # Name of the model with which to associate the camera. If empty, the camera is attached to the world model (see multicamera bootstrapper)
string link_name                     # Name of the link to which to attach the camera
gazebo_video_monitor_msgs/Pose pose  # Pose relative to the parent link

================================================================================
MSG: gazebo_video_monitor_msgs/Pose
float64 x
float64 y
float64 z
float64 roll
float64 pitch
float64 yaw
---
string message
bool success

")

(setf (get gazebo_video_monitor_msgs::SetCameraResponse :md5sum-) "62faff843444223b685376b7fecc4898")
(setf (get gazebo_video_monitor_msgs::SetCameraResponse :datatype-) "gazebo_video_monitor_msgs/SetCameraResponse")
(setf (get gazebo_video_monitor_msgs::SetCameraResponse :definition-)
      "string camera_name                   # Name of the camera (as given in the SDF description)
string model_name                    # Name of the model with which to associate the camera. If empty, the camera is attached to the world model (see multicamera bootstrapper)
string link_name                     # Name of the link to which to attach the camera
gazebo_video_monitor_msgs/Pose pose  # Pose relative to the parent link

================================================================================
MSG: gazebo_video_monitor_msgs/Pose
float64 x
float64 y
float64 z
float64 roll
float64 pitch
float64 yaw
---
string message
bool success

")



(provide :gazebo_video_monitor_msgs/SetCamera "62faff843444223b685376b7fecc4898")


