; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-msg)


;//! \htmlinclude PoseInRobotConvention.msg.html

(cl:defclass <PoseInRobotConvention> (roslisp-msg-protocol:ros-message)
  ((robot_type
    :reader robot_type
    :initarg :robot_type
    :type cl:string
    :initform "")
   (position
    :reader position
    :initarg :position
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (orientation
    :reader orientation
    :initarg :orientation
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0))
   (orientation_unit
    :reader orientation_unit
    :initarg :orientation_unit
    :type cl:string
    :initform ""))
)

(cl:defclass PoseInRobotConvention (<PoseInRobotConvention>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseInRobotConvention>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseInRobotConvention)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-msg:<PoseInRobotConvention> is deprecated: use im_pickit_msgs-msg:PoseInRobotConvention instead.")))

(cl:ensure-generic-function 'robot_type-val :lambda-list '(m))
(cl:defmethod robot_type-val ((m <PoseInRobotConvention>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:robot_type-val is deprecated.  Use im_pickit_msgs-msg:robot_type instead.")
  (robot_type m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <PoseInRobotConvention>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:position-val is deprecated.  Use im_pickit_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <PoseInRobotConvention>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:orientation-val is deprecated.  Use im_pickit_msgs-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'orientation_unit-val :lambda-list '(m))
(cl:defmethod orientation_unit-val ((m <PoseInRobotConvention>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:orientation_unit-val is deprecated.  Use im_pickit_msgs-msg:orientation_unit instead.")
  (orientation_unit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseInRobotConvention>) ostream)
  "Serializes a message object of type '<PoseInRobotConvention>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_type))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'position))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'orientation))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'orientation_unit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'orientation_unit))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseInRobotConvention>) istream)
  "Deserializes a message object of type '<PoseInRobotConvention>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:setf (cl:slot-value msg 'position) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'position)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'orientation) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'orientation)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'orientation_unit) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'orientation_unit) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseInRobotConvention>)))
  "Returns string type for a message object of type '<PoseInRobotConvention>"
  "im_pickit_msgs/PoseInRobotConvention")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseInRobotConvention)))
  "Returns string type for a message object of type 'PoseInRobotConvention"
  "im_pickit_msgs/PoseInRobotConvention")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseInRobotConvention>)))
  "Returns md5sum for a message object of type '<PoseInRobotConvention>"
  "549652ee550f87af479cfa70e3398398")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseInRobotConvention)))
  "Returns md5sum for a message object of type 'PoseInRobotConvention"
  "549652ee550f87af479cfa70e3398398")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseInRobotConvention>)))
  "Returns full string definition for message of type '<PoseInRobotConvention>"
  (cl:format cl:nil "# Possible robot types:~%# - ABB     (Radians)~%# - FANUC   (Degrees)~%# - STAUBLI (Degrees)~%# - KUKA    (Degrees)~%# - UR      (Radians)~%~%string       robot_type~%float64[3]   position~%float64[4]   orientation~%string       orientation_unit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseInRobotConvention)))
  "Returns full string definition for message of type 'PoseInRobotConvention"
  (cl:format cl:nil "# Possible robot types:~%# - ABB     (Radians)~%# - FANUC   (Degrees)~%# - STAUBLI (Degrees)~%# - KUKA    (Degrees)~%# - UR      (Radians)~%~%string       robot_type~%float64[3]   position~%float64[4]   orientation~%string       orientation_unit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseInRobotConvention>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot_type))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'orientation) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:length (cl:slot-value msg 'orientation_unit))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseInRobotConvention>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseInRobotConvention
    (cl:cons ':robot_type (robot_type msg))
    (cl:cons ':position (position msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':orientation_unit (orientation_unit msg))
))
