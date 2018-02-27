; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-msg)


;//! \htmlinclude BeltMotion.msg.html

(cl:defclass <BeltMotion> (roslisp-msg-protocol:ros-message)
  ((frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform "")
   (child_frame_id
    :reader child_frame_id
    :initarg :child_frame_id
    :type cl:string
    :initform "")
   (object_motion_type
    :reader object_motion_type
    :initarg :object_motion_type
    :type cl:integer
    :initform 0)
   (camera_to_belt_tf
    :reader camera_to_belt_tf
    :initarg :camera_to_belt_tf
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform))
   (belt_speed_magnitude
    :reader belt_speed_magnitude
    :initarg :belt_speed_magnitude
    :type cl:float
    :initform 0.0)
   (belt_normalised_speed_vector
    :reader belt_normalised_speed_vector
    :initarg :belt_normalised_speed_vector
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass BeltMotion (<BeltMotion>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BeltMotion>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BeltMotion)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-msg:<BeltMotion> is deprecated: use im_pickit_msgs-msg:BeltMotion instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <BeltMotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:frame_id-val is deprecated.  Use im_pickit_msgs-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'child_frame_id-val :lambda-list '(m))
(cl:defmethod child_frame_id-val ((m <BeltMotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:child_frame_id-val is deprecated.  Use im_pickit_msgs-msg:child_frame_id instead.")
  (child_frame_id m))

(cl:ensure-generic-function 'object_motion_type-val :lambda-list '(m))
(cl:defmethod object_motion_type-val ((m <BeltMotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:object_motion_type-val is deprecated.  Use im_pickit_msgs-msg:object_motion_type instead.")
  (object_motion_type m))

(cl:ensure-generic-function 'camera_to_belt_tf-val :lambda-list '(m))
(cl:defmethod camera_to_belt_tf-val ((m <BeltMotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:camera_to_belt_tf-val is deprecated.  Use im_pickit_msgs-msg:camera_to_belt_tf instead.")
  (camera_to_belt_tf m))

(cl:ensure-generic-function 'belt_speed_magnitude-val :lambda-list '(m))
(cl:defmethod belt_speed_magnitude-val ((m <BeltMotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:belt_speed_magnitude-val is deprecated.  Use im_pickit_msgs-msg:belt_speed_magnitude instead.")
  (belt_speed_magnitude m))

(cl:ensure-generic-function 'belt_normalised_speed_vector-val :lambda-list '(m))
(cl:defmethod belt_normalised_speed_vector-val ((m <BeltMotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:belt_normalised_speed_vector-val is deprecated.  Use im_pickit_msgs-msg:belt_normalised_speed_vector instead.")
  (belt_normalised_speed_vector m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BeltMotion>) ostream)
  "Serializes a message object of type '<BeltMotion>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'child_frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'child_frame_id))
  (cl:let* ((signed (cl:slot-value msg 'object_motion_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_to_belt_tf) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'belt_speed_magnitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'belt_normalised_speed_vector) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BeltMotion>) istream)
  "Deserializes a message object of type '<BeltMotion>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'child_frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'child_frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_motion_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_to_belt_tf) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'belt_speed_magnitude) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'belt_normalised_speed_vector) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BeltMotion>)))
  "Returns string type for a message object of type '<BeltMotion>"
  "im_pickit_msgs/BeltMotion")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BeltMotion)))
  "Returns string type for a message object of type 'BeltMotion"
  "im_pickit_msgs/BeltMotion")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BeltMotion>)))
  "Returns md5sum for a message object of type '<BeltMotion>"
  "e1418c364a9790e036636f3c087e1c72")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BeltMotion)))
  "Returns md5sum for a message object of type 'BeltMotion"
  "e1418c364a9790e036636f3c087e1c72")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BeltMotion>)))
  "Returns full string definition for message of type '<BeltMotion>"
  (cl:format cl:nil "## Copyright Intermodalics 2014~%# Angular twist message~%~%string frame_id											# Parent frame (camera)~%string child_frame_id									# Child frame (belt)~%int32 object_motion_type								# Object motion type 0 = static, 1 = linear, 2 = angular														~%geometry_msgs/Transform camera_to_belt_tf				# Camera to belt frame. Transforms belt to camera coordinates.~%														# - std_msgs/Header header~%														# - string child_frame_id~%														# - geometry_msgs/Transform transform~%														~%float64 belt_speed_magnitude							# Magnitude linear velocity~%geometry_msgs/Vector3 belt_normalised_speed_vector		# Direction of linear speed in belt frame~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BeltMotion)))
  "Returns full string definition for message of type 'BeltMotion"
  (cl:format cl:nil "## Copyright Intermodalics 2014~%# Angular twist message~%~%string frame_id											# Parent frame (camera)~%string child_frame_id									# Child frame (belt)~%int32 object_motion_type								# Object motion type 0 = static, 1 = linear, 2 = angular														~%geometry_msgs/Transform camera_to_belt_tf				# Camera to belt frame. Transforms belt to camera coordinates.~%														# - std_msgs/Header header~%														# - string child_frame_id~%														# - geometry_msgs/Transform transform~%														~%float64 belt_speed_magnitude							# Magnitude linear velocity~%geometry_msgs/Vector3 belt_normalised_speed_vector		# Direction of linear speed in belt frame~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BeltMotion>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'frame_id))
     4 (cl:length (cl:slot-value msg 'child_frame_id))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_to_belt_tf))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'belt_normalised_speed_vector))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BeltMotion>))
  "Converts a ROS message object to a list"
  (cl:list 'BeltMotion
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':child_frame_id (child_frame_id msg))
    (cl:cons ':object_motion_type (object_motion_type msg))
    (cl:cons ':camera_to_belt_tf (camera_to_belt_tf msg))
    (cl:cons ':belt_speed_magnitude (belt_speed_magnitude msg))
    (cl:cons ':belt_normalised_speed_vector (belt_normalised_speed_vector msg))
))
