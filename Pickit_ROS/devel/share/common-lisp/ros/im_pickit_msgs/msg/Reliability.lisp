; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-msg)


;//! \htmlinclude Reliability.msg.html

(cl:defclass <Reliability> (roslisp-msg-protocol:ros-message)
  ((scene_coverage_2d
    :reader scene_coverage_2d
    :initarg :scene_coverage_2d
    :type im_pickit_msgs-msg:ReliabilityValue
    :initform (cl:make-instance 'im_pickit_msgs-msg:ReliabilityValue))
   (scene_coverage_3d
    :reader scene_coverage_3d
    :initarg :scene_coverage_3d
    :type im_pickit_msgs-msg:ReliabilityValue
    :initform (cl:make-instance 'im_pickit_msgs-msg:ReliabilityValue))
   (model_contour_coverage_2d
    :reader model_contour_coverage_2d
    :initarg :model_contour_coverage_2d
    :type im_pickit_msgs-msg:ReliabilityValue
    :initform (cl:make-instance 'im_pickit_msgs-msg:ReliabilityValue))
   (model_surface_coverage_2d
    :reader model_surface_coverage_2d
    :initarg :model_surface_coverage_2d
    :type im_pickit_msgs-msg:ReliabilityValue
    :initform (cl:make-instance 'im_pickit_msgs-msg:ReliabilityValue))
   (model_coverage_3d
    :reader model_coverage_3d
    :initarg :model_coverage_3d
    :type im_pickit_msgs-msg:ReliabilityValue
    :initform (cl:make-instance 'im_pickit_msgs-msg:ReliabilityValue)))
)

(cl:defclass Reliability (<Reliability>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Reliability>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Reliability)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-msg:<Reliability> is deprecated: use im_pickit_msgs-msg:Reliability instead.")))

(cl:ensure-generic-function 'scene_coverage_2d-val :lambda-list '(m))
(cl:defmethod scene_coverage_2d-val ((m <Reliability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:scene_coverage_2d-val is deprecated.  Use im_pickit_msgs-msg:scene_coverage_2d instead.")
  (scene_coverage_2d m))

(cl:ensure-generic-function 'scene_coverage_3d-val :lambda-list '(m))
(cl:defmethod scene_coverage_3d-val ((m <Reliability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:scene_coverage_3d-val is deprecated.  Use im_pickit_msgs-msg:scene_coverage_3d instead.")
  (scene_coverage_3d m))

(cl:ensure-generic-function 'model_contour_coverage_2d-val :lambda-list '(m))
(cl:defmethod model_contour_coverage_2d-val ((m <Reliability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:model_contour_coverage_2d-val is deprecated.  Use im_pickit_msgs-msg:model_contour_coverage_2d instead.")
  (model_contour_coverage_2d m))

(cl:ensure-generic-function 'model_surface_coverage_2d-val :lambda-list '(m))
(cl:defmethod model_surface_coverage_2d-val ((m <Reliability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:model_surface_coverage_2d-val is deprecated.  Use im_pickit_msgs-msg:model_surface_coverage_2d instead.")
  (model_surface_coverage_2d m))

(cl:ensure-generic-function 'model_coverage_3d-val :lambda-list '(m))
(cl:defmethod model_coverage_3d-val ((m <Reliability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:model_coverage_3d-val is deprecated.  Use im_pickit_msgs-msg:model_coverage_3d instead.")
  (model_coverage_3d m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Reliability>) ostream)
  "Serializes a message object of type '<Reliability>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'scene_coverage_2d) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'scene_coverage_3d) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'model_contour_coverage_2d) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'model_surface_coverage_2d) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'model_coverage_3d) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Reliability>) istream)
  "Deserializes a message object of type '<Reliability>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'scene_coverage_2d) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'scene_coverage_3d) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'model_contour_coverage_2d) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'model_surface_coverage_2d) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'model_coverage_3d) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Reliability>)))
  "Returns string type for a message object of type '<Reliability>"
  "im_pickit_msgs/Reliability")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Reliability)))
  "Returns string type for a message object of type 'Reliability"
  "im_pickit_msgs/Reliability")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Reliability>)))
  "Returns md5sum for a message object of type '<Reliability>"
  "685a54d871aab00bbe45a67c03dafaea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Reliability)))
  "Returns md5sum for a message object of type 'Reliability"
  "685a54d871aab00bbe45a67c03dafaea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Reliability>)))
  "Returns full string definition for message of type '<Reliability>"
  (cl:format cl:nil "## Contains all parameters describing reliability of detected object~%## Values expressed as confidence levels ranging from 0.0 to 1.0~%~%## Ratio of inlier points close to the border of the \"Intermodalics hole\" and~%## all points of the \"Intermodalics hole\".~%ReliabilityValue scene_coverage_2d~%~%## Ratio of inlier points to all points in the cluster.~%ReliabilityValue scene_coverage_3d~%~%### TODO(@wannesvanloock): Add description pls.~%ReliabilityValue model_contour_coverage_2d~%### TODO(@wannesvanloock): Add description pls.~%ReliabilityValue model_surface_coverage_2d~%~%## 3D reliability of the matched model~%ReliabilityValue model_coverage_3d~%~%================================================================================~%MSG: im_pickit_msgs/ReliabilityValue~%float64 value~%float64 required_value~%~%# mostly we work with lower limits so usually this is false~%bool has_upper_limit     ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Reliability)))
  "Returns full string definition for message of type 'Reliability"
  (cl:format cl:nil "## Contains all parameters describing reliability of detected object~%## Values expressed as confidence levels ranging from 0.0 to 1.0~%~%## Ratio of inlier points close to the border of the \"Intermodalics hole\" and~%## all points of the \"Intermodalics hole\".~%ReliabilityValue scene_coverage_2d~%~%## Ratio of inlier points to all points in the cluster.~%ReliabilityValue scene_coverage_3d~%~%### TODO(@wannesvanloock): Add description pls.~%ReliabilityValue model_contour_coverage_2d~%### TODO(@wannesvanloock): Add description pls.~%ReliabilityValue model_surface_coverage_2d~%~%## 3D reliability of the matched model~%ReliabilityValue model_coverage_3d~%~%================================================================================~%MSG: im_pickit_msgs/ReliabilityValue~%float64 value~%float64 required_value~%~%# mostly we work with lower limits so usually this is false~%bool has_upper_limit     ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Reliability>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'scene_coverage_2d))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'scene_coverage_3d))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'model_contour_coverage_2d))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'model_surface_coverage_2d))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'model_coverage_3d))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Reliability>))
  "Converts a ROS message object to a list"
  (cl:list 'Reliability
    (cl:cons ':scene_coverage_2d (scene_coverage_2d msg))
    (cl:cons ':scene_coverage_3d (scene_coverage_3d msg))
    (cl:cons ':model_contour_coverage_2d (model_contour_coverage_2d msg))
    (cl:cons ':model_surface_coverage_2d (model_surface_coverage_2d msg))
    (cl:cons ':model_coverage_3d (model_coverage_3d msg))
))
