; Auto-generated. Do not edit!


(cl:in-package py_trees_msgs-msg)


;//! \htmlinclude DockGoal.msg.html

(cl:defclass <DockGoal> (roslisp-msg-protocol:ros-message)
  ((dock
    :reader dock
    :initarg :dock
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DockGoal (<DockGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DockGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DockGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name py_trees_msgs-msg:<DockGoal> is deprecated: use py_trees_msgs-msg:DockGoal instead.")))

(cl:ensure-generic-function 'dock-val :lambda-list '(m))
(cl:defmethod dock-val ((m <DockGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader py_trees_msgs-msg:dock-val is deprecated.  Use py_trees_msgs-msg:dock instead.")
  (dock m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DockGoal>) ostream)
  "Serializes a message object of type '<DockGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dock) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DockGoal>) istream)
  "Deserializes a message object of type '<DockGoal>"
    (cl:setf (cl:slot-value msg 'dock) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DockGoal>)))
  "Returns string type for a message object of type '<DockGoal>"
  "py_trees_msgs/DockGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DockGoal)))
  "Returns string type for a message object of type 'DockGoal"
  "py_trees_msgs/DockGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DockGoal>)))
  "Returns md5sum for a message object of type '<DockGoal>"
  "035360b0bb03f7f742a0b2d734a3a660")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DockGoal)))
  "Returns md5sum for a message object of type 'DockGoal"
  "035360b0bb03f7f742a0b2d734a3a660")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DockGoal>)))
  "Returns full string definition for message of type '<DockGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%###############################################################################~%# Dicj~%###############################################################################~%#~%# Interaface to a typical docking controller~%#~%###############################################################################~%~%####################~%# Goal~%####################~%# To dock (True) or undock (False)~%bool dock~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DockGoal)))
  "Returns full string definition for message of type 'DockGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%###############################################################################~%# Dicj~%###############################################################################~%#~%# Interaface to a typical docking controller~%#~%###############################################################################~%~%####################~%# Goal~%####################~%# To dock (True) or undock (False)~%bool dock~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DockGoal>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DockGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'DockGoal
    (cl:cons ':dock (dock msg))
))
