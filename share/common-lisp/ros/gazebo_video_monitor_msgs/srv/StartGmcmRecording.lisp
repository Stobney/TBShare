; Auto-generated. Do not edit!


(cl:in-package gazebo_video_monitor_msgs-srv)


;//! \htmlinclude StartGmcmRecording-request.msg.html

(cl:defclass <StartGmcmRecording-request> (roslisp-msg-protocol:ros-message)
  ((cameras
    :reader cameras
    :initarg :cameras
    :type gazebo_video_monitor_msgs-msg:Strings
    :initform (cl:make-instance 'gazebo_video_monitor_msgs-msg:Strings)))
)

(cl:defclass StartGmcmRecording-request (<StartGmcmRecording-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartGmcmRecording-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartGmcmRecording-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_video_monitor_msgs-srv:<StartGmcmRecording-request> is deprecated: use gazebo_video_monitor_msgs-srv:StartGmcmRecording-request instead.")))

(cl:ensure-generic-function 'cameras-val :lambda-list '(m))
(cl:defmethod cameras-val ((m <StartGmcmRecording-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gazebo_video_monitor_msgs-srv:cameras-val is deprecated.  Use gazebo_video_monitor_msgs-srv:cameras instead.")
  (cameras m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartGmcmRecording-request>) ostream)
  "Serializes a message object of type '<StartGmcmRecording-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cameras) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartGmcmRecording-request>) istream)
  "Deserializes a message object of type '<StartGmcmRecording-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cameras) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartGmcmRecording-request>)))
  "Returns string type for a service object of type '<StartGmcmRecording-request>"
  "gazebo_video_monitor_msgs/StartGmcmRecordingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartGmcmRecording-request)))
  "Returns string type for a service object of type 'StartGmcmRecording-request"
  "gazebo_video_monitor_msgs/StartGmcmRecordingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartGmcmRecording-request>)))
  "Returns md5sum for a message object of type '<StartGmcmRecording-request>"
  "176032962ec0f63db7c7bb19a86e7410")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartGmcmRecording-request)))
  "Returns md5sum for a message object of type 'StartGmcmRecording-request"
  "176032962ec0f63db7c7bb19a86e7410")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartGmcmRecording-request>)))
  "Returns full string definition for message of type '<StartGmcmRecording-request>"
  (cl:format cl:nil "# Start recording service for the Gazebo Multi Camera Monitor plugin~%~%gazebo_video_monitor_msgs/Strings cameras~%~%================================================================================~%MSG: gazebo_video_monitor_msgs/Strings~%string[] names~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartGmcmRecording-request)))
  "Returns full string definition for message of type 'StartGmcmRecording-request"
  (cl:format cl:nil "# Start recording service for the Gazebo Multi Camera Monitor plugin~%~%gazebo_video_monitor_msgs/Strings cameras~%~%================================================================================~%MSG: gazebo_video_monitor_msgs/Strings~%string[] names~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartGmcmRecording-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cameras))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartGmcmRecording-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartGmcmRecording-request
    (cl:cons ':cameras (cameras msg))
))
;//! \htmlinclude StartGmcmRecording-response.msg.html

(cl:defclass <StartGmcmRecording-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StartGmcmRecording-response (<StartGmcmRecording-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartGmcmRecording-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartGmcmRecording-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gazebo_video_monitor_msgs-srv:<StartGmcmRecording-response> is deprecated: use gazebo_video_monitor_msgs-srv:StartGmcmRecording-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartGmcmRecording-response>) ostream)
  "Serializes a message object of type '<StartGmcmRecording-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartGmcmRecording-response>) istream)
  "Deserializes a message object of type '<StartGmcmRecording-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartGmcmRecording-response>)))
  "Returns string type for a service object of type '<StartGmcmRecording-response>"
  "gazebo_video_monitor_msgs/StartGmcmRecordingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartGmcmRecording-response)))
  "Returns string type for a service object of type 'StartGmcmRecording-response"
  "gazebo_video_monitor_msgs/StartGmcmRecordingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartGmcmRecording-response>)))
  "Returns md5sum for a message object of type '<StartGmcmRecording-response>"
  "176032962ec0f63db7c7bb19a86e7410")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartGmcmRecording-response)))
  "Returns md5sum for a message object of type 'StartGmcmRecording-response"
  "176032962ec0f63db7c7bb19a86e7410")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartGmcmRecording-response>)))
  "Returns full string definition for message of type '<StartGmcmRecording-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartGmcmRecording-response)))
  "Returns full string definition for message of type 'StartGmcmRecording-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartGmcmRecording-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartGmcmRecording-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartGmcmRecording-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartGmcmRecording)))
  'StartGmcmRecording-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartGmcmRecording)))
  'StartGmcmRecording-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartGmcmRecording)))
  "Returns string type for a service object of type '<StartGmcmRecording>"
  "gazebo_video_monitor_msgs/StartGmcmRecording")