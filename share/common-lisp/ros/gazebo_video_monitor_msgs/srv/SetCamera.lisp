; Auto-generated. Do not edit!


(cl:in-package gazebo_video_monitor_msgs-srv)


;//! \htmlinclude SetCamera-request.msg.html

(cl:defclass <SetCamera-request> (roslisp-msg-protocol:ros-message)
  ((camera_name
    :reader camera_name
    :initarg :camera_name
    :type cl:string
    :initform "")
   (model_name
    :reader model_name
    :initarg :model_name
    :type cl:string
    :initform "")
   (link_name
    :reader link_name
    :initarg :link_name
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type gazebo_video_monitor_msgs-msg:Pose
    :initform (cl:make-instance 'gazebo_video_monitor_msgs-msg:Pose)))
)

(cl:defclass SetCamera-request (<SetCamera-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCamera-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCamera-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_video_monitor_msgs-srv:<SetCamera-request> is deprecated: use gazebo_video_monitor_msgs-srv:SetCamera-request instead.")))

(cl:ensure-generic-function 'camera_name-val :lambda-list '(m))
(cl:defmethod camera_name-val ((m <SetCamera-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_video_monitor_msgs-srv:camera_name-val is deprecated.  Use gazebo_video_monitor_msgs-srv:camera_name instead.")
  (camera_name m))

(cl:ensure-generic-function 'model_name-val :lambda-list '(m))
(cl:defmethod model_name-val ((m <SetCamera-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_video_monitor_msgs-srv:model_name-val is deprecated.  Use gazebo_video_monitor_msgs-srv:model_name instead.")
  (model_name m))

(cl:ensure-generic-function 'link_name-val :lambda-list '(m))
(cl:defmethod link_name-val ((m <SetCamera-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_video_monitor_msgs-srv:link_name-val is deprecated.  Use gazebo_video_monitor_msgs-srv:link_name instead.")
  (link_name m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <SetCamera-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_video_monitor_msgs-srv:pose-val is deprecated.  Use gazebo_video_monitor_msgs-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCamera-request>) ostream)
  "Serializes a message object of type '<SetCamera-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'camera_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'camera_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'link_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'link_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCamera-request>) istream)
  "Deserializes a message object of type '<SetCamera-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'camera_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'camera_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'link_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'link_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCamera-request>)))
  "Returns string type for a service object of type '<SetCamera-request>"
  "gazebo_video_monitor_msgs/SetCameraRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCamera-request)))
  "Returns string type for a service object of type 'SetCamera-request"
  "gazebo_video_monitor_msgs/SetCameraRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCamera-request>)))
  "Returns md5sum for a message object of type '<SetCamera-request>"
  "62faff843444223b685376b7fecc4898")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCamera-request)))
  "Returns md5sum for a message object of type 'SetCamera-request"
  "62faff843444223b685376b7fecc4898")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCamera-request>)))
  "Returns full string definition for message of type '<SetCamera-request>"
  (cl:format cl:nil "string camera_name                   # Name of the camera (as given in the SDF description)~%string model_name                    # Name of the model with which to associate the camera. If empty, the camera is attached to the world model (see multicamera bootstrapper)~%string link_name                     # Name of the link to which to attach the camera~%gazebo_video_monitor_msgs/Pose pose  # Pose relative to the parent link~%~%================================================================================~%MSG: gazebo_video_monitor_msgs/Pose~%float64 x~%float64 y~%float64 z~%float64 roll~%float64 pitch~%float64 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCamera-request)))
  "Returns full string definition for message of type 'SetCamera-request"
  (cl:format cl:nil "string camera_name                   # Name of the camera (as given in the SDF description)~%string model_name                    # Name of the model with which to associate the camera. If empty, the camera is attached to the world model (see multicamera bootstrapper)~%string link_name                     # Name of the link to which to attach the camera~%gazebo_video_monitor_msgs/Pose pose  # Pose relative to the parent link~%~%================================================================================~%MSG: gazebo_video_monitor_msgs/Pose~%float64 x~%float64 y~%float64 z~%float64 roll~%float64 pitch~%float64 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCamera-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'camera_name))
     4 (cl:length (cl:slot-value msg 'model_name))
     4 (cl:length (cl:slot-value msg 'link_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCamera-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCamera-request
    (cl:cons ':camera_name (camera_name msg))
    (cl:cons ':model_name (model_name msg))
    (cl:cons ':link_name (link_name msg))
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude SetCamera-response.msg.html

(cl:defclass <SetCamera-response> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetCamera-response (<SetCamera-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCamera-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCamera-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_video_monitor_msgs-srv:<SetCamera-response> is deprecated: use gazebo_video_monitor_msgs-srv:SetCamera-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetCamera-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_video_monitor_msgs-srv:message-val is deprecated.  Use gazebo_video_monitor_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetCamera-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_video_monitor_msgs-srv:success-val is deprecated.  Use gazebo_video_monitor_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCamera-response>) ostream)
  "Serializes a message object of type '<SetCamera-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCamera-response>) istream)
  "Deserializes a message object of type '<SetCamera-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCamera-response>)))
  "Returns string type for a service object of type '<SetCamera-response>"
  "gazebo_video_monitor_msgs/SetCameraResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCamera-response)))
  "Returns string type for a service object of type 'SetCamera-response"
  "gazebo_video_monitor_msgs/SetCameraResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCamera-response>)))
  "Returns md5sum for a message object of type '<SetCamera-response>"
  "62faff843444223b685376b7fecc4898")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCamera-response)))
  "Returns md5sum for a message object of type 'SetCamera-response"
  "62faff843444223b685376b7fecc4898")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCamera-response>)))
  "Returns full string definition for message of type '<SetCamera-response>"
  (cl:format cl:nil "string message~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCamera-response)))
  "Returns full string definition for message of type 'SetCamera-response"
  (cl:format cl:nil "string message~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCamera-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCamera-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCamera-response
    (cl:cons ':message (message msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetCamera)))
  'SetCamera-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetCamera)))
  'SetCamera-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCamera)))
  "Returns string type for a service object of type '<SetCamera>"
  "gazebo_video_monitor_msgs/SetCamera")