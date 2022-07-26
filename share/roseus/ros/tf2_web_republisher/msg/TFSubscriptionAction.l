;; Auto-generated. Do not edit!


(when (boundp 'tf2_web_republisher::TFSubscriptionAction)
  (if (not (find-package "TF2_WEB_REPUBLISHER"))
    (make-package "TF2_WEB_REPUBLISHER"))
  (shadow 'TFSubscriptionAction (find-package "TF2_WEB_REPUBLISHER")))
(unless (find-package "TF2_WEB_REPUBLISHER::TFSUBSCRIPTIONACTION")
  (make-package "TF2_WEB_REPUBLISHER::TFSUBSCRIPTIONACTION"))

(in-package "ROS")
;;//! \htmlinclude TFSubscriptionAction.msg.html


(defclass tf2_web_republisher::TFSubscriptionAction
  :super ros::object
  :slots (_action_goal _action_result _action_feedback ))

(defmethod tf2_web_republisher::TFSubscriptionAction
  (:init
   (&key
    ((:action_goal __action_goal) (instance tf2_web_republisher::TFSubscriptionActionGoal :init))
    ((:action_result __action_result) (instance tf2_web_republisher::TFSubscriptionActionResult :init))
    ((:action_feedback __action_feedback) (instance tf2_web_republisher::TFSubscriptionActionFeedback :init))
    )
   (send-super :init)
   (setq _action_goal __action_goal)
   (setq _action_result __action_result)
   (setq _action_feedback __action_feedback)
   self)
  (:action_goal
   (&rest __action_goal)
   (if (keywordp (car __action_goal))
       (send* _action_goal __action_goal)
     (progn
       (if __action_goal (setq _action_goal (car __action_goal)))
       _action_goal)))
  (:action_result
   (&rest __action_result)
   (if (keywordp (car __action_result))
       (send* _action_result __action_result)
     (progn
       (if __action_result (setq _action_result (car __action_result)))
       _action_result)))
  (:action_feedback
   (&rest __action_feedback)
   (if (keywordp (car __action_feedback))
       (send* _action_feedback __action_feedback)
     (progn
       (if __action_feedback (setq _action_feedback (car __action_feedback)))
       _action_feedback)))
  (:serialization-length
   ()
   (+
    ;; tf2_web_republisher/TFSubscriptionActionGoal _action_goal
    (send _action_goal :serialization-length)
    ;; tf2_web_republisher/TFSubscriptionActionResult _action_result
    (send _action_result :serialization-length)
    ;; tf2_web_republisher/TFSubscriptionActionFeedback _action_feedback
    (send _action_feedback :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; tf2_web_republisher/TFSubscriptionActionGoal _action_goal
       (send _action_goal :serialize s)
     ;; tf2_web_republisher/TFSubscriptionActionResult _action_result
       (send _action_result :serialize s)
     ;; tf2_web_republisher/TFSubscriptionActionFeedback _action_feedback
       (send _action_feedback :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; tf2_web_republisher/TFSubscriptionActionGoal _action_goal
     (send _action_goal :deserialize buf ptr-) (incf ptr- (send _action_goal :serialization-length))
   ;; tf2_web_republisher/TFSubscriptionActionResult _action_result
     (send _action_result :deserialize buf ptr-) (incf ptr- (send _action_result :serialization-length))
   ;; tf2_web_republisher/TFSubscriptionActionFeedback _action_feedback
     (send _action_feedback :deserialize buf ptr-) (incf ptr- (send _action_feedback :serialization-length))
   ;;
   self)
  )

(setf (get tf2_web_republisher::TFSubscriptionAction :md5sum-) "15787ffd6a2492c0022abe990c898794")
(setf (get tf2_web_republisher::TFSubscriptionAction :datatype-) "tf2_web_republisher/TFSubscriptionAction")
(setf (get tf2_web_republisher::TFSubscriptionAction :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

TFSubscriptionActionGoal action_goal
TFSubscriptionActionResult action_result
TFSubscriptionActionFeedback action_feedback

================================================================================
MSG: tf2_web_republisher/TFSubscriptionActionGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
TFSubscriptionGoal goal

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


================================================================================
MSG: tf2_web_republisher/TFSubscriptionGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# goal
string[] source_frames
string target_frame
float32 angular_thres
float32 trans_thres
float32 rate

================================================================================
MSG: tf2_web_republisher/TFSubscriptionActionResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
TFSubscriptionResult result

================================================================================
MSG: actionlib_msgs/GoalStatus
GoalID goal_id
uint8 status
uint8 PENDING         = 0   # The goal has yet to be processed by the action server
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                            #   and has since completed its execution (Terminal State)
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                            #    to some failure (Terminal State)
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                            #    because the goal was unattainable or invalid (Terminal State)
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                            #    and has not yet completed execution
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                            #    but the action server has not yet confirmed that the goal is canceled
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                            #    and was successfully cancelled (Terminal State)
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                            #    sent over the wire by an action server

#Allow for the user to associate a string with GoalStatus for debugging
string text


================================================================================
MSG: tf2_web_republisher/TFSubscriptionResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# result

================================================================================
MSG: tf2_web_republisher/TFSubscriptionActionFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
TFSubscriptionFeedback feedback

================================================================================
MSG: tf2_web_republisher/TFSubscriptionFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# feedback
geometry_msgs/TransformStamped[] transforms


================================================================================
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href=\"http://wiki.ros.org/tf\">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :tf2_web_republisher/TFSubscriptionAction "15787ffd6a2492c0022abe990c898794")


