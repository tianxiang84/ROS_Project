;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::StatusUnpickable)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'StatusUnpickable (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::STATUSUNPICKABLE")
  (make-package "IM_PICKIT_MSGS::STATUSUNPICKABLE"))

(in-package "ROS")
;;//! \htmlinclude StatusUnpickable.msg.html


(intern "*CATEGORY*" (find-package "IM_PICKIT_MSGS::STATUSUNPICKABLE"))
(shadow '*CATEGORY* (find-package "IM_PICKIT_MSGS::STATUSUNPICKABLE"))
(defconstant im_pickit_msgs::StatusUnpickable::*CATEGORY* "UNPICKABLE")
(intern "*CENTER_OUTSIDE_ROI*" (find-package "IM_PICKIT_MSGS::STATUSUNPICKABLE"))
(shadow '*CENTER_OUTSIDE_ROI* (find-package "IM_PICKIT_MSGS::STATUSUNPICKABLE"))
(defconstant im_pickit_msgs::StatusUnpickable::*CENTER_OUTSIDE_ROI* 0)
(intern "*INVALID_BORDER_DISTANCE*" (find-package "IM_PICKIT_MSGS::STATUSUNPICKABLE"))
(shadow '*INVALID_BORDER_DISTANCE* (find-package "IM_PICKIT_MSGS::STATUSUNPICKABLE"))
(defconstant im_pickit_msgs::StatusUnpickable::*INVALID_BORDER_DISTANCE* 10)
(intern "*COLLISION_WITH_BOX*" (find-package "IM_PICKIT_MSGS::STATUSUNPICKABLE"))
(shadow '*COLLISION_WITH_BOX* (find-package "IM_PICKIT_MSGS::STATUSUNPICKABLE"))
(defconstant im_pickit_msgs::StatusUnpickable::*COLLISION_WITH_BOX* 20)
(intern "*COLLISION_WITH_POINT_CLOUD*" (find-package "IM_PICKIT_MSGS::STATUSUNPICKABLE"))
(shadow '*COLLISION_WITH_POINT_CLOUD* (find-package "IM_PICKIT_MSGS::STATUSUNPICKABLE"))
(defconstant im_pickit_msgs::StatusUnpickable::*COLLISION_WITH_POINT_CLOUD* 30)
(intern "*INVALID_Z_AXIS_ORIENTATION*" (find-package "IM_PICKIT_MSGS::STATUSUNPICKABLE"))
(shadow '*INVALID_Z_AXIS_ORIENTATION* (find-package "IM_PICKIT_MSGS::STATUSUNPICKABLE"))
(defconstant im_pickit_msgs::StatusUnpickable::*INVALID_Z_AXIS_ORIENTATION* 40)
(intern "*COLLISION_WITH_BOX_IN_BETWEEN_OBJECT_AND_ROI*" (find-package "IM_PICKIT_MSGS::STATUSUNPICKABLE"))
(shadow '*COLLISION_WITH_BOX_IN_BETWEEN_OBJECT_AND_ROI* (find-package "IM_PICKIT_MSGS::STATUSUNPICKABLE"))
(defconstant im_pickit_msgs::StatusUnpickable::*COLLISION_WITH_BOX_IN_BETWEEN_OBJECT_AND_ROI* 50)
(defclass im_pickit_msgs::StatusUnpickable
  :super ros::object
  :slots ())

(defmethod im_pickit_msgs::StatusUnpickable
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get im_pickit_msgs::StatusUnpickable :md5sum-) "7a651c88be4b7987ea0a0fd56c2152f2")
(setf (get im_pickit_msgs::StatusUnpickable :datatype-) "im_pickit_msgs/StatusUnpickable")
(setf (get im_pickit_msgs::StatusUnpickable :definition-)
      "# These objects (0 <= status <= 99)
# will get an orange colored visualization marker.

string CATEGORY = UNPICKABLE

### Enums:

uint16 CENTER_OUTSIDE_ROI = 0

uint16 INVALID_BORDER_DISTANCE = 10

uint16 COLLISION_WITH_BOX = 20

uint16 COLLISION_WITH_POINT_CLOUD = 30

uint16 INVALID_Z_AXIS_ORIENTATION = 40

uint16 COLLISION_WITH_BOX_IN_BETWEEN_OBJECT_AND_ROI = 50

")



(provide :im_pickit_msgs/StatusUnpickable "7a651c88be4b7987ea0a0fd56c2152f2")


