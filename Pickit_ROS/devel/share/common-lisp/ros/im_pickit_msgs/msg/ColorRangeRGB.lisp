; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-msg)


;//! \htmlinclude ColorRangeRGB.msg.html

(cl:defclass <ColorRangeRGB> (roslisp-msg-protocol:ros-message)
  ((r_min
    :reader r_min
    :initarg :r_min
    :type cl:integer
    :initform 0)
   (r_max
    :reader r_max
    :initarg :r_max
    :type cl:integer
    :initform 0)
   (g_min
    :reader g_min
    :initarg :g_min
    :type cl:integer
    :initform 0)
   (g_max
    :reader g_max
    :initarg :g_max
    :type cl:integer
    :initform 0)
   (b_min
    :reader b_min
    :initarg :b_min
    :type cl:integer
    :initform 0)
   (b_max
    :reader b_max
    :initarg :b_max
    :type cl:integer
    :initform 0)
   (threshold
    :reader threshold
    :initarg :threshold
    :type cl:integer
    :initform 0))
)

(cl:defclass ColorRangeRGB (<ColorRangeRGB>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ColorRangeRGB>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ColorRangeRGB)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-msg:<ColorRangeRGB> is deprecated: use im_pickit_msgs-msg:ColorRangeRGB instead.")))

(cl:ensure-generic-function 'r_min-val :lambda-list '(m))
(cl:defmethod r_min-val ((m <ColorRangeRGB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:r_min-val is deprecated.  Use im_pickit_msgs-msg:r_min instead.")
  (r_min m))

(cl:ensure-generic-function 'r_max-val :lambda-list '(m))
(cl:defmethod r_max-val ((m <ColorRangeRGB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:r_max-val is deprecated.  Use im_pickit_msgs-msg:r_max instead.")
  (r_max m))

(cl:ensure-generic-function 'g_min-val :lambda-list '(m))
(cl:defmethod g_min-val ((m <ColorRangeRGB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:g_min-val is deprecated.  Use im_pickit_msgs-msg:g_min instead.")
  (g_min m))

(cl:ensure-generic-function 'g_max-val :lambda-list '(m))
(cl:defmethod g_max-val ((m <ColorRangeRGB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:g_max-val is deprecated.  Use im_pickit_msgs-msg:g_max instead.")
  (g_max m))

(cl:ensure-generic-function 'b_min-val :lambda-list '(m))
(cl:defmethod b_min-val ((m <ColorRangeRGB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:b_min-val is deprecated.  Use im_pickit_msgs-msg:b_min instead.")
  (b_min m))

(cl:ensure-generic-function 'b_max-val :lambda-list '(m))
(cl:defmethod b_max-val ((m <ColorRangeRGB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:b_max-val is deprecated.  Use im_pickit_msgs-msg:b_max instead.")
  (b_max m))

(cl:ensure-generic-function 'threshold-val :lambda-list '(m))
(cl:defmethod threshold-val ((m <ColorRangeRGB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:threshold-val is deprecated.  Use im_pickit_msgs-msg:threshold instead.")
  (threshold m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ColorRangeRGB>) ostream)
  "Serializes a message object of type '<ColorRangeRGB>"
  (cl:let* ((signed (cl:slot-value msg 'r_min)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'r_max)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'g_min)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'g_max)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b_min)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b_max)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'threshold)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'threshold)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'threshold)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'threshold)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ColorRangeRGB>) istream)
  "Deserializes a message object of type '<ColorRangeRGB>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'r_min) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'r_max) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'g_min) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'g_max) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b_min) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b_max) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'threshold)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'threshold)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'threshold)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'threshold)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ColorRangeRGB>)))
  "Returns string type for a message object of type '<ColorRangeRGB>"
  "im_pickit_msgs/ColorRangeRGB")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ColorRangeRGB)))
  "Returns string type for a message object of type 'ColorRangeRGB"
  "im_pickit_msgs/ColorRangeRGB")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ColorRangeRGB>)))
  "Returns md5sum for a message object of type '<ColorRangeRGB>"
  "31b60f88d3839dd75fbd039dd46fec9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ColorRangeRGB)))
  "Returns md5sum for a message object of type 'ColorRangeRGB"
  "31b60f88d3839dd75fbd039dd46fec9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ColorRangeRGB>)))
  "Returns full string definition for message of type '<ColorRangeRGB>"
  (cl:format cl:nil "# An RGB-based color range.~%~%# The range for the colors (from 0 to 255).~%int32 r_min~%int32 r_max~%int32 g_min~%int32 g_max~%int32 b_min~%int32 b_max~%~%uint32 threshold~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ColorRangeRGB)))
  "Returns full string definition for message of type 'ColorRangeRGB"
  (cl:format cl:nil "# An RGB-based color range.~%~%# The range for the colors (from 0 to 255).~%int32 r_min~%int32 r_max~%int32 g_min~%int32 g_max~%int32 b_min~%int32 b_max~%~%uint32 threshold~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ColorRangeRGB>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ColorRangeRGB>))
  "Converts a ROS message object to a list"
  (cl:list 'ColorRangeRGB
    (cl:cons ':r_min (r_min msg))
    (cl:cons ':r_max (r_max msg))
    (cl:cons ':g_min (g_min msg))
    (cl:cons ':g_max (g_max msg))
    (cl:cons ':b_min (b_min msg))
    (cl:cons ':b_max (b_max msg))
    (cl:cons ':threshold (threshold msg))
))
