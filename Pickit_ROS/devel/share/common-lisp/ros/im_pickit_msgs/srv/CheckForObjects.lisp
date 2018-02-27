; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-srv)


;//! \htmlinclude CheckForObjects-request.msg.html

(cl:defclass <CheckForObjects-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CheckForObjects-request (<CheckForObjects-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckForObjects-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckForObjects-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-srv:<CheckForObjects-request> is deprecated: use im_pickit_msgs-srv:CheckForObjects-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckForObjects-request>) ostream)
  "Serializes a message object of type '<CheckForObjects-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckForObjects-request>) istream)
  "Deserializes a message object of type '<CheckForObjects-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckForObjects-request>)))
  "Returns string type for a service object of type '<CheckForObjects-request>"
  "im_pickit_msgs/CheckForObjectsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckForObjects-request)))
  "Returns string type for a service object of type 'CheckForObjects-request"
  "im_pickit_msgs/CheckForObjectsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckForObjects-request>)))
  "Returns md5sum for a message object of type '<CheckForObjects-request>"
  "991a96571e9f4e20d906edfcd9ce097d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckForObjects-request)))
  "Returns md5sum for a message object of type 'CheckForObjects-request"
  "991a96571e9f4e20d906edfcd9ce097d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckForObjects-request>)))
  "Returns full string definition for message of type '<CheckForObjects-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckForObjects-request)))
  "Returns full string definition for message of type 'CheckForObjects-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckForObjects-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckForObjects-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckForObjects-request
))
;//! \htmlinclude CheckForObjects-response.msg.html

