; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-msg)


;//! \htmlinclude ReliabilityValue.msg.html

(cl:defclass <ReliabilityValue> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0)
   (required_value
    :reader required_value
    :initarg :required_value
    :type cl:float
    :initform 0.0)
   (has_upper_limit
    :reader has_upper_limit
    :initarg :has_upper_limit
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ReliabilityValue (<ReliabilityValue>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReliabilityValue>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReliabilityValue)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-msg:<ReliabilityValue> is deprecated: use im_pickit_msgs-msg:ReliabilityValue instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ReliabilityValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:value-val is deprecated.  Use im_pickit_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'required_value-val :lambda-list '(m))
(cl:defmethod required_value-val ((m <ReliabilityValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:required_value-val is deprecated.  Use im_pickit_msgs-msg:required_value instead.")
  (required_value m))

(cl:ensure-generic-function 'has_upper_limit-val :lambda-list '(m))
(cl:defmethod has_upper_limit-val ((m <ReliabilityValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:has_upper_limit-val is deprecated.  Use im_pickit_msgs-msg:has_upper_limit instead.")
  (has_upper_limit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReliabilityValue>) ostream)
  "Serializes a message object of type '<ReliabilityValue>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'required_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'has_upper_limit) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReliabilityValue>) istream)
  "Deserializes a message object of type '<ReliabilityValue>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'required_value) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'has_upper_limit) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReliabilityValue>)))
  "Returns string type for a message object of type '<ReliabilityValue>"
  "im_pickit_msgs/ReliabilityValue")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReliabilityValue)))
  "Returns string type for a message object of type 'ReliabilityValue"
  "im_pickit_msgs/ReliabilityValue")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReliabilityValue>)))
  "Returns md5sum for a message object of type '<ReliabilityValue>"
  "9c363c22be8a9bef0476a084792fea44")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReliabilityValue)))
  "Returns md5sum for a message object of type 'ReliabilityValue"
  "9c363c22be8a9bef0476a084792fea44")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReliabilityValue>)))
  "Returns full string definition for message of type '<ReliabilityValue>"
  (cl:format cl:nil "float64 value~%float64 required_value~%~%# mostly we work with lower limits so usually this is false~%bool has_upper_limit     ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReliabilityValue)))
  "Returns full string definition for message of type 'ReliabilityValue"
  (cl:format cl:nil "float64 value~%float64 required_value~%~%# mostly we work with lower limits so usually this is false~%bool has_upper_limit     ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReliabilityValue>))
  (cl:+ 0
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReliabilityValue>))
  "Converts a ROS message object to a list"
  (cl:list 'ReliabilityValue
    (cl:cons ':value (value msg))
    (cl:cons ':required_value (required_value msg))
    (cl:cons ':has_upper_limit (has_upper_limit msg))
))
