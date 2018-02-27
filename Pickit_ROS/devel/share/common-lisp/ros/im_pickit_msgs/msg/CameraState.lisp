; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-msg)


;//! \htmlinclude CameraState.msg.html

(cl:defclass <CameraState> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CameraState (<CameraState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-msg:<CameraState> is deprecated: use im_pickit_msgs-msg:CameraState instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <CameraState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:state-val is deprecated.  Use im_pickit_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CameraState>)))
    "Constants for message type '<CameraState>"
  '((:STATE_REGISTERED . 1)
    (:STATE_CONNECTED . 2)
    (:STATE_DISCONNECTED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CameraState)))
    "Constants for message type 'CameraState"
  '((:STATE_REGISTERED . 1)
    (:STATE_CONNECTED . 2)
    (:STATE_DISCONNECTED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraState>) ostream)
  "Serializes a message object of type '<CameraState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraState>) istream)
  "Deserializes a message object of type '<CameraState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraState>)))
  "Returns string type for a message object of type '<CameraState>"
  "im_pickit_msgs/CameraState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraState)))
  "Returns string type for a message object of type 'CameraState"
  "im_pickit_msgs/CameraState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraState>)))
  "Returns md5sum for a message object of type '<CameraState>"
  "7f0b89c087f6efa23b45a421459a1b74")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraState)))
  "Returns md5sum for a message object of type 'CameraState"
  "7f0b89c087f6efa23b45a421459a1b74")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraState>)))
  "Returns full string definition for message of type '<CameraState>"
  (cl:format cl:nil "uint8 STATE_REGISTERED    = 1~%uint8 STATE_CONNECTED     = 2~%uint8 STATE_DISCONNECTED  = 3~%~%uint8 state   # Camera state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraState)))
  "Returns full string definition for message of type 'CameraState"
  (cl:format cl:nil "uint8 STATE_REGISTERED    = 1~%uint8 STATE_CONNECTED     = 2~%uint8 STATE_DISCONNECTED  = 3~%~%uint8 state   # Camera state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraState>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraState
    (cl:cons ':state (state msg))
))
