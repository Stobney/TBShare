;; Auto-generated. Do not edit!


(when (boundp 'gazebo_video_monitor_msgs::StopRecording)
  (if (not (find-package "GAZEBO_VIDEO_MONITOR_MSGS"))
    (make-package "GAZEBO_VIDEO_MONITOR_MSGS"))
  (shadow 'StopRecording (find-package "GAZEBO_VIDEO_MONITOR_MSGS")))
(unless (find-package "GAZEBO_VIDEO_MONITOR_MSGS::STOPRECORDING")
  (make-package "GAZEBO_VIDEO_MONITOR_MSGS::STOPRECORDING"))
(unless (find-package "GAZEBO_VIDEO_MONITOR_MSGS::STOPRECORDINGREQUEST")
  (make-package "GAZEBO_VIDEO_MONITOR_MSGS::STOPRECORDINGREQUEST"))
(unless (find-package "GAZEBO_VIDEO_MONITOR_MSGS::STOPRECORDINGRESPONSE")
  (make-package "GAZEBO_VIDEO_MONITOR_MSGS::STOPRECORDINGRESPONSE"))

(in-package "ROS")





(defclass gazebo_video_monitor_msgs::StopRecordingRequest
  :super ros::object
  :slots (_discard _filename ))

(defmethod gazebo_video_monitor_msgs::StopRecordingRequest
  (:init
   (&key
    ((:discard __discard) nil)
    ((:filename __filename) "")
    )
   (send-super :init)
   (setq _discard __discard)
   (setq _filename (string __filename))
   self)
  (:discard
   (&optional (__discard :null))
   (if (not (eq __discard :null)) (setq _discard __discard)) _discard)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:serialization-length
   ()
   (+
    ;; bool _discard
    1
    ;; string _filename
    4 (length _filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _discard
       (if _discard (write-byte -1 s) (write-byte 0 s))
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _discard
     (setq _discard (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gazebo_video_monitor_msgs::StopRecordingResponse
  :super ros::object
  :slots (_path _success ))

(defmethod gazebo_video_monitor_msgs::StopRecordingResponse
  (:init
   (&key
    ((:path __path) "")
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _path (string __path))
   (setq _success __success)
   self)
  (:path
   (&optional __path)
   (if __path (setq _path __path)) _path)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; string _path
    4 (length _path)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _path
       (write-long (length _path) s) (princ _path s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass gazebo_video_monitor_msgs::StopRecording
  :super ros::object
  :slots ())

(setf (get gazebo_video_monitor_msgs::StopRecording :md5sum-) "12af5eb2981292046a496c1fb4ba5e7a")
(setf (get gazebo_video_monitor_msgs::StopRecording :datatype-) "gazebo_video_monitor_msgs/StopRecording")
(setf (get gazebo_video_monitor_msgs::StopRecording :request) gazebo_video_monitor_msgs::StopRecordingRequest)
(setf (get gazebo_video_monitor_msgs::StopRecording :response) gazebo_video_monitor_msgs::StopRecordingResponse)

(defmethod gazebo_video_monitor_msgs::StopRecordingRequest
  (:response () (instance gazebo_video_monitor_msgs::StopRecordingResponse :init)))

(setf (get gazebo_video_monitor_msgs::StopRecordingRequest :md5sum-) "12af5eb2981292046a496c1fb4ba5e7a")
(setf (get gazebo_video_monitor_msgs::StopRecordingRequest :datatype-) "gazebo_video_monitor_msgs/StopRecordingRequest")
(setf (get gazebo_video_monitor_msgs::StopRecordingRequest :definition-)
      "bool discard     # True to discard the recording
string filename  # Filename without extension
---
string path      # Absolute path to the recording
bool success

")

(setf (get gazebo_video_monitor_msgs::StopRecordingResponse :md5sum-) "12af5eb2981292046a496c1fb4ba5e7a")
(setf (get gazebo_video_monitor_msgs::StopRecordingResponse :datatype-) "gazebo_video_monitor_msgs/StopRecordingResponse")
(setf (get gazebo_video_monitor_msgs::StopRecordingResponse :definition-)
      "bool discard     # True to discard the recording
string filename  # Filename without extension
---
string path      # Absolute path to the recording
bool success

")



(provide :gazebo_video_monitor_msgs/StopRecording "12af5eb2981292046a496c1fb4ba5e7a")


