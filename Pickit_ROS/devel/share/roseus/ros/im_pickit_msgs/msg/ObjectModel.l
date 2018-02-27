;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::ObjectModel)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'ObjectModel (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::OBJECTMODEL")
  (make-package "IM_PICKIT_MSGS::OBJECTMODEL"))

(in-package "ROS")
;;//! \htmlinclude ObjectModel.msg.html


(intern "*NONE*" (find-package "IM_PICKIT_MSGS::OBJECTMODEL"))
(shadow '*NONE* (find-package "IM_PICKIT_MSGS::OBJECTMODEL"))
(defconstant im_pickit_msgs::ObjectModel::*NONE* 0)
(intern "*SQUARE*" (find-package "IM_PICKIT_MSGS::OBJECTMODEL"))
(shadow '*SQUARE* (find-package "IM_PICKIT_MSGS::OBJECTMODEL"))
(defconstant im_pickit_msgs::ObjectModel::*SQUARE* 21)
(intern "*RECTANGLE*" (find-package "IM_PICKIT_MSGS::OBJECTMODEL"))
(shadow '*RECTANGLE* (find-package "IM_PICKIT_MSGS::OBJECTMODEL"))
(defconstant im_pickit_msgs::ObjectModel::*RECTANGLE* 22)
(intern "*CIRCLE*" (find-package "IM_PICKIT_MSGS::OBJECTMODEL"))
(shadow '*CIRCLE* (find-package "IM_PICKIT_MSGS::OBJECTMODEL"))
(defconstant im_pickit_msgs::ObjectModel::*CIRCLE* 23)
(intern "*ELLIPSE*" (find-package "IM_PICKIT_MSGS::OBJECTMODEL"))
(shadow '*ELLIPSE* (find-package "IM_PICKIT_MSGS::OBJECTMODEL"))
(defconstant im_pickit_msgs::ObjectModel::*ELLIPSE* 24)
(intern "*CYLINDER*" (find-package "IM_PICKIT_MSGS::OBJECTMODEL"))
(shadow '*CYLINDER* (find-package "IM_PICKIT_MSGS::OBJECTMODEL"))
(defconstant im_pickit_msgs::ObjectModel::*CYLINDER* 32)
(intern "*SPHERE*" (find-package "IM_PICKIT_MSGS::OBJECTMODEL"))
(shadow '*SPHERE* (find-package "IM_PICKIT_MSGS::OBJECTMODEL"))
(defconstant im_pickit_msgs::ObjectModel::*SPHERE* 33)
(intern "*POINT_CLOUD*" (find-package "IM_PICKIT_MSGS::OBJECTMODEL"))
(shadow '*POINT_CLOUD* (find-package "IM_PICKIT_MSGS::OBJECTMODEL"))
(defconstant im_pickit_msgs::ObjectModel::*POINT_CLOUD* 35)
(intern "*BLOB*" (find-package "IM_PICKIT_MSGS::OBJECTMODEL"))
(shadow '*BLOB* (find-package "IM_PICKIT_MSGS::OBJECTMODEL"))
(defconstant im_pickit_msgs::ObjectModel::*BLOB* 50)
(intern "*CLUSTER*" (find-package "IM_PICKIT_MSGS::OBJECTMODEL"))
(shadow '*CLUSTER* (find-package "IM_PICKIT_MSGS::OBJECTMODEL"))
(defconstant im_pickit_msgs::ObjectModel::*CLUSTER* 250)
(defclass im_pickit_msgs::ObjectModel
  :super ros::object
  :slots (_type ))

(defmethod im_pickit_msgs::ObjectModel
  (:init
   (&key
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get im_pickit_msgs::ObjectModel :md5sum-) "49dc4c216781b1b3ce8e8e9d6c3be4e6")
(setf (get im_pickit_msgs::ObjectModel :datatype-) "im_pickit_msgs/ObjectModel")
(setf (get im_pickit_msgs::ObjectModel :definition-)
      "# Copyright (c) 2017, Pick-it NV.
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

")



(provide :im_pickit_msgs/ObjectModel "49dc4c216781b1b3ce8e8e9d6c3be4e6")