(cl:defclass <CheckForObjects-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (objects
    :reader objects
    :initarg :objects
    :type im_pickit_msgs-msg:ObjectArray
    :initform (cl:make-instance 'im_pickit_msgs-msg:ObjectArray)))
)

(cl:defclass CheckForObjects-response (<CheckForObjects-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckForObjects-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckForObjects-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-srv:<CheckForObjects-response> is deprecated: use im_pickit_msgs-srv:CheckForObjects-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CheckForObjects-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-srv:success-val is deprecated.  Use im_pickit_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <CheckForObjects-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-srv:objects-val is deprecated.  Use im_pickit_msgs-srv:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckForObjects-response>) ostream)
  "Serializes a message object of type '<CheckForObjects-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'objects) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckForObjects-response>) istream)
  "Deserializes a message object of type '<CheckForObjects-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'objects) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckForObjects-response>)))
  "Returns string type for a service object of type '<CheckForObjects-response>"
  "im_pickit_msgs/CheckForObjectsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckForObjects-response)))
  "Returns string type for a service object of type 'CheckForObjects-response"
  "im_pickit_msgs/CheckForObjectsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckForObjects-response>)))
  "Returns md5sum for a message object of type '<CheckForObjects-response>"
  "991a96571e9f4e20d906edfcd9ce097d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckForObjects-response)))
  "Returns md5sum for a message object of type 'CheckForObjects-response"
  "991a96571e9f4e20d906edfcd9ce097d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckForObjects-response>)))
  "Returns full string definition for message of type '<CheckForObjects-response>"
  (cl:format cl:nil "bool           success~%ObjectArray    objects~%~%~%================================================================================~%MSG: im_pickit_msgs/ObjectArray~%## Copyright Intermodalics 2014~%## This message contains all objects found by the last Pick-it run ##~%~%# Origin of the msg content~%uint8 NEW_OBJECT_DETECTION = 2~%uint8 RESET = 0~%~%# Clustering methods~%uint8 NO_CLUSTERING = 10~%uint8 DISTANCE_BASED_CLUSTERING = 11~%uint8 NORMAL_BASED_CLUSTERING = 12~%~%std_msgs/Header                 header~%uint8                           content~%uint32                          encoder_stamp~%geometry_msgs/TransformStamped  robot_to_camera_tf~%geometry_msgs/TransformStamped  camera_to_reference_tf~%~%float64                         cloud_capturing_duration~%~%uint8                           clustering_method~%uint16                          n_rejected_clusters~%float64                         clustering_duration~%~%float64                         calculation_time # Total object detection time~%~%uint16                          n_valid_objects~%uint16                          n_rejected_objects~%~%im_pickit_msgs/Object[]         objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: im_pickit_msgs/Object~%## Copyright Intermodalics 2016~%## This message contains all descriptive data for one object found by Pick-it ##~%~%# Object index in list associated to a single detection run.~%uint16                                  index~%~%# Object frame expressed with respect to a frame.~%geometry_msgs/TransformStamped          object_tf~%~%# Object pick frame expressed with respect to a frame.~%geometry_msgs/TransformStamped          object_pick_tf~%~%# Object model used for registration, reliability score calculation and more.~%ObjectModel                             model~%~%# Number of scene points verifying the object model.~%uint16                                  n_points~%~%# Object dimensions. The contents of the x, y and z elements depend on the~%# object type:~%#~%#  |   Type      |    X     |    Y     |    Z     |~%#  |-------------|----------|----------|----------|~%#  | CYLINDER    | length   | diameter | diameter |~%#  | SPHERE      | diameter | diameter | diameter |~%#  | RECTANGLE   | length   | width    |    0     |~%#  | SQUARE      | length   | length   |    0     |~%#  | ELLIPSE     | length   | width    |    0     |~%#  | CIRCLE      | diameter | diameter |    0     |~%#  | POINT_CLOUD | bbox X   | bbox Y   | bbox Z   |~%#  | BLOB        | bbox X   | bbox Y   | bbox Z   |~%#~%# where 'bbox X' means the span of the object's bounding box along the X-axis.~%geometry_msgs/Vector3                   dimensions~%~%# Contains scoring metrics used to quantify the goodness of a detection.~%Reliability                             reliability~%~%# NOTE: There is currently an inconsistency between terms used in the~%#       back-end vs. the front-end. The following table summarizes them to~%#       prevent confusion:~%#~%#       BACK-END flag  maps to ->   FRONT-END detection grid column~%#~%#       is_pickable    maps to ->   Pickable~%#       is_detectable  maps to ->   Valid~%#       is_valid       maps to ->   <None>~%#~%#       Notice in particular how the is_valid back-end flag and the Valid~%#       front-end detection grid column have different meanings.~%~%# Flag that evaluates to true when an object is both pickable and detectable.~%bool                                    is_valid~%~%# Flag that evaluates to true when an object satisfies frame alignment and~%# collision constraints.~%bool                                    is_pickable~%~%# Flag that evaluates to true when an object satisfies fitting, reliability and~%# size constraints.~%bool                                    is_detectable~%~%# List of strings describing main detection status for invalid detections~%# (e.g. ERROR, INVALID, UNPICKABLE).~%# See CATEGORY strings in StatusXxx.msg files for available categories.~%# The list is empty in case of a valid detection.~%string[]                                categories~%~%# List of substatus identifiers providing detail information for each of the~%# above categories. There is one substatus per category.~%# The list is empty in case of a valid detection.~%SubStatus[]                             substatuses~%~%================================================================================~%MSG: im_pickit_msgs/ObjectModel~%# Copyright (c) 2017, Pick-it NV.~%# All rights reserved.~%~%# Definition of different object models used for registration, reliability score calculation and more.~%~%# Unspecified~%uint8 NONE          = 0~%~%# 2D models:~%uint8 SQUARE        = 21~%uint8 RECTANGLE     = 22~%uint8 CIRCLE        = 23~%uint8 ELLIPSE       = 24~%~%# 3D models:~%uint8 CYLINDER      = 32~%uint8 SPHERE        = 33~%uint8 POINT_CLOUD   = 35  # Object model given as point cloud (Pickit-Teach).~%~%# Other models:~%uint8 BLOB          = 50  # Object without specified shape -> No object fitting is performed.~%~%# Models of internal use only:~%uint8 CLUSTER       = 250~%~%uint8 type  # Model type, takes one of the above defined models types as value.~%~%================================================================================~%MSG: im_pickit_msgs/Reliability~%## Contains all parameters describing reliability of detected object~%## Values expressed as confidence levels ranging from 0.0 to 1.0~%~%## Ratio of inlier points close to the border of the \"Intermodalics hole\" and~%## all points of the \"Intermodalics hole\".~%ReliabilityValue scene_coverage_2d~%~%## Ratio of inlier points to all points in the cluster.~%ReliabilityValue scene_coverage_3d~%~%### TODO(@wannesvanloock): Add description pls.~%ReliabilityValue model_contour_coverage_2d~%### TODO(@wannesvanloock): Add description pls.~%ReliabilityValue model_surface_coverage_2d~%~%## 3D reliability of the matched model~%ReliabilityValue model_coverage_3d~%~%================================================================================~%MSG: im_pickit_msgs/ReliabilityValue~%float64 value~%float64 required_value~%~%# mostly we work with lower limits so usually this is false~%bool has_upper_limit     ~%================================================================================~%MSG: im_pickit_msgs/SubStatus~%# Rejected object substatus:~%#  - StatusUnpickable (orange)~%#  - StatusInvalid (red)~%#  - StatusDiscarded (no marker)~%~%uint16 substatus~%string detail~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckForObjects-response)))
  "Returns full string definition for message of type 'CheckForObjects-response"
  (cl:format cl:nil "bool           success~%ObjectArray    objects~%~%~%================================================================================~%MSG: im_pickit_msgs/ObjectArray~%## Copyright Intermodalics 2014~%## This message contains all objects found by the last Pick-it run ##~%~%# Origin of the msg content~%uint8 NEW_OBJECT_DETECTION = 2~%uint8 RESET = 0~%~%# Clustering methods~%uint8 NO_CLUSTERING = 10~%uint8 DISTANCE_BASED_CLUSTERING = 11~%uint8 NORMAL_BASED_CLUSTERING = 12~%~%std_msgs/Header                 header~%uint8                           content~%uint32                          encoder_stamp~%geometry_msgs/TransformStamped  robot_to_camera_tf~%geometry_msgs/TransformStamped  camera_to_reference_tf~%~%float64                         cloud_capturing_duration~%~%uint8                           clustering_method~%uint16                          n_rejected_clusters~%float64                         clustering_duration~%~%float64                         calculation_time # Total object detection time~%~%uint16                          n_valid_objects~%uint16                          n_rejected_objects~%~%im_pickit_msgs/Object[]         objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: im_pickit_msgs/Object~%## Copyright Intermodalics 2016~%## This message contains all descriptive data for one object found by Pick-it ##~%~%# Object index in list associated to a single detection run.~%uint16                                  index~%~%# Object frame expressed with respect to a frame.~%geometry_msgs/TransformStamped          object_tf~%~%# Object pick frame expressed with respect to a frame.~%geometry_msgs/TransformStamped          object_pick_tf~%~%# Object model used for registration, reliability score calculation and more.~%ObjectModel                             model~%~%# Number of scene points verifying the object model.~%uint16                                  n_points~%~%# Object dimensions. The contents of the x, y and z elements depend on the~%# object type:~%#~%#  |   Type      |    X     |    Y     |    Z     |~%#  |-------------|----------|----------|----------|~%#  | CYLINDER    | length   | diameter | diameter |~%#  | SPHERE      | diameter | diameter | diameter |~%#  | RECTANGLE   | length   | width    |    0     |~%#  | SQUARE      | length   | length   |    0     |~%#  | ELLIPSE     | length   | width    |    0     |~%#  | CIRCLE      | diameter | diameter |    0     |~%#  | POINT_CLOUD | bbox X   | bbox Y   | bbox Z   |~%#  | BLOB        | bbox X   | bbox Y   | bbox Z   |~%#~%# where 'bbox X' means the span of the object's bounding box along the X-axis.~%geometry_msgs/Vector3                   dimensions~%~%# Contains scoring metrics used to quantify the goodness of a detection.~%Reliability                             reliability~%~%# NOTE: There is currently an inconsistency between terms used in the~%#       back-end vs. the front-end. The following table summarizes them to~%#       prevent confusion:~%#~%#       BACK-END flag  maps to ->   FRONT-END detection grid column~%#~%#       is_pickable    maps to ->   Pickable~%#       is_detectable  maps to ->   Valid~%#       is_valid       maps to ->   <None>~%#~%#       Notice in particular how the is_valid back-end flag and the Valid~%#       front-end detection grid column have different meanings.~%~%# Flag that evaluates to true when an object is both pickable and detectable.~%bool                                    is_valid~%~%# Flag that evaluates to true when an object satisfies frame alignment and~%# collision constraints.~%bool                                    is_pickable~%~%# Flag that evaluates to true when an object satisfies fitting, reliability and~%# size constraints.~%bool                                    is_detectable~%~%# List of strings describing main detection status for invalid detections~%# (e.g. ERROR, INVALID, UNPICKABLE).~%# See CATEGORY strings in StatusXxx.msg files for available categories.~%# The list is empty in case of a valid detection.~%string[]                                categories~%~%# List of substatus identifiers providing detail information for each of the~%# above categories. There is one substatus per category.~%# The list is empty in case of a valid detection.~%SubStatus[]                             substatuses~%~%================================================================================~%MSG: im_pickit_msgs/ObjectModel~%# Copyright (c) 2017, Pick-it NV.~%# All rights reserved.~%~%# Definition of different object models used for registration, reliability score calculation and more.~%~%# Unspecified~%uint8 NONE          = 0~%~%# 2D models:~%uint8 SQUARE        = 21~%uint8 RECTANGLE     = 22~%uint8 CIRCLE        = 23~%uint8 ELLIPSE       = 24~%~%# 3D models:~%uint8 CYLINDER      = 32~%uint8 SPHERE        = 33~%uint8 POINT_CLOUD   = 35  # Object model given as point cloud (Pickit-Teach).~%~%# Other models:~%uint8 BLOB          = 50  # Object without specified shape -> No object fitting is performed.~%~%# Models of internal use only:~%uint8 CLUSTER       = 250~%~%uint8 type  # Model type, takes one of the above defined models types as value.~%~%================================================================================~%MSG: im_pickit_msgs/Reliability~%## Contains all parameters describing reliability of detected object~%## Values expressed as confidence levels ranging from 0.0 to 1.0~%~%## Ratio of inlier points close to the border of the \"Intermodalics hole\" and~%## all points of the \"Intermodalics hole\".~%ReliabilityValue scene_coverage_2d~%~%## Ratio of inlier points to all points in the cluster.~%ReliabilityValue scene_coverage_3d~%~%### TODO(@wannesvanloock): Add description pls.~%ReliabilityValue model_contour_coverage_2d~%### TODO(@wannesvanloock): Add description pls.~%ReliabilityValue model_surface_coverage_2d~%~%## 3D reliability of the matched model~%ReliabilityValue model_coverage_3d~%~%================================================================================~%MSG: im_pickit_msgs/ReliabilityValue~%float64 value~%float64 required_value~%~%# mostly we work with lower limits so usually this is false~%bool has_upper_limit     ~%================================================================================~%MSG: im_pickit_msgs/SubStatus~%# Rejected object substatus:~%#  - StatusUnpickable (orange)~%#  - StatusInvalid (red)~%#  - StatusDiscarded (no marker)~%~%uint16 substatus~%string detail~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckForObjects-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'objects))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckForObjects-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckForObjects-response
    (cl:cons ':success (success msg))
    (cl:cons ':objects (objects msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CheckForObjects)))
  'CheckForObjects-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CheckForObjects)))
  'CheckForObjects-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckForObjects)))
  "Returns string type for a service object of type '<CheckForObjects>"
  "im_pickit_msgs/CheckForObjects")