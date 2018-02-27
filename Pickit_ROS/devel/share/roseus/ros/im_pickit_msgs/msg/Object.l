;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::Object)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'Object (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::OBJECT")
  (make-package "IM_PICKIT_MSGS::OBJECT"))

(in-package "ROS")
;;//! \htmlinclude Object.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass im_pickit_msgs::Object
  :super ros::object
  :slots (_index _object_tf _object_pick_tf _model _n_points _dimensions _reliability _is_valid _is_pickable _is_detectable _categories _substatuses ))

(defmethod im_pickit_msgs::Object
  (:init
   (&key
    ((:index __index) 0)
    ((:object_tf __object_tf) (instance geometry_msgs::TransformStamped :init))
    ((:object_pick_tf __object_pick_tf) (instance geometry_msgs::TransformStamped :init))
    ((:model __model) (instance im_pickit_msgs::ObjectModel :init))
    ((:n_points __n_points) 0)
    ((:dimensions __dimensions) (instance geometry_msgs::Vector3 :init))
    ((:reliability __reliability) (instance im_pickit_msgs::Reliability :init))
    ((:is_valid __is_valid) nil)
    ((:is_pickable __is_pickable) nil)
    ((:is_detectable __is_detectable) nil)
    ((:categories __categories) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:substatuses __substatuses) (let (r) (dotimes (i 0) (push (instance im_pickit_msgs::SubStatus :init) r)) r))
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _object_tf __object_tf)
   (setq _object_pick_tf __object_pick_tf)
   (setq _model __model)
   (setq _n_points (round __n_points))
   (setq _dimensions __dimensions)
   (setq _reliability __reliability)
   (setq _is_valid __is_valid)
   (setq _is_pickable __is_pickable)
   (setq _is_detectable __is_detectable)
   (setq _categories __categories)
   (setq _substatuses __substatuses)
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:object_tf
   (&rest __object_tf)
   (if (keywordp (car __object_tf))
       (send* _object_tf __object_tf)
     (progn
       (if __object_tf (setq _object_tf (car __object_tf)))
       _object_tf)))
  (:object_pick_tf
   (&rest __object_pick_tf)
   (if (keywordp (car __object_pick_tf))
       (send* _object_pick_tf __object_pick_tf)
     (progn
       (if __object_pick_tf (setq _object_pick_tf (car __object_pick_tf)))
       _object_pick_tf)))
  (:model
   (&rest __model)
   (if (keywordp (car __model))
       (send* _model __model)
     (progn
       (if __model (setq _model (car __model)))
       _model)))
  (:n_points
   (&optional __n_points)
   (if __n_points (setq _n_points __n_points)) _n_points)
  (:dimensions
   (&rest __dimensions)
   (if (keywordp (car __dimensions))
       (send* _dimensions __dimensions)
     (progn
       (if __dimensions (setq _dimensions (car __dimensions)))
       _dimensions)))
  (:reliability
   (&rest __reliability)
   (if (keywordp (car __reliability))
       (send* _reliability __reliability)
     (progn
       (if __reliability (setq _reliability (car __reliability)))
       _reliability)))
  (:is_valid
   (&optional __is_valid)
   (if __is_valid (setq _is_valid __is_valid)) _is_valid)
  (:is_pickable
   (&optional __is_pickable)
   (if __is_pickable (setq _is_pickable __is_pickable)) _is_pickable)
  (:is_detectable
   (&optional __is_detectable)
   (if __is_detectable (setq _is_detectable __is_detectable)) _is_detectable)
  (:categories
   (&optional __categories)
   (if __categories (setq _categories __categories)) _categories)
  (:substatuses
   (&rest __substatuses)
   (if (keywordp (car __substatuses))
       (send* _substatuses __substatuses)
     (progn
       (if __substatuses (setq _substatuses (car __substatuses)))
       _substatuses)))
  (:serialization-length
   ()
   (+
    ;; uint16 _index
    2
    ;; geometry_msgs/TransformStamped _object_tf
    (send _object_tf :serialization-length)
    ;; geometry_msgs/TransformStamped _object_pick_tf
    (send _object_pick_tf :serialization-length)
    ;; im_pickit_msgs/ObjectModel _model
    (send _model :serialization-length)
    ;; uint16 _n_points
    2
    ;; geometry_msgs/Vector3 _dimensions
    (send _dimensions :serialization-length)
    ;; im_pickit_msgs/Reliability _reliability
    (send _reliability :serialization-length)
    ;; bool _is_valid
    1
    ;; bool _is_pickable
    1
    ;; bool _is_detectable
    1
    ;; string[] _categories
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _categories)) 4
    ;; im_pickit_msgs/SubStatus[] _substatuses
    (apply #'+ (send-all _substatuses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _index
       (write-word _index s)
     ;; geometry_msgs/TransformStamped _object_tf
       (send _object_tf :serialize s)
     ;; geometry_msgs/TransformStamped _object_pick_tf
       (send _object_pick_tf :serialize s)
     ;; im_pickit_msgs/ObjectModel _model
       (send _model :serialize s)
     ;; uint16 _n_points
       (write-word _n_points s)
     ;; geometry_msgs/Vector3 _dimensions
       (send _dimensions :serialize s)
     ;; im_pickit_msgs/Reliability _reliability
       (send _reliability :serialize s)
     ;; bool _is_valid
       (if _is_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_pickable
       (if _is_pickable (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_detectable
       (if _is_detectable (write-byte -1 s) (write-byte 0 s))
     ;; string[] _categories
     (write-long (length _categories) s)
     (dolist (elem _categories)
       (write-long (length elem) s) (princ elem s)
       )
     ;; im_pickit_msgs/SubStatus[] _substatuses
     (write-long (length _substatuses) s)
     (dolist (elem _substatuses)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _index
     (setq _index (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; geometry_msgs/TransformStamped _object_tf
     (send _object_tf :deserialize buf ptr-) (incf ptr- (send _object_tf :serialization-length))
   ;; geometry_msgs/TransformStamped _object_pick_tf
     (send _object_pick_tf :deserialize buf ptr-) (incf ptr- (send _object_pick_tf :serialization-length))
   ;; im_pickit_msgs/ObjectModel _model
     (send _model :deserialize buf ptr-) (incf ptr- (send _model :serialization-length))
   ;; uint16 _n_points
     (setq _n_points (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; geometry_msgs/Vector3 _dimensions
     (send _dimensions :deserialize buf ptr-) (incf ptr- (send _dimensions :serialization-length))
   ;; im_pickit_msgs/Reliability _reliability
     (send _reliability :deserialize buf ptr-) (incf ptr- (send _reliability :serialization-length))
   ;; bool _is_valid
     (setq _is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_pickable
     (setq _is_pickable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_detectable
     (setq _is_detectable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string[] _categories
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _categories (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _categories i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; im_pickit_msgs/SubStatus[] _substatuses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _substatuses (let (r) (dotimes (i n) (push (instance im_pickit_msgs::SubStatus :init) r)) r))
     (dolist (elem- _substatuses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get im_pickit_msgs::Object :md5sum-) "f2b8ba1b2df980f0868c9ec736119a65")
(setf (get im_pickit_msgs::Object :datatype-) "im_pickit_msgs/Object")
(setf (get im_pickit_msgs::Object :definition-)
      "## Copyright Intermodalics 2016
## This message contains all descriptive data for one object found by Pick-it ##

# Object index in list associated to a single detection run.
uint16                                  index

# Object frame expressed with respect to a frame.
geometry_msgs/TransformStamped          object_tf

# Object pick frame expressed with respect to a frame.
geometry_msgs/TransformStamped          object_pick_tf

# Object model used for registration, reliability score calculation and more.
ObjectModel                             model

# Number of scene points verifying the object model.
uint16                                  n_points

# Object dimensions. The contents of the x, y and z elements depend on the
# object type:
#
#  |   Type      |    X     |    Y     |    Z     |
#  |-------------|----------|----------|----------|
#  | CYLINDER    | length   | diameter | diameter |
#  | SPHERE      | diameter | diameter | diameter |
#  | RECTANGLE   | length   | width    |    0     |
#  | SQUARE      | length   | length   |    0     |
#  | ELLIPSE     | length   | width    |    0     |
#  | CIRCLE      | diameter | diameter |    0     |
#  | POINT_CLOUD | bbox X   | bbox Y   | bbox Z   |
#  | BLOB        | bbox X   | bbox Y   | bbox Z   |
#
# where 'bbox X' means the span of the object's bounding box along the X-axis.
geometry_msgs/Vector3                   dimensions

# Contains scoring metrics used to quantify the goodness of a detection.
Reliability                             reliability

# NOTE: There is currently an inconsistency between terms used in the
#       back-end vs. the front-end. The following table summarizes them to
#       prevent confusion:
#
#       BACK-END flag  maps to ->   FRONT-END detection grid column
#
#       is_pickable    maps to ->   Pickable
#       is_detectable  maps to ->   Valid
#       is_valid       maps to ->   <None>
#
#       Notice in particular how the is_valid back-end flag and the Valid
#       front-end detection grid column have different meanings.

# Flag that evaluates to true when an object is both pickable and detectable.
bool                                    is_valid

# Flag that evaluates to true when an object satisfies frame alignment and
# collision constraints.
bool                                    is_pickable

# Flag that evaluates to true when an object satisfies fitting, reliability and
# size constraints.
bool                                    is_detectable

# List of strings describing main detection status for invalid detections
# (e.g. ERROR, INVALID, UNPICKABLE).
# See CATEGORY strings in StatusXxx.msg files for available categories.
# The list is empty in case of a valid detection.
string[]                                categories

# List of substatus identifiers providing detail information for each of the
# above categories. There is one substatus per category.
# The list is empty in case of a valid detection.
SubStatus[]                             substatuses

================================================================================
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href=\"http://wiki.ros.org/tf\">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: im_pickit_msgs/ObjectModel
# Copyright (c) 2017, Pick-it NV.
# All rights reserved.

# Definition of different object models used for registration, reliability score calculation and more.

# Unspecified
uint8 NONE          = 0

# 2D models:
uint8 SQUARE        = 21
uint8 RECTANGLE     = 22
uint8 CIRCLE        = 23
uint8 ELLIPSE       = 24

# 3D models:
uint8 CYLINDER      = 32
uint8 SPHERE        = 33
uint8 POINT_CLOUD   = 35  # Object model given as point cloud (Pickit-Teach).

# Other models:
uint8 BLOB          = 50  # Object without specified shape -> No object fitting is performed.

# Models of internal use only:
uint8 CLUSTER       = 250

uint8 type  # Model type, takes one of the above defined models types as value.

================================================================================
MSG: im_pickit_msgs/Reliability
## Contains all parameters describing reliability of detected object
## Values expressed as confidence levels ranging from 0.0 to 1.0

## Ratio of inlier points close to the border of the \"Intermodalics hole\" and
## all points of the \"Intermodalics hole\".
ReliabilityValue scene_coverage_2d

## Ratio of inlier points to all points in the cluster.
ReliabilityValue scene_coverage_3d

### TODO(@wannesvanloock): Add description pls.
ReliabilityValue model_contour_coverage_2d
### TODO(@wannesvanloock): Add description pls.
ReliabilityValue model_surface_coverage_2d

## 3D reliability of the matched model
ReliabilityValue model_coverage_3d

================================================================================
MSG: im_pickit_msgs/ReliabilityValue
float64 value
float64 required_value

# mostly we work with lower limits so usually this is false
bool has_upper_limit     
================================================================================
MSG: im_pickit_msgs/SubStatus
# Rejected object substatus:
#  - StatusUnpickable (orange)
#  - StatusInvalid (red)
#  - StatusDiscarded (no marker)

uint16 substatus
string detail

")



(provide :im_pickit_msgs/Object "f2b8ba1b2df980f0868c9ec736119a65")


