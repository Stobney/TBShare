; Auto-generated. Do not edit!


(cl:in-package gazebo_video_monitor_msgs-srv)


;//! \htmlinclude StartGvmRecording-request.msg.html

(cl:defclass <StartGvmRecording-request> (roslisp-msg-protocol:ros-message)
  ((disable_window
    :reader disable_window
    :initarg :disable_window
    :type cl:boolean
    :initform cl:nil)
   (world_as_main_view
    :reader world_as_main_view
    :initarg :world_as_main_view
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StartGvmRecording-request (<StartGvmRecording-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartGvmRecording-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartGvmRecording-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_video_monitor_msgs-srv:<StartGvmRecording-request> is deprecated: use gazebo_video_monitor_msgs-srv:StartGvmRecording-request instead.")))

(cl:ensure-generic-function 'disable_window-val :lambda-list '(m))
(cl:defmethod disable_window-val ((m <StartGvmRecording-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_video_monitor_msgs-srv:disable_window-val is deprecated.  Use gazebo_video_monitor_msgs-srv:disable_window instead.")
  (disable_window m))

(cl:ensure-generic-function 'world_as_main_view-val :lambda-list '(m))
(cl:defmethod world_as_main_view-val ((m <StartGvmRecording-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_video_monitor_msgs-srv:world_as_main_view-val is deprecated.  Use gazebo_video_monitor_msgs-srv:world_as_main_view instead.")
  (world_as_main_view m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartGvmRecording-request>) ostream)
  "Serializes a message object of type '<StartGvmRecording-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'disable_window) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'world_as_main_view) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartGvmRecording-request>) istream)
  "Deserializes a message object of type '<StartGvmRecording-request>"
    (cl:setf (cl:slot-value msg 'disable_window) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'world_as_main_view) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartGvmRecording-request>)))
  "Returns string type for a service object of type '<StartGvmRecording-request>"
  "gazebo_video_monitor_msgs/StartGvmRecordingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartGvmRecording-request)))
  "Returns string type for a service object of type 'StartGvmRecording-request"
  "gazebo_video_monitor_msgs/StartGvmRecordingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartGvmRecording-request>)))
  "Returns md5sum for a message object of type '<StartGvmRecording-request>"
  "74a62fa060bc26d4ef1f8e73a79a72f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartGvmRecording-request)))
  "Returns md5sum for a message object of type 'StartGvmRecording-request"
  "74a62fa060bc26d4ef1f8e73a79a72f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartGvmRecording-request>)))
  "Returns full string definition for message of type '<StartGvmRecording-request>"
  (cl:format cl:nil "# Start recording service for the Gazebo Video Monitor plugin~%~%bool disable_window~%bool world_as_main_view~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartGvmRecording-request)))
  "Returns full string definition for message of type 'StartGvmRecording-request"
  (cl:format cl:nil "# Start recording service for the Gazebo Video Monitor plugin~%~%bool disable_window~%bool world_as_main_view~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartGvmRecording-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartGvmRecording-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartGvmRecording-request
    (cl:cons ':disable_window (disable_window msg))
    (cl:cons ':world_as_main_view (world_as_main_view msg))
))
;//! \htmlinclude StartGvmRecording-response.msg.html

(cl:defclass <StartGvmRecording-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StartGvmRecording-response (<StartGvmRecording-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartGvmRecording-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartGvmRecording-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_video_monitor_msgs-srv:<StartGvmRecording-response> is deprecated: use gazebo_video_monitor_msgs-srv:StartGvmRecording-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartGvmRecording-response>) ostream)
  "Serializes a message object of type '<StartGvmRecording-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartGvmRecording-response>) istream)
  "Deserializes a message object of type '<StartGvmRecording-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartGvmRecording-response>)))
  "Returns string type for a service object of type '<StartGvmRecording-response>"
  "gazebo_video_monitor_msgs/StartGvmRecordingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartGvmRecording-response)))
  "Returns string type for a service object of type 'StartGvmRecording-response"
  "gazebo_video_monitor_msgs/StartGvmRecordingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartGvmRecording-response>)))
  "Returns md5sum for a message object of type '<StartGvmRecording-response>"
  "74a62fa060bc26d4ef1f8e73a79a72f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartGvmRecording-response)))
  "Returns md5sum for a message object of type 'StartGvmRecording-response"
  "74a62fa060bc26d4ef1f8e73a79a72f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartGvmRecording-response>)))
  "Returns full string definition for message of type '<StartGvmRecording-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartGvmRecording-response)))
  "Returns full string definition for message of type 'StartGvmRecording-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartGvmRecording-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartGvmRecording-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartGvmRecording-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartGvmRecording)))
  'StartGvmRecording-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartGvmRecording)))
  'StartGvmRecording-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartGvmRecording)))
  "Returns string type for a service object of type '<StartGvmRecording>"
  "gazebo_video_monitor_msgs/StartGvmRecording")