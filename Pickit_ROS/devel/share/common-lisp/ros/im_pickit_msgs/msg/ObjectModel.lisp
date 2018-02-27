; Auto-generated. Do not edit!


(cl:in-package im_pickit_msgs-msg)


;//! \htmlinclude ObjectModel.msg.html

(cl:defclass <ObjectModel> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ObjectModel (<ObjectModel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectModel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectModel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name im_pickit_msgs-msg:<ObjectModel> is deprecated: use im_pickit_msgs-msg:ObjectModel instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ObjectModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader im_pickit_msgs-msg:type-val is deprecated.  Use im_pickit_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ObjectModel>)))
    "Constants for message type '<ObjectModel>"
  '((:NONE . 0)
    (:SQUARE . 21)
    (:RECTANGLE . 22)
    (:CIRCLE . 23)
    (:ELLIPSE . 24)
    (:CYLINDER . 32)
    (:SPHERE . 33)
    (:POINT_CLOUD . 35)
    (:BLOB . 50)
    (:CLUSTER . 250))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ObjectModel)))
    "Constants for message type 'ObjectModel"
  '((:NONE . 0)
    (:SQUARE . 21)
    (:RECTANGLE . 22)
    (:CIRCLE . 23)
    (:ELLIPSE . 24)
    (:CYLINDER . 32)
    (:SPHERE . 33)
    (:POINT_CLOUD . 35)
    (:BLOB . 50)
    (:CLUSTER . 250))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectModel>) ostream)
  "Serializes a message object of type '<ObjectModel>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectModel>) istream)
  "Deserializes a message object of type '<ObjectModel>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectModel>)))
  "Returns string type for a message object of type '<ObjectModel>"
  "im_pickit_msgs/ObjectModel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectModel)))
  "Returns string type for a message object of type 'ObjectModel"
  "im_pickit_msgs/ObjectModel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectModel>)))
  "Returns md5sum for a message object of type '<ObjectModel>"
  "49dc4c216781b1b3ce8e8e9d6c3be4e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectModel)))
  "Returns md5sum for a message object of type 'ObjectModel"
  "49dc4c216781b1b3ce8e8e9d6c3be4e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectModel>)))
  "Returns full string definition for message of type '<ObjectModel>"
  (cl:format cl:nil "# Copyright (c) 2017, Pick-it NV.~%# All rights reserved.~%~%# Definition of different object models used for registration, reliability score calculation and more.~%~%# Unspecified~%uint8 NONE          = 0~%~%# 2D models:~%uint8 SQUARE        = 21~%uint8 RECTANGLE     = 22~%uint8 CIRCLE        = 23~%uint8 ELLIPSE       = 24~%~%# 3D models:~%uint8 CYLINDER      = 32~%uint8 SPHERE        = 33~%uint8 POINT_CLOUD   = 35  # Object model given as point cloud (Pickit-Teach).~%~%# Other models:~%uint8 BLOB          = 50  # Object without specified shape -> No object fitting is performed.~%~%# Models of internal use only:~%uint8 CLUSTER       = 250~%~%uint8 type  # Model type, takes one of the above defined models types as value.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectModel)))
  "Returns full string definition for message of type 'ObjectModel"
  (cl:format cl:nil "# Copyright (c) 2017, Pick-it NV.~%# All rights reserved.~%~%# Definition of different object models used for registration, reliability score calculation and more.~%~%# Unspecified~%uint8 NONE          = 0~%~%# 2D models:~%uint8 SQUARE        = 21~%uint8 RECTANGLE     = 22~%uint8 CIRCLE        = 23~%uint8 ELLIPSE       = 24~%~%# 3D models:~%uint8 CYLINDER      = 32~%uint8 SPHERE        = 33~%uint8 POINT_CLOUD   = 35  # Object model given as point cloud (Pickit-Teach).~%~%# Other models:~%uint8 BLOB          = 50  # Object without specified shape -> No object fitting is performed.~%~%# Models of internal use only:~%uint8 CLUSTER       = 250~%~%uint8 type  # Model type, takes one of the above defined models types as value.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectModel>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectModel>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectModel
    (cl:cons ':type (type msg))
))
