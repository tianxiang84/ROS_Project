; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-msg)


;//! \htmlinclude ObjectArray.msg.html

(cl:defclass <ObjectArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (content
    :reader content
    :initarg :content
    :type cl:fixnum
    :initform 0)
   (encoder_stamp
    :reader encoder_stamp
    :initarg :encoder_stamp
    :type cl:integer
    :initform 0)
   (robot_to_camera_tf
    :reader robot_to_camera_tf
    :initarg :robot_to_camera_tf
    :type geometry_msgs-msg:TransformStamped
    :initform (cl:make-instance 'geometry_msgs-msg:TransformStamped))
   (camera_to_reference_tf
    :reader camera_to_reference_tf
    :initarg :camera_to_reference_tf
    :type geometry_msgs-msg:TransformStamped
    :initform (cl:make-instance 'geometry_msgs-msg:TransformStamped))
   (cloud_capturing_duration
    :reader cloud_capturing_duration
    :initarg :cloud_capturing_duration
    :type cl:float
    :initform 0.0)
   (clustering_method
    :reader clustering_method
    :initarg :clustering_method
    :type cl:fixnum
    :initform 0)
   (n_rejected_clusters
    :reader n_rejected_clusters
    :initarg :n_rejected_clusters
    :type cl:fixnum
    :initform 0)
   (clustering_duration
    :reader clustering_duration
    :initarg :clustering_duration
    :type cl:float
    :initform 0.0)
   (calculation_time
    :reader calculation_time
    :initarg :calculation_time
    :type cl:float
    :initform 0.0)
   (n_valid_objects
    :reader n_valid_objects
    :initarg :n_valid_objects
    :type cl:fixnum
    :initform 0)
   (n_rejected_objects
    :reader n_rejected_objects
    :initarg :n_rejected_objects
    :type cl:fixnum
    :initform 0)
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector im_pickit_msgs-msg:Object)
   :initform (cl:make-array 0 :element-type 'im_pickit_msgs-msg:Object :initial-element (cl:make-instance 'im_pickit_msgs-msg:Object))))
)

