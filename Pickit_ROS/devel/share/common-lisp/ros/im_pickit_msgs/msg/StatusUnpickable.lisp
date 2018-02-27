; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-msg)


;//! \htmlinclude StatusUnpickable.msg.html

(cl:defclass <StatusUnpickable> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StatusUnpickable (<StatusUnpickable>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StatusUnpickable>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StatusUnpickable)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-msg:<StatusUnpickable> is deprecated: use im_pickit_msgs-msg:StatusUnpickable instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StatusUnpickable>)))
    "Constants for message type '<StatusUnpickable>"
  '((:CATEGORY . UNPICKABLE)
    (:CENTER_OUTSIDE_ROI . 0)
    (:INVALID_BORDER_DISTANCE . 10)
    (:COLLISION_WITH_BOX . 20)
    (:COLLISION_WITH_POINT_CLOUD . 30)
    (:INVALID_Z_AXIS_ORIENTATION . 40)
    (:COLLISION_WITH_BOX_IN_BETWEEN_OBJECT_AND_ROI . 50))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StatusUnpickable)))
    "Constants for message type 'StatusUnpickable"
  '((:CATEGORY . UNPICKABLE)
    (:CENTER_OUTSIDE_ROI . 0)
    (:INVALID_BORDER_DISTANCE . 10)
    (:COLLISION_WITH_BOX . 20)
    (:COLLISION_WITH_POINT_CLOUD . 30)
    (:INVALID_Z_AXIS_ORIENTATION . 40)
    (:COLLISION_WITH_BOX_IN_BETWEEN_OBJECT_AND_ROI . 50))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StatusUnpickable>) ostream)
  "Serializes a message object of type '<StatusUnpickable>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StatusUnpickable>) istream)
  "Deserializes a message object of type '<StatusUnpickable>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StatusUnpickable>)))
  "Returns string type for a message object of type '<StatusUnpickable>"
  "im_pickit_msgs/StatusUnpickable")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StatusUnpickable)))
  "Returns string type for a message object of type 'StatusUnpickable"
  "im_pickit_msgs/StatusUnpickable")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StatusUnpickable>)))
  "Returns md5sum for a message object of type '<StatusUnpickable>"
  "7a651c88be4b7987ea0a0fd56c2152f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StatusUnpickable)))
  "Returns md5sum for a message object of type 'StatusUnpickable"
  "7a651c88be4b7987ea0a0fd56c2152f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StatusUnpickable>)))
  "Returns full string definition for message of type '<StatusUnpickable>"
  (cl:format cl:nil "# These objects (0 <= status <= 99)~%# will get an orange colored visualization marker.~%~%string CATEGORY = UNPICKABLE~%~%### Enums:~%~%uint16 CENTER_OUTSIDE_ROI = 0~%~%uint16 INVALID_BORDER_DISTANCE = 10~%~%uint16 COLLISION_WITH_BOX = 20~%~%uint16 COLLISION_WITH_POINT_CLOUD = 30~%~%uint16 INVALID_Z_AXIS_ORIENTATION = 40~%~%uint16 COLLISION_WITH_BOX_IN_BETWEEN_OBJECT_AND_ROI = 50~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StatusUnpickable)))
  "Returns full string definition for message of type 'StatusUnpickable"
  (cl:format cl:nil "# These objects (0 <= status <= 99)~%# will get an orange colored visualization marker.~%~%string CATEGORY = UNPICKABLE~%~%### Enums:~%~%uint16 CENTER_OUTSIDE_ROI = 0~%~%uint16 INVALID_BORDER_DISTANCE = 10~%~%uint16 COLLISION_WITH_BOX = 20~%~%uint16 COLLISION_WITH_POINT_CLOUD = 30~%~%uint16 INVALID_Z_AXIS_ORIENTATION = 40~%~%uint16 COLLISION_WITH_BOX_IN_BETWEEN_OBJECT_AND_ROI = 50~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StatusUnpickable>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StatusUnpickable>))
  "Converts a ROS message object to a list"
  (cl:list 'StatusUnpickable
))
