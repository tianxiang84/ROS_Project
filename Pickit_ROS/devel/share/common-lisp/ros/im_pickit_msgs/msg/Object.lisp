; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-msg)


;//! \htmlinclude Object.msg.html

(cl:defclass <Object> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:fixnum
    :initform 0)
   (object_tf
    :reader object_tf
    :initarg :object_tf
    :type geometry_msgs-msg:TransformStamped
    :initform (cl:make-instance 'geometry_msgs-msg:TransformStamped))
   (object_pick_tf
    :reader object_pick_tf
    :initarg :object_pick_tf
    :type geometry_msgs-msg:TransformStamped
    :initform (cl:make-instance 'geometry_msgs-msg:TransformStamped))
   (model
    :reader model
    :initarg :model
    :type im_pickit_msgs-msg:ObjectModel
    :initform (cl:make-instance 'im_pickit_msgs-msg:ObjectModel))
   (n_points
    :reader n_points
    :initarg :n_points
    :type cl:fixnum
    :initform 0)
   (dimensions
    :reader dimensions
    :initarg :dimensions
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (reliability
    :reader reliability
    :initarg :reliability
    :type im_pickit_msgs-msg:Reliability
    :initform (cl:make-instance 'im_pickit_msgs-msg:Reliability))
   (is_valid
    :reader is_valid
    :initarg :is_valid
    :type cl:boolean
    :initform cl:nil)
   (is_pickable
    :reader is_pickable
    :initarg :is_pickable
    :type cl:boolean
    :initform cl:nil)
   (is_detectable
    :reader is_detectable
    :initarg :is_detectable
    :type cl:boolean
    :initform cl:nil)
   (categories
    :reader categories
    :initarg :categories
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (substatuses
    :reader substatuses
    :initarg :substatuses
    :type (cl:vector im_pickit_msgs-msg:SubStatus)
   :initform (cl:make-array 0 :element-type 'im_pickit_msgs-msg:SubStatus :initial-element (cl:make-instance 'im_pickit_msgs-msg:SubStatus))))
)

(cl:defclass Object (<Object>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Object>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Object)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-msg:<Object> is deprecated: use im_pickit_msgs-msg:Object instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:index-val is deprecated.  Use im_pickit_msgs-msg:index instead.")
  (index m))

(cl:ensure-generic-function 'object_tf-val :lambda-list '(m))
(cl:defmethod object_tf-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:object_tf-val is deprecated.  Use im_pickit_msgs-msg:object_tf instead.")
  (object_tf m))

(cl:ensure-generic-function 'object_pick_tf-val :lambda-list '(m))
(cl:defmethod object_pick_tf-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:object_pick_tf-val is deprecated.  Use im_pickit_msgs-msg:object_pick_tf instead.")
  (object_pick_tf m))

(cl:ensure-generic-function 'model-val :lambda-list '(m))
(cl:defmethod model-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:model-val is deprecated.  Use im_pickit_msgs-msg:model instead.")
  (model m))

(cl:ensure-generic-function 'n_points-val :lambda-list '(m))
(cl:defmethod n_points-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:n_points-val is deprecated.  Use im_pickit_msgs-msg:n_points instead.")
  (n_points m))

(cl:ensure-generic-function 'dimensions-val :lambda-list '(m))
(cl:defmethod dimensions-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:dimensions-val is deprecated.  Use im_pickit_msgs-msg:dimensions instead.")
  (dimensions m))

(cl:ensure-generic-function 'reliability-val :lambda-list '(m))
(cl:defmethod reliability-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:reliability-val is deprecated.  Use im_pickit_msgs-msg:reliability instead.")
  (reliability m))

(cl:ensure-generic-function 'is_valid-val :lambda-list '(m))
(cl:defmethod is_valid-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:is_valid-val is deprecated.  Use im_pickit_msgs-msg:is_valid instead.")
  (is_valid m))

(cl:ensure-generic-function 'is_pickable-val :lambda-list '(m))
(cl:defmethod is_pickable-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:is_pickable-val is deprecated.  Use im_pickit_msgs-msg:is_pickable instead.")
  (is_pickable m))

(cl:ensure-generic-function 'is_detectable-val :lambda-list '(m))
(cl:defmethod is_detectable-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:is_detectable-val is deprecated.  Use im_pickit_msgs-msg:is_detectable instead.")
  (is_detectable m))

(cl:ensure-generic-function 'categories-val :lambda-list '(m))
(cl:defmethod categories-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:categories-val is deprecated.  Use im_pickit_msgs-msg:categories instead.")
  (categories m))

(cl:ensure-generic-function 'substatuses-val :lambda-list '(m))
(cl:defmethod substatuses-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:substatuses-val is deprecated.  Use im_pickit_msgs-msg:substatuses instead.")
  (substatuses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Object>) ostream)
  "Serializes a message object of type '<Object>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'index)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object_tf) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object_pick_tf) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'model) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_points)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'n_points)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dimensions) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reliability) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_pickable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_detectable) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'categories))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'categories))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'substatuses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'substatuses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Object>) istream)
  "Deserializes a message object of type '<Object>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'index)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object_tf) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object_pick_tf) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'model) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'n_points)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'n_points)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dimensions) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reliability) istream)
    (cl:setf (cl:slot-value msg 'is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_pickable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_detectable) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'categories) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'categories)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'substatuses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'substatuses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'im_pickit_msgs-msg:SubStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Object>)))
  "Returns string type for a message object of type '<Object>"
  "im_pickit_msgs/Object")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Object)))
  "Returns string type for a message object of type 'Object"
  "im_pickit_msgs/Object")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Object>)))
  "Returns md5sum for a message object of type '<Object>"
  "f2b8ba1b2df980f0868c9ec736119a65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Object)))
  "Returns md5sum for a message object of type 'Object"
  "f2b8ba1b2df980f0868c9ec736119a65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Object>)))
  "Returns full string definition for message of type '<Object>"
  (cl:format cl:nil "## Copyright Intermodalics 2016~%## This message contains all descriptive data for one object found by Pick-it ##~%~%# Object index in list associated to a single detection run.~%uint16                                  index~%~%# Object frame expressed with respect to a frame.~%geometry_msgs/TransformStamped          object_tf~%~%# Object pick frame expressed with respect to a frame.~%geometry_msgs/TransformStamped          object_pick_tf~%~%# Object model used for registration, reliability score calculation and more.~%ObjectModel                             model~%~%# Number of scene points verifying the object model.~%uint16                                  n_points~%~%# Object dimensions. The contents of the x, y and z elements depend on the~%# object type:~%#~%#  |   Type      |    X     |    Y     |    Z     |~%#  |-------------|----------|----------|----------|~%#  | CYLINDER    | length   | diameter | diameter |~%#  | SPHERE      | diameter | diameter | diameter |~%#  | RECTANGLE   | length   | width    |    0     |~%#  | SQUARE      | length   | length   |    0     |~%#  | ELLIPSE     | length   | width    |    0     |~%#  | CIRCLE      | diameter | diameter |    0     |~%#  | POINT_CLOUD | bbox X   | bbox Y   | bbox Z   |~%#  | BLOB        | bbox X   | bbox Y   | bbox Z   |~%#~%# where 'bbox X' means the span of the object's bounding box along the X-axis.~%geometry_msgs/Vector3                   dimensions~%~%# Contains scoring metrics used to quantify the goodness of a detection.~%Reliability                             reliability~%~%# NOTE: There is currently an inconsistency between terms used in the~%#       back-end vs. the front-end. The following table summarizes them to~%#       prevent confusion:~%#~%#       BACK-END flag  maps to ->   FRONT-END detection grid column~%#~%#       is_pickable    maps to ->   Pickable~%#       is_detectable  maps to ->   Valid~%#       is_valid       maps to ->   <None>~%#~%#       Notice in particular how the is_valid back-end flag and the Valid~%#       front-end detection grid column have different meanings.~%~%# Flag that evaluates to true when an object is both pickable and detectable.~%bool                                    is_valid~%~%# Flag that evaluates to true when an object satisfies frame alignment and~%# collision constraints.~%bool                                    is_pickable~%~%# Flag that evaluates to true when an object satisfies fitting, reliability and~%# size constraints.~%bool                                    is_detectable~%~%# List of strings describing main detection status for invalid detections~%# (e.g. ERROR, INVALID, UNPICKABLE).~%# See CATEGORY strings in StatusXxx.msg files for available categories.~%# The list is empty in case of a valid detection.~%string[]                                categories~%~%# List of substatus identifiers providing detail information for each of the~%# above categories. There is one substatus per category.~%# The list is empty in case of a valid detection.~%SubStatus[]                             substatuses~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: im_pickit_msgs/ObjectModel~%# Copyright (c) 2017, Pick-it NV.~%# All rights reserved.~%~%# Definition of different object models used for registration, reliability score calculation and more.~%~%# Unspecified~%uint8 NONE          = 0~%~%# 2D models:~%uint8 SQUARE        = 21~%uint8 RECTANGLE     = 22~%uint8 CIRCLE        = 23~%uint8 ELLIPSE       = 24~%~%# 3D models:~%uint8 CYLINDER      = 32~%uint8 SPHERE        = 33~%uint8 POINT_CLOUD   = 35  # Object model given as point cloud (Pickit-Teach).~%~%# Other models:~%uint8 BLOB          = 50  # Object without specified shape -> No object fitting is performed.~%~%# Models of internal use only:~%uint8 CLUSTER       = 250~%~%uint8 type  # Model type, takes one of the above defined models types as value.~%~%================================================================================~%MSG: im_pickit_msgs/Reliability~%## Contains all parameters describing reliability of detected object~%## Values expressed as confidence levels ranging from 0.0 to 1.0~%~%## Ratio of inlier points close to the border of the \"Intermodalics hole\" and~%## all points of the \"Intermodalics hole\".~%ReliabilityValue scene_coverage_2d~%~%## Ratio of inlier points to all points in the cluster.~%ReliabilityValue scene_coverage_3d~%~%### TODO(@wannesvanloock): Add description pls.~%ReliabilityValue model_contour_coverage_2d~%### TODO(@wannesvanloock): Add description pls.~%ReliabilityValue model_surface_coverage_2d~%~%## 3D reliability of the matched model~%ReliabilityValue model_coverage_3d~%~%================================================================================~%MSG: im_pickit_msgs/ReliabilityValue~%float64 value~%float64 required_value~%~%# mostly we work with lower limits so usually this is false~%bool has_upper_limit     ~%================================================================================~%MSG: im_pickit_msgs/SubStatus~%# Rejected object substatus:~%#  - StatusUnpickable (orange)~%#  - StatusInvalid (red)~%#  - StatusDiscarded (no marker)~%~%uint16 substatus~%string detail~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Object)))
  "Returns full string definition for message of type 'Object"
  (cl:format cl:nil "## Copyright Intermodalics 2016~%## This message contains all descriptive data for one object found by Pick-it ##~%~%# Object index in list associated to a single detection run.~%uint16                                  index~%~%# Object frame expressed with respect to a frame.~%geometry_msgs/TransformStamped          object_tf~%~%# Object pick frame expressed with respect to a frame.~%geometry_msgs/TransformStamped          object_pick_tf~%~%# Object model used for registration, reliability score calculation and more.~%ObjectModel                             model~%~%# Number of scene points verifying the object model.~%uint16                                  n_points~%~%# Object dimensions. The contents of the x, y and z elements depend on the~%# object type:~%#~%#  |   Type      |    X     |    Y     |    Z     |~%#  |-------------|----------|----------|----------|~%#  | CYLINDER    | length   | diameter | diameter |~%#  | SPHERE      | diameter | diameter | diameter |~%#  | RECTANGLE   | length   | width    |    0     |~%#  | SQUARE      | length   | length   |    0     |~%#  | ELLIPSE     | length   | width    |    0     |~%#  | CIRCLE      | diameter | diameter |    0     |~%#  | POINT_CLOUD | bbox X   | bbox Y   | bbox Z   |~%#  | BLOB        | bbox X   | bbox Y   | bbox Z   |~%#~%# where 'bbox X' means the span of the object's bounding box along the X-axis.~%geometry_msgs/Vector3                   dimensions~%~%# Contains scoring metrics used to quantify the goodness of a detection.~%Reliability                             reliability~%~%# NOTE: There is currently an inconsistency between terms used in the~%#       back-end vs. the front-end. The following table summarizes them to~%#       prevent confusion:~%#~%#       BACK-END flag  maps to ->   FRONT-END detection grid column~%#~%#       is_pickable    maps to ->   Pickable~%#       is_detectable  maps to ->   Valid~%#       is_valid       maps to ->   <None>~%#~%#       Notice in particular how the is_valid back-end flag and the Valid~%#       front-end detection grid column have different meanings.~%~%# Flag that evaluates to true when an object is both pickable and detectable.~%bool                                    is_valid~%~%# Flag that evaluates to true when an object satisfies frame alignment and~%# collision constraints.~%bool                                    is_pickable~%~%# Flag that evaluates to true when an object satisfies fitting, reliability and~%# size constraints.~%bool                                    is_detectable~%~%# List of strings describing main detection status for invalid detections~%# (e.g. ERROR, INVALID, UNPICKABLE).~%# See CATEGORY strings in StatusXxx.msg files for available categories.~%# The list is empty in case of a valid detection.~%string[]                                categories~%~%# List of substatus identifiers providing detail information for each of the~%# above categories. There is one substatus per category.~%# The list is empty in case of a valid detection.~%SubStatus[]                             substatuses~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: im_pickit_msgs/ObjectModel~%# Copyright (c) 2017, Pick-it NV.~%# All rights reserved.~%~%# Definition of different object models used for registration, reliability score calculation and more.~%~%# Unspecified~%uint8 NONE          = 0~%~%# 2D models:~%uint8 SQUARE        = 21~%uint8 RECTANGLE     = 22~%uint8 CIRCLE        = 23~%uint8 ELLIPSE       = 24~%~%# 3D models:~%uint8 CYLINDER      = 32~%uint8 SPHERE        = 33~%uint8 POINT_CLOUD   = 35  # Object model given as point cloud (Pickit-Teach).~%~%# Other models:~%uint8 BLOB          = 50  # Object without specified shape -> No object fitting is performed.~%~%# Models of internal use only:~%uint8 CLUSTER       = 250~%~%uint8 type  # Model type, takes one of the above defined models types as value.~%~%================================================================================~%MSG: im_pickit_msgs/Reliability~%## Contains all parameters describing reliability of detected object~%## Values expressed as confidence levels ranging from 0.0 to 1.0~%~%## Ratio of inlier points close to the border of the \"Intermodalics hole\" and~%## all points of the \"Intermodalics hole\".~%ReliabilityValue scene_coverage_2d~%~%## Ratio of inlier points to all points in the cluster.~%ReliabilityValue scene_coverage_3d~%~%### TODO(@wannesvanloock): Add description pls.~%ReliabilityValue model_contour_coverage_2d~%### TODO(@wannesvanloock): Add description pls.~%ReliabilityValue model_surface_coverage_2d~%~%## 3D reliability of the matched model~%ReliabilityValue model_coverage_3d~%~%================================================================================~%MSG: im_pickit_msgs/ReliabilityValue~%float64 value~%float64 required_value~%~%# mostly we work with lower limits so usually this is false~%bool has_upper_limit     ~%================================================================================~%MSG: im_pickit_msgs/SubStatus~%# Rejected object substatus:~%#  - StatusUnpickable (orange)~%#  - StatusInvalid (red)~%#  - StatusDiscarded (no marker)~%~%uint16 substatus~%string detail~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Object>))
  (cl:+ 0
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object_tf))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object_pick_tf))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'model))
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dimensions))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reliability))
     1
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'categories) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'substatuses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Object>))
  "Converts a ROS message object to a list"
  (cl:list 'Object
    (cl:cons ':index (index msg))
    (cl:cons ':object_tf (object_tf msg))
    (cl:cons ':object_pick_tf (object_pick_tf msg))
    (cl:cons ':model (model msg))
    (cl:cons ':n_points (n_points msg))
    (cl:cons ':dimensions (dimensions msg))
    (cl:cons ':reliability (reliability msg))
    (cl:cons ':is_valid (is_valid msg))
    (cl:cons ':is_pickable (is_pickable msg))
    (cl:cons ':is_detectable (is_detectable msg))
    (cl:cons ':categories (categories msg))
    (cl:cons ':substatuses (substatuses msg))
))
