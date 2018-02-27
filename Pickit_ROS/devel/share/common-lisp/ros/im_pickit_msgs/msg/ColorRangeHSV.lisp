; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-msg)


;//! \htmlinclude ColorRangeHSV.msg.html

(cl:defclass <ColorRangeHSV> (roslisp-msg-protocol:ros-message)
  ((h_min
    :reader h_min
    :initarg :h_min
    :type cl:integer
    :initform 0)
   (h_max
    :reader h_max
    :initarg :h_max
    :type cl:integer
    :initform 0)
   (s_min
    :reader s_min
    :initarg :s_min
    :type cl:float
    :initform 0.0)
   (s_max
    :reader s_max
    :initarg :s_max
    :type cl:float
    :initform 0.0)
   (v_min
    :reader v_min
    :initarg :v_min
    :type cl:float
    :initform 0.0)
   (v_max
    :reader v_max
    :initarg :v_max
    :type cl:float
    :initform 0.0))
)

(cl:defclass ColorRangeHSV (<ColorRangeHSV>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ColorRangeHSV>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ColorRangeHSV)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-msg:<ColorRangeHSV> is deprecated: use im_pickit_msgs-msg:ColorRangeHSV instead.")))

(cl:ensure-generic-function 'h_min-val :lambda-list '(m))
(cl:defmethod h_min-val ((m <ColorRangeHSV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:h_min-val is deprecated.  Use im_pickit_msgs-msg:h_min instead.")
  (h_min m))

(cl:ensure-generic-function 'h_max-val :lambda-list '(m))
(cl:defmethod h_max-val ((m <ColorRangeHSV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:h_max-val is deprecated.  Use im_pickit_msgs-msg:h_max instead.")
  (h_max m))

(cl:ensure-generic-function 's_min-val :lambda-list '(m))
(cl:defmethod s_min-val ((m <ColorRangeHSV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:s_min-val is deprecated.  Use im_pickit_msgs-msg:s_min instead.")
  (s_min m))

(cl:ensure-generic-function 's_max-val :lambda-list '(m))
(cl:defmethod s_max-val ((m <ColorRangeHSV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:s_max-val is deprecated.  Use im_pickit_msgs-msg:s_max instead.")
  (s_max m))

(cl:ensure-generic-function 'v_min-val :lambda-list '(m))
(cl:defmethod v_min-val ((m <ColorRangeHSV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:v_min-val is deprecated.  Use im_pickit_msgs-msg:v_min instead.")
  (v_min m))

(cl:ensure-generic-function 'v_max-val :lambda-list '(m))
(cl:defmethod v_max-val ((m <ColorRangeHSV>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:v_max-val is deprecated.  Use im_pickit_msgs-msg:v_max instead.")
  (v_max m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ColorRangeHSV>) ostream)
  "Serializes a message object of type '<ColorRangeHSV>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'h_min)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'h_min)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'h_min)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'h_min)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'h_max)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'h_max)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'h_max)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'h_max)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 's_min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 's_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'v_min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'v_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ColorRangeHSV>) istream)
  "Deserializes a message object of type '<ColorRangeHSV>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'h_min)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'h_min)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'h_min)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'h_min)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'h_max)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'h_max)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'h_max)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'h_max)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 's_min) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 's_max) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_min) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_max) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ColorRangeHSV>)))
  "Returns string type for a message object of type '<ColorRangeHSV>"
  "im_pickit_msgs/ColorRangeHSV")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ColorRangeHSV)))
  "Returns string type for a message object of type 'ColorRangeHSV"
  "im_pickit_msgs/ColorRangeHSV")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ColorRangeHSV>)))
  "Returns md5sum for a message object of type '<ColorRangeHSV>"
  "54efefea98c15a07b7359b9e855639cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ColorRangeHSV)))
  "Returns md5sum for a message object of type 'ColorRangeHSV"
  "54efefea98c15a07b7359b9e855639cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ColorRangeHSV>)))
  "Returns full string definition for message of type '<ColorRangeHSV>"
  (cl:format cl:nil "# An HSV-based color range.~%~%# The range for the color representation. ~%# Hue: range is from 0 to 360.~%uint32 h_min~%uint32 h_max~%# Saturation: range is from 0 to 1.~%float64 s_min~%float64 s_max~%# Saturation: range is from 0 to 1.~%float64 v_min~%float64 v_max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ColorRangeHSV)))
  "Returns full string definition for message of type 'ColorRangeHSV"
  (cl:format cl:nil "# An HSV-based color range.~%~%# The range for the color representation. ~%# Hue: range is from 0 to 360.~%uint32 h_min~%uint32 h_max~%# Saturation: range is from 0 to 1.~%float64 s_min~%float64 s_max~%# Saturation: range is from 0 to 1.~%float64 v_min~%float64 v_max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ColorRangeHSV>))
  (cl:+ 0
     4
     4
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ColorRangeHSV>))
  "Converts a ROS message object to a list"
  (cl:list 'ColorRangeHSV
    (cl:cons ':h_min (h_min msg))
    (cl:cons ':h_max (h_max msg))
    (cl:cons ':s_min (s_min msg))
    (cl:cons ':s_max (s_max msg))
    (cl:cons ':v_min (v_min msg))
    (cl:cons ':v_max (v_max msg))
))