(cl:defclass ObjectArray (<ObjectArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-msg:<ObjectArray> is deprecated: use im_pickit_msgs-msg:ObjectArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:header-val is deprecated.  Use im_pickit_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'content-val :lambda-list '(m))
(cl:defmethod content-val ((m <ObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:content-val is deprecated.  Use im_pickit_msgs-msg:content instead.")
  (content m))

(cl:ensure-generic-function 'encoder_stamp-val :lambda-list '(m))
(cl:defmethod encoder_stamp-val ((m <ObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:encoder_stamp-val is deprecated.  Use im_pickit_msgs-msg:encoder_stamp instead.")
  (encoder_stamp m))

(cl:ensure-generic-function 'robot_to_camera_tf-val :lambda-list '(m))
(cl:defmethod robot_to_camera_tf-val ((m <ObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:robot_to_camera_tf-val is deprecated.  Use im_pickit_msgs-msg:robot_to_camera_tf instead.")
  (robot_to_camera_tf m))

(cl:ensure-generic-function 'camera_to_reference_tf-val :lambda-list '(m))
(cl:defmethod camera_to_reference_tf-val ((m <ObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:camera_to_reference_tf-val is deprecated.  Use im_pickit_msgs-msg:camera_to_reference_tf instead.")
  (camera_to_reference_tf m))

(cl:ensure-generic-function 'cloud_capturing_duration-val :lambda-list '(m))
(cl:defmethod cloud_capturing_duration-val ((m <ObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:cloud_capturing_duration-val is deprecated.  Use im_pickit_msgs-msg:cloud_capturing_duration instead.")
  (cloud_capturing_duration m))

(cl:ensure-generic-function 'clustering_method-val :lambda-list '(m))
(cl:defmethod clustering_method-val ((m <ObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:clustering_method-val is deprecated.  Use im_pickit_msgs-msg:clustering_method instead.")
  (clustering_method m))

(cl:ensure-generic-function 'n_rejected_clusters-val :lambda-list '(m))
(cl:defmethod n_rejected_clusters-val ((m <ObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:n_rejected_clusters-val is deprecated.  Use im_pickit_msgs-msg:n_rejected_clusters instead.")
  (n_rejected_clusters m))

(cl:ensure-generic-function 'clustering_duration-val :lambda-list '(m))
(cl:defmethod clustering_duration-val ((m <ObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:clustering_duration-val is deprecated.  Use im_pickit_msgs-msg:clustering_duration instead.")
  (clustering_duration m))

(cl:ensure-generic-function 'calculation_time-val :lambda-list '(m))
(cl:defmethod calculation_time-val ((m <ObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:calculation_time-val is deprecated.  Use im_pickit_msgs-msg:calculation_time instead.")
  (calculation_time m))

(cl:ensure-generic-function 'n_valid_objects-val :lambda-list '(m))
(cl:defmethod n_valid_objects-val ((m <ObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:n_valid_objects-val is deprecated.  Use im_pickit_msgs-msg:n_valid_objects instead.")
  (n_valid_objects m))

(cl:ensure-generic-function 'n_rejected_objects-val :lambda-list '(m))
(cl:defmethod n_rejected_objects-val ((m <ObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:n_rejected_objects-val is deprecated.  Use im_pickit_msgs-msg:n_rejected_objects instead.")
  (n_rejected_objects m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <ObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:objects-val is deprecated.  Use im_pickit_msgs-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ObjectArray>)))
    "Constants for message type '<ObjectArray>"
  '((:NEW_OBJECT_DETECTION . 2)
    (:RESET . 0)
    (:NO_CLUSTERING . 10)
    (:DISTANCE_BASED_CLUSTERING . 11)
    (:NORMAL_BASED_CLUSTERING . 12))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ObjectArray)))
    "Constants for message type 'ObjectArray"
  '((:NEW_OBJECT_DETECTION . 2)
    (:RESET . 0)
    (:NO_CLUSTERING . 10)
    (:DISTANCE_BASED_CLUSTERING . 11)
    (:NORMAL_BASED_CLUSTERING . 12))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectArray>) ostream)
  "Serializes a message object of type '<ObjectArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'content)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'encoder_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'encoder_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'encoder_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'encoder_stamp)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_to_camera_tf) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_to_reference_tf) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cloud_capturing_duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clustering_method)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_rejected_clusters)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'n_rejected_clusters)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'clustering_duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'calculation_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_valid_objects)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'n_valid_objects)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_rejected_objects)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'n_rejected_objects)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectArray>) istream)
  "Deserializes a message object of type '<ObjectArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'content)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'encoder_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'encoder_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'encoder_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'encoder_stamp)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_to_camera_tf) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_to_reference_tf) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cloud_capturing_duration) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clustering_method)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_rejected_clusters)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'n_rejected_clusters)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'clustering_duration) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'calculation_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_valid_objects)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'n_valid_objects)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_rejected_objects)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'n_rejected_objects)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'im_pickit_msgs-msg:Object))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectArray>)))
  "Returns string type for a message object of type '<ObjectArray>"
  "im_pickit_msgs/ObjectArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectArray)))
  "Returns string type for a message object of type 'ObjectArray"
  "im_pickit_msgs/ObjectArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectArray>)))
  "Returns md5sum for a message object of type '<ObjectArray>"
  "204d3d08d5381f80541e760fbffe322f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectArray)))
  "Returns md5sum for a message object of type 'ObjectArray"
  "204d3d08d5381f80541e760fbffe322f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectArray>)))
  "Returns full string definition for message of type '<ObjectArray>"
  (cl:format cl:nil "## Copyright Intermodalics 2014~%## This message contains all objects found by the last Pick-it run ##~%~%# Origin of the msg content~%uint8 NEW_OBJECT_DETECTION = 2~%uint8 RESET = 0~%~%# Clustering methods~%uint8 NO_CLUSTERING = 10~%uint8 DISTANCE_BASED_CLUSTERING = 11~%uint8 NORMAL_BASED_CLUSTERING = 12~%~%std_msgs/Header                 header~%uint8                           content~%uint32                          encoder_stamp~%geometry_msgs/TransformStamped  robot_to_camera_tf~%geometry_msgs/TransformStamped  camera_to_reference_tf~%~%float64                         cloud_capturing_duration~%~%uint8                           clustering_method~%uint16                          n_rejected_clusters~%float64                         clustering_duration~%~%float64                         calculation_time # Total object detection time~%~%uint16                          n_valid_objects~%uint16                          n_rejected_objects~%~%im_pickit_msgs/Object[]         objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: im_pickit_msgs/Object~%## Copyright Intermodalics 2016~%## This message contains all descriptive data for one object found by Pick-it ##~%~%# Object index in list associated to a single detection run.~%uint16                                  index~%~%# Object frame expressed with respect to a frame.~%geometry_msgs/TransformStamped          object_tf~%~%# Object pick frame expressed with respect to a frame.~%geometry_msgs/TransformStamped          object_pick_tf~%~%# Object model used for registration, reliability score calculation and more.~%ObjectModel                             model~%~%# Number of scene points verifying the object model.~%uint16                                  n_points~%~%# Object dimensions. The contents of the x, y and z elements depend on the~%# object type:~%#~%#  |   Type      |    X     |    Y     |    Z     |~%#  |-------------|----------|----------|----------|~%#  | CYLINDER    | length   | diameter | diameter |~%#  | SPHERE      | diameter | diameter | diameter |~%#  | RECTANGLE   | length   | width    |    0     |~%#  | SQUARE      | length   | length   |    0     |~%#  | ELLIPSE     | length   | width    |    0     |~%#  | CIRCLE      | diameter | diameter |    0     |~%#  | POINT_CLOUD | bbox X   | bbox Y   | bbox Z   |~%#  | BLOB        | bbox X   | bbox Y   | bbox Z   |~%#~%# where 'bbox X' means the span of the object's bounding box along the X-axis.~%geometry_msgs/Vector3                   dimensions~%~%# Contains scoring metrics used to quantify the goodness of a detection.~%Reliability                             reliability~%~%# NOTE: There is currently an inconsistency between terms used in the~%#       back-end vs. the front-end. The following table summarizes them to~%#       prevent confusion:~%#~%#       BACK-END flag  maps to ->   FRONT-END detection grid column~%#~%#       is_pickable    maps to ->   Pickable~%#       is_detectable  maps to ->   Valid~%#       is_valid       maps to ->   <None>~%#~%#       Notice in particular how the is_valid back-end flag and the Valid~%#       front-end detection grid column have different meanings.~%~%# Flag that evaluates to true when an object is both pickable and detectable.~%bool                                    is_valid~%~%# Flag that evaluates to true when an object satisfies frame alignment and~%# collision constraints.~%bool                                    is_pickable~%~%# Flag that evaluates to true when an object satisfies fitting, reliability and~%# size constraints.~%bool                                    is_detectable~%~%# List of strings describing main detection status for invalid detections~%# (e.g. ERROR, INVALID, UNPICKABLE).~%# See CATEGORY strings in StatusXxx.msg files for available categories.~%# The list is empty in case of a valid detection.~%string[]                                categories~%~%# List of substatus identifiers providing detail information for each of the~%# above categories. There is one substatus per category.~%# The list is empty in case of a valid detection.~%SubStatus[]                             substatuses~%~%================================================================================~%MSG: im_pickit_msgs/ObjectModel~%# Copyright (c) 2017, Pick-it NV.~%# All rights reserved.~%~%# Definition of different object models used for registration, reliability score calculation and more.~%~%# Unspecified~%uint8 NONE          = 0~%~%# 2D models:~%uint8 SQUARE        = 21~%uint8 RECTANGLE     = 22~%uint8 CIRCLE        = 23~%uint8 ELLIPSE       = 24~%~%# 3D models:~%uint8 CYLINDER      = 32~%uint8 SPHERE        = 33~%uint8 POINT_CLOUD   = 35  # Object model given as point cloud (Pickit-Teach).~%~%# Other models:~%uint8 BLOB          = 50  # Object without specified shape -> No object fitting is performed.~%~%# Models of internal use only:~%uint8 CLUSTER       = 250~%~%uint8 type  # Model type, takes one of the above defined models types as value.~%~%================================================================================~%MSG: im_pickit_msgs/Reliability~%## Contains all parameters describing reliability of detected object~%## Values expressed as confidence levels ranging from 0.0 to 1.0~%~%## Ratio of inlier points close to the border of the \"Intermodalics hole\" and~%## all points of the \"Intermodalics hole\".~%ReliabilityValue scene_coverage_2d~%~%## Ratio of inlier points to all points in the cluster.~%ReliabilityValue scene_coverage_3d~%~%### TODO(@wannesvanloock): Add description pls.~%ReliabilityValue model_contour_coverage_2d~%### TODO(@wannesvanloock): Add description pls.~%ReliabilityValue model_surface_coverage_2d~%~%## 3D reliability of the matched model~%ReliabilityValue model_coverage_3d~%~%================================================================================~%MSG: im_pickit_msgs/ReliabilityValue~%float64 value~%float64 required_value~%~%# mostly we work with lower limits so usually this is false~%bool has_upper_limit     ~%================================================================================~%MSG: im_pickit_msgs/SubStatus~%# Rejected object substatus:~%#  - StatusUnpickable (orange)~%#  - StatusInvalid (red)~%#  - StatusDiscarded (no marker)~%~%uint16 substatus~%string detail~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectArray)))
  "Returns full string definition for message of type 'ObjectArray"
  (cl:format cl:nil "## Copyright Intermodalics 2014~%## This message contains all objects found by the last Pick-it run ##~%~%# Origin of the msg content~%uint8 NEW_OBJECT_DETECTION = 2~%uint8 RESET = 0~%~%# Clustering methods~%uint8 NO_CLUSTERING = 10~%uint8 DISTANCE_BASED_CLUSTERING = 11~%uint8 NORMAL_BASED_CLUSTERING = 12~%~%std_msgs/Header                 header~%uint8                           content~%uint32                          encoder_stamp~%geometry_msgs/TransformStamped  robot_to_camera_tf~%geometry_msgs/TransformStamped  camera_to_reference_tf~%~%float64                         cloud_capturing_duration~%~%uint8                           clustering_method~%uint16                          n_rejected_clusters~%float64                         clustering_duration~%~%float64                         calculation_time # Total object detection time~%~%uint16                          n_valid_objects~%uint16                          n_rejected_objects~%~%im_pickit_msgs/Object[]         objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: im_pickit_msgs/Object~%## Copyright Intermodalics 2016~%## This message contains all descriptive data for one object found by Pick-it ##~%~%# Object index in list associated to a single detection run.~%uint16                                  index~%~%# Object frame expressed with respect to a frame.~%geometry_msgs/TransformStamped          object_tf~%~%# Object pick frame expressed with respect to a frame.~%geometry_msgs/TransformStamped          object_pick_tf~%~%# Object model used for registration, reliability score calculation and more.~%ObjectModel                             model~%~%# Number of scene points verifying the object model.~%uint16                                  n_points~%~%# Object dimensions. The contents of the x, y and z elements depend on the~%# object type:~%#~%#  |   Type      |    X     |    Y     |    Z     |~%#  |-------------|----------|----------|----------|~%#  | CYLINDER    | length   | diameter | diameter |~%#  | SPHERE      | diameter | diameter | diameter |~%#  | RECTANGLE   | length   | width    |    0     |~%#  | SQUARE      | length   | length   |    0     |~%#  | ELLIPSE     | length   | width    |    0     |~%#  | CIRCLE      | diameter | diameter |    0     |~%#  | POINT_CLOUD | bbox X   | bbox Y   | bbox Z   |~%#  | BLOB        | bbox X   | bbox Y   | bbox Z   |~%#~%# where 'bbox X' means the span of the object's bounding box along the X-axis.~%geometry_msgs/Vector3                   dimensions~%~%# Contains scoring metrics used to quantify the goodness of a detection.~%Reliability                             reliability~%~%# NOTE: There is currently an inconsistency between terms used in the~%#       back-end vs. the front-end. The following table summarizes them to~%#       prevent confusion:~%#~%#       BACK-END flag  maps to ->   FRONT-END detection grid column~%#~%#       is_pickable    maps to ->   Pickable~%#       is_detectable  maps to ->   Valid~%#       is_valid       maps to ->   <None>~%#~%#       Notice in particular how the is_valid back-end flag and the Valid~%#       front-end detection grid column have different meanings.~%~%# Flag that evaluates to true when an object is both pickable and detectable.~%bool                                    is_valid~%~%# Flag that evaluates to true when an object satisfies frame alignment and~%# collision constraints.~%bool                                    is_pickable~%~%# Flag that evaluates to true when an object satisfies fitting, reliability and~%# size constraints.~%bool                                    is_detectable~%~%# List of strings describing main detection status for invalid detections~%# (e.g. ERROR, INVALID, UNPICKABLE).~%# See CATEGORY strings in StatusXxx.msg files for available categories.~%# The list is empty in case of a valid detection.~%string[]                                categories~%~%# List of substatus identifiers providing detail information for each of the~%# above categories. There is one substatus per category.~%# The list is empty in case of a valid detection.~%SubStatus[]                             substatuses~%~%================================================================================~%MSG: im_pickit_msgs/ObjectModel~%# Copyright (c) 2017, Pick-it NV.~%# All rights reserved.~%~%# Definition of different object models used for registration, reliability score calculation and more.~%~%# Unspecified~%uint8 NONE          = 0~%~%# 2D models:~%uint8 SQUARE        = 21~%uint8 RECTANGLE     = 22~%uint8 CIRCLE        = 23~%uint8 ELLIPSE       = 24~%~%# 3D models:~%uint8 CYLINDER      = 32~%uint8 SPHERE        = 33~%uint8 POINT_CLOUD   = 35  # Object model given as point cloud (Pickit-Teach).~%~%# Other models:~%uint8 BLOB          = 50  # Object without specified shape -> No object fitting is performed.~%~%# Models of internal use only:~%uint8 CLUSTER       = 250~%~%uint8 type  # Model type, takes one of the above defined models types as value.~%~%================================================================================~%MSG: im_pickit_msgs/Reliability~%## Contains all parameters describing reliability of detected object~%## Values expressed as confidence levels ranging from 0.0 to 1.0~%~%## Ratio of inlier points close to the border of the \"Intermodalics hole\" and~%## all points of the \"Intermodalics hole\".~%ReliabilityValue scene_coverage_2d~%~%## Ratio of inlier points to all points in the cluster.~%ReliabilityValue scene_coverage_3d~%~%### TODO(@wannesvanloock): Add description pls.~%ReliabilityValue model_contour_coverage_2d~%### TODO(@wannesvanloock): Add description pls.~%ReliabilityValue model_surface_coverage_2d~%~%## 3D reliability of the matched model~%ReliabilityValue model_coverage_3d~%~%================================================================================~%MSG: im_pickit_msgs/ReliabilityValue~%float64 value~%float64 required_value~%~%# mostly we work with lower limits so usually this is false~%bool has_upper_limit     ~%================================================================================~%MSG: im_pickit_msgs/SubStatus~%# Rejected object substatus:~%#  - StatusUnpickable (orange)~%#  - StatusInvalid (red)~%#  - StatusDiscarded (no marker)~%~%uint16 substatus~%string detail~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_to_camera_tf))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_to_reference_tf))
     8
     1
     2
     8
     8
     2
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectArray
    (cl:cons ':header (header msg))
    (cl:cons ':content (content msg))
    (cl:cons ':encoder_stamp (encoder_stamp msg))
    (cl:cons ':robot_to_camera_tf (robot_to_camera_tf msg))
    (cl:cons ':camera_to_reference_tf (camera_to_reference_tf msg))
    (cl:cons ':cloud_capturing_duration (cloud_capturing_duration msg))
    (cl:cons ':clustering_method (clustering_method msg))
    (cl:cons ':n_rejected_clusters (n_rejected_clusters msg))
    (cl:cons ':clustering_duration (clustering_duration msg))
    (cl:cons ':calculation_time (calculation_time msg))
    (cl:cons ':n_valid_objects (n_valid_objects msg))
    (cl:cons ':n_rejected_objects (n_rejected_objects msg))
    (cl:cons ':objects (objects msg))
))
