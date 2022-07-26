; Auto-generated. Do not edit!


(cl:in-package gazebo_video_monitor_msgs-srv)


;//! \htmlinclude StopRecording-request.msg.html

(cl:defclass <StopRecording-request> (roslisp-msg-protocol:ros-message)
  ((discard
    :reader discard
    :initarg :discard
    :type cl:boolean
    :initform cl:nil)
   (filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass StopRecording-request (<StopRecording-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopRecording-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopRecording-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_video_monitor_msgs-srv:<StopRecording-request> is deprecated: use gazebo_video_monitor_msgs-srv:StopRecording-request instead.")))

(cl:ensure-generic-function 'discard-val :lambda-list '(m))
(cl:defmethod discard-val ((m <StopRecording-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_video_monitor_msgs-srv:discard-val is deprecated.  Use gazebo_video_monitor_msgs-srv:discard instead.")
  (discard m))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <StopRecording-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_video_monitor_msgs-srv:filename-val is deprecated.  Use gazebo_video_monitor_msgs-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopRecording-request>) ostream)
  "Serializes a message object of type '<StopRecording-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'discard) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopRecording-request>) istream)
  "Deserializes a message object of type '<StopRecording-request>"
    (cl:setf (cl:slot-value msg 'discard) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopRecording-request>)))
  "Returns string type for a service object of type '<StopRecording-request>"
  "gazebo_video_monitor_msgs/StopRecordingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopRecording-request)))
  "Returns string type for a service object of type 'StopRecording-request"
  "gazebo_video_monitor_msgs/StopRecordingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopRecording-request>)))
  "Returns md5sum for a message object of type '<StopRecording-request>"
  "12af5eb2981292046a496c1fb4ba5e7a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopRecording-request)))
  "Returns md5sum for a message object of type 'StopRecording-request"
  "12af5eb2981292046a496c1fb4ba5e7a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopRecording-request>)))
  "Returns full string definition for message of type '<StopRecording-request>"
  (cl:format cl:nil "bool discard     # True to discard the recording~%string filename  # Filename without extension~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopRecording-request)))
  "Returns full string definition for message of type 'StopRecording-request"
  (cl:format cl:nil "bool discard     # True to discard the recording~%string filename  # Filename without extension~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopRecording-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopRecording-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StopRecording-request
    (cl:cons ':discard (discard msg))
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude StopRecording-response.msg.html

(cl:defclass <StopRecording-response> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type cl:string
    :initform "")
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StopRecording-response (<StopRecording-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopRecording-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopRecording-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_video_monitor_msgs-srv:<StopRecording-response> is deprecated: use gazebo_video_monitor_msgs-srv:StopRecording-response instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <StopRecording-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_video_monitor_msgs-srv:path-val is deprecated.  Use gazebo_video_monitor_msgs-srv:path instead.")
  (path m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <StopRecording-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_video_monitor_msgs-srv:success-val is deprecated.  Use gazebo_video_monitor_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopRecording-response>) ostream)
  "Serializes a message object of type '<StopRecording-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopRecording-response>) istream)
  "Deserializes a message object of type '<StopRecording-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopRecording-response>)))
  "Returns string type for a service object of type '<StopRecording-response>"
  "gazebo_video_monitor_msgs/StopRecordingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopRecording-response)))
  "Returns string type for a service object of type 'StopRecording-response"
  "gazebo_video_monitor_msgs/StopRecordingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopRecording-response>)))
  "Returns md5sum for a message object of type '<StopRecording-response>"
  "12af5eb2981292046a496c1fb4ba5e7a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopRecording-response)))
  "Returns md5sum for a message object of type 'StopRecording-response"
  "12af5eb2981292046a496c1fb4ba5e7a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopRecording-response>)))
  "Returns full string definition for message of type '<StopRecording-response>"
  (cl:format cl:nil "string path      # Absolute path to the recording~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopRecording-response)))
  "Returns full string definition for message of type 'StopRecording-response"
  (cl:format cl:nil "string path      # Absolute path to the recording~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopRecording-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'path))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopRecording-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StopRecording-response
    (cl:cons ':path (path msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StopRecording)))
  'StopRecording-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StopRecording)))
  'StopRecording-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopRecording)))
  "Returns string type for a service object of type '<StopRecording>"
  "gazebo_video_monitor_msgs/StopRecording")