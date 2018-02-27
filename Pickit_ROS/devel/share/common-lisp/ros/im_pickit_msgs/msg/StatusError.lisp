; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-msg)


;//! \htmlinclude StatusError.msg.html

(cl:defclass <StatusError> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StatusError (<StatusError>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StatusError>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StatusError)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-msg:<StatusError> is deprecated: use im_pickit_msgs-msg:StatusError instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StatusError>)))
    "Constants for message type '<StatusError>"
  '((:CATEGORY . ERROR)
    (:POSE_CONTAINS_NANS . 1000)
    (:INVALID_ROTATION_MATRIX . 1001)
    (:SIZE_LARGER_THAN_ROI_BOX . 1002)
    (:INSUFFICIENT_INLIER_POINTS . 1003))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StatusError)))
    "Constants for message type 'StatusError"
  '((:CATEGORY . ERROR)
    (:POSE_CONTAINS_NANS . 1000)
    (:INVALID_ROTATION_MATRIX . 1001)
    (:SIZE_LARGER_THAN_ROI_BOX . 1002)
    (:INSUFFICIENT_INLIER_POINTS . 1003))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StatusError>) ostream)
  "Serializes a message object of type '<StatusError>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StatusError>) istream)
  "Deserializes a message object of type '<StatusError>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StatusError>)))
  "Returns string type for a message object of type '<StatusError>"
  "im_pickit_msgs/StatusError")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StatusError)))
  "Returns string type for a message object of type 'StatusError"
  "im_pickit_msgs/StatusError")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StatusError>)))
  "Returns md5sum for a message object of type '<StatusError>"
  "3ef08eadec9d53cd5205e31b7c108462")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StatusError)))
  "Returns md5sum for a message object of type 'StatusError"
  "3ef08eadec9d53cd5205e31b7c108462")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StatusError>)))
  "Returns full string definition for message of type '<StatusError>"
  (cl:format cl:nil "# These objects (status >= 1000)~%# will not get a visualization marker (due to a mathematical error, ie bug)~%~%string CATEGORY = ERROR~%~%### Enums:~%~%uint16 POSE_CONTAINS_NANS = 1000~%uint16 INVALID_ROTATION_MATRIX = 1001~%uint16 SIZE_LARGER_THAN_ROI_BOX = 1002~%uint16 INSUFFICIENT_INLIER_POINTS = 1003~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StatusError)))
  "Returns full string definition for message of type 'StatusError"
  (cl:format cl:nil "# These objects (status >= 1000)~%# will not get a visualization marker (due to a mathematical error, ie bug)~%~%string CATEGORY = ERROR~%~%### Enums:~%~%uint16 POSE_CONTAINS_NANS = 1000~%uint16 INVALID_ROTATION_MATRIX = 1001~%uint16 SIZE_LARGER_THAN_ROI_BOX = 1002~%uint16 INSUFFICIENT_INLIER_POINTS = 1003~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StatusError>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StatusError>))
  "Converts a ROS message object to a list"
  (cl:list 'StatusError
))
