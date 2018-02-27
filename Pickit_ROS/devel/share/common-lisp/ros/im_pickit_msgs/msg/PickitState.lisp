; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-msg)


;//! \htmlinclude PickitState.msg.html

(cl:defclass <PickitState> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PickitState (<PickitState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PickitState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PickitState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-msg:<PickitState> is deprecated: use im_pickit_msgs-msg:PickitState instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PickitState>)))
    "Constants for message type '<PickitState>"
  '((:IDLE . root.Idle)
    (:ROI . root.Region_of_interest)
    (:CALIBRATION . root.Calibration)
    (:TESTING . root.Testing)
    (:TEST . root.Test)
    (:RUNNING . root.Running)
    (:TEACH_MODEL . root.Teach_model))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PickitState)))
    "Constants for message type 'PickitState"
  '((:IDLE . root.Idle)
    (:ROI . root.Region_of_interest)
    (:CALIBRATION . root.Calibration)
    (:TESTING . root.Testing)
    (:TEST . root.Test)
    (:RUNNING . root.Running)
    (:TEACH_MODEL . root.Teach_model))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PickitState>) ostream)
  "Serializes a message object of type '<PickitState>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PickitState>) istream)
  "Deserializes a message object of type '<PickitState>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PickitState>)))
  "Returns string type for a message object of type '<PickitState>"
  "im_pickit_msgs/PickitState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PickitState)))
  "Returns string type for a message object of type 'PickitState"
  "im_pickit_msgs/PickitState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PickitState>)))
  "Returns md5sum for a message object of type '<PickitState>"
  "9ef3dc8a4557d0cf9d67cf35dcb7b2af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PickitState)))
  "Returns md5sum for a message object of type 'PickitState"
  "9ef3dc8a4557d0cf9d67cf35dcb7b2af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PickitState>)))
  "Returns full string definition for message of type '<PickitState>"
  (cl:format cl:nil "## Copyright Pick-it 2017~%## This message contains Pick-it state constants  ##~%~%string IDLE=root.Idle~%string ROI=root.Region_of_interest~%string CALIBRATION=root.Calibration~%string TESTING=root.Testing~%string TEST=root.Test~%string RUNNING=root.Running~%string TEACH_MODEL=root.Teach_model~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PickitState)))
  "Returns full string definition for message of type 'PickitState"
  (cl:format cl:nil "## Copyright Pick-it 2017~%## This message contains Pick-it state constants  ##~%~%string IDLE=root.Idle~%string ROI=root.Region_of_interest~%string CALIBRATION=root.Calibration~%string TESTING=root.Testing~%string TEST=root.Test~%string RUNNING=root.Running~%string TEACH_MODEL=root.Teach_model~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PickitState>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PickitState>))
  "Converts a ROS message object to a list"
  (cl:list 'PickitState
))
