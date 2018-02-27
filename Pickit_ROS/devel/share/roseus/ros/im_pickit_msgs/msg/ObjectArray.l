;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::ObjectArray)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'ObjectArray (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::OBJECTARRAY")
  (make-package "IM_PICKIT_MSGS::OBJECTARRAY"))

(in-package "ROS")
;;//! \htmlinclude ObjectArray.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*NEW_OBJECT_DETECTION*" (find-package "IM_PICKIT_MSGS::OBJECTARRAY"))
(shadow '*NEW_OBJECT_DETECTION* (find-package "IM_PICKIT_MSGS::OBJECTARRAY"))
(defconstant im_pickit_msgs::ObjectArray::*NEW_OBJECT_DETECTION* 2)
(intern "*RESET*" (find-package "IM_PICKIT_MSGS::OBJECTARRAY"))
(shadow '*RESET* (find-package "IM_PICKIT_MSGS::OBJECTARRAY"))
(defconstant im_pickit_msgs::ObjectArray::*RESET* 0)
(intern "*NO_CLUSTERING*" (find-package "IM_PICKIT_MSGS::OBJECTARRAY"))
(shadow '*NO_CLUSTERING* (find-package "IM_PICKIT_MSGS::OBJECTARRAY"))
(defconstant im_pickit_msgs::ObjectArray::*NO_CLUSTERING* 10)
(intern "*DISTANCE_BASED_CLUSTERING*" (find-package "IM_PICKIT_MSGS::OBJECTARRAY"))
(shadow '*DISTANCE_BASED_CLUSTERING* (find-package "IM_PICKIT_MSGS::OBJECTARRAY"))
(defconstant im_pickit_msgs::ObjectArray::*DISTANCE_BASED_CLUSTERING* 11)
(intern "*NORMAL_BASED_CLUSTERING*" (find-package "IM_PICKIT_MSGS::OBJECTARRAY"))
(shadow '*NORMAL_BASED_CLUSTERING* (find-package "IM_PICKIT_MSGS::OBJECTARRAY"))
(defconstant im_pickit_msgs::ObjectArray::*NORMAL_BASED_CLUSTERING* 12)
(defclass im_pickit_msgs::ObjectArray
  :super ros::object
  :slots (_header _content _encoder_stamp _robot_to_camera_tf _camera_to_reference_tf _cloud_capturing_duration _clustering_method _n_rejected_clusters _clustering_duration _calculation_time _n_valid_objects _n_rejected_objects _objects ))

(defmethod im_pickit_msgs::ObjectArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:content __content) 0)
    ((:encoder_stamp __encoder_stamp) 0)
    ((:robot_to_camera_tf __robot_to_camera_tf) (instance geometry_msgs::TransformStamped :init))
    ((:camera_to_reference_tf __camera_to_reference_tf) (instance geometry_msgs::TransformStamped :init))
    ((:cloud_capturing_duration __cloud_capturing_duration) 0.0)
    ((:clustering_method __clustering_method) 0)
    ((:n_rejected_clusters __n_rejected_clusters) 0)
    ((:clustering_duration __clustering_duration) 0.0)
    ((:calculation_time __calculation_time) 0.0)
    ((:n_valid_objects __n_valid_objects) 0)
    ((:n_rejected_objects __n_rejected_objects) 0)
    ((:objects __objects) (let (r) (dotimes (i 0) (push (instance im_pickit_msgs::Object :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _content (round __content))
   (setq _encoder_stamp (round __encoder_stamp))
   (setq _robot_to_camera_tf __robot_to_camera_tf)
   (setq _camera_to_reference_tf __camera_to_reference_tf)
   (setq _cloud_capturing_duration (float __cloud_capturing_duration))
   (setq _clustering_method (round __clustering_method))
   (setq _n_rejected_clusters (round __n_rejected_clusters))
   (setq _clustering_duration (float __clustering_duration))
   (setq _calculation_time (float __calculation_time))
   (setq _n_valid_objects (round __n_valid_objects))
   (setq _n_rejected_objects (round __n_rejected_objects))
   (setq _objects __objects)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:content
   (&optional __content)
   (if __content (setq _content __content)) _content)
  (:encoder_stamp
   (&optional __encoder_stamp)
   (if __encoder_stamp (setq _encoder_stamp __encoder_stamp)) _encoder_stamp)
  (:robot_to_camera_tf
   (&rest __robot_to_camera_tf)
   (if (keywordp (car __robot_to_camera_tf))
       (send* _robot_to_camera_tf __robot_to_camera_tf)
     (progn
       (if __robot_to_camera_tf (setq _robot_to_camera_tf (car __robot_to_camera_tf)))
       _robot_to_camera_tf)))
  (:camera_to_reference_tf
   (&rest __camera_to_reference_tf)
   (if (keywordp (car __camera_to_reference_tf))
       (send* _camera_to_reference_tf __camera_to_reference_tf)
     (progn
       (if __camera_to_reference_tf (setq _camera_to_reference_tf (car __camera_to_reference_tf)))
       _camera_to_reference_tf)))
  (:cloud_capturing_duration
   (&optional __cloud_capturing_duration)
   (if __cloud_capturing_duration (setq _cloud_capturing_duration __cloud_capturing_duration)) _cloud_capturing_duration)
  (:clustering_method
   (&optional __clustering_method)
   (if __clustering_method (setq _clustering_method __clustering_method)) _clustering_method)
  (:n_rejected_clusters
   (&optional __n_rejected_clusters)
   (if __n_rejected_clusters (setq _n_rejected_clusters __n_rejected_clusters)) _n_rejected_clusters)
  (:clustering_duration
   (&optional __clustering_duration)
   (if __clustering_duration (setq _clustering_duration __clustering_duration)) _clustering_duration)
  (:calculation_time
   (&optional __calculation_time)
   (if __calculation_time (setq _calculation_time __calculation_time)) _calculation_time)
  (:n_valid_objects
   (&optional __n_valid_objects)
   (if __n_valid_objects (setq _n_valid_objects __n_valid_objects)) _n_valid_objects)
  (:n_rejected_objects
   (&optional __n_rejected_objects)
   (if __n_rejected_objects (setq _n_rejected_objects __n_rejected_objects)) _n_rejected_objects)
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _content
    1
    ;; uint32 _encoder_stamp
    4
    ;; geometry_msgs/TransformStamped _robot_to_camera_tf
    (send _robot_to_camera_tf :serialization-length)
    ;; geometry_msgs/TransformStamped _camera_to_reference_tf
    (send _camera_to_reference_tf :serialization-length)
    ;; float64 _cloud_capturing_duration
    8
    ;; uint8 _clustering_method
    1
    ;; uint16 _n_rejected_clusters
    2
    ;; float64 _clustering_duration
    8
    ;; float64 _calculation_time
    8
    ;; uint16 _n_valid_objects
    2
    ;; uint16 _n_rejected_objects
    2
    ;; im_pickit_msgs/Object[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _content
       (write-byte _content s)
     ;; uint32 _encoder_stamp
       (write-long _encoder_stamp s)
     ;; geometry_msgs/TransformStamped _robot_to_camera_tf
       (send _robot_to_camera_tf :serialize s)
     ;; geometry_msgs/TransformStamped _camera_to_reference_tf
       (send _camera_to_reference_tf :serialize s)
     ;; float64 _cloud_capturing_duration
       (sys::poke _cloud_capturing_duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _clustering_method
       (write-byte _clustering_method s)
     ;; uint16 _n_rejected_clusters
       (write-word _n_rejected_clusters s)
     ;; float64 _clustering_duration
       (sys::poke _clustering_duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _calculation_time
       (sys::poke _calculation_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16 _n_valid_objects
       (write-word _n_valid_objects s)
     ;; uint16 _n_rejected_objects
       (write-word _n_rejected_objects s)
     ;; im_pickit_msgs/Object[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _content
     (setq _content (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _encoder_stamp
     (setq _encoder_stamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/TransformStamped _robot_to_camera_tf
     (send _robot_to_camera_tf :deserialize buf ptr-) (incf ptr- (send _robot_to_camera_tf :serialization-length))
   ;; geometry_msgs/TransformStamped _camera_to_reference_tf
     (send _camera_to_reference_tf :deserialize buf ptr-) (incf ptr- (send _camera_to_reference_tf :serialization-length))
   ;; float64 _cloud_capturing_duration
     (setq _cloud_capturing_duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _clustering_method
     (setq _clustering_method (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _n_rejected_clusters
     (setq _n_rejected_clusters (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _clustering_duration
     (setq _clustering_duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _calculation_time
     (setq _calculation_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16 _n_valid_objects
     (setq _n_valid_objects (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _n_rejected_objects
     (setq _n_rejected_objects (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; im_pickit_msgs/Object[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance im_pickit_msgs::Object :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get im_pickit_msgs::ObjectArray :md5sum-) "204d3d08d5381f80541e760fbffe322f")
(setf (get im_pickit_msgs::ObjectArray :datatype-) "im_pickit_msgs/ObjectArray")
(setf (get im_pickit_msgs::ObjectArray :definition-)
      "## Copyright Intermodalics 2014
## This message contains all objects found by the last Pick-it run ##

# Origin of the msg content
uint8 NEW_OBJECT_DETECTION = 2
uint8 RESET = 0

# Clustering methods
uint8 NO_CLUSTERING = 10
uint8 DISTANCE_BASED_CLUSTERING = 11
uint8 NORMAL_BASED_CLUSTERING = 12

std_msgs/Header                 header
uint8                           content
uint32                          encoder_stamp
geometry_msgs/TransformStamped  robot_to_camera_tf
geometry_msgs/TransformStamped  camera_to_reference_tf

float64                         cloud_capturing_duration

uint8                           clustering_method
uint16                          n_rejected_clusters
float64                         clustering_duration

float64                         calculation_time # Total object detection time

uint16                          n_valid_objects
uint16                          n_rejected_objects

im_pickit_msgs/Object[]         objects

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
MSG: im_pickit_msgs/Object
## Copyright Intermodalics 2016
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



(provide :im_pickit_msgs/ObjectArray "204d3d08d5381f80541e760fbffe322f")


