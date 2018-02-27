;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::StatusInvalid)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'StatusInvalid (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::STATUSINVALID")
  (make-package "IM_PICKIT_MSGS::STATUSINVALID"))

(in-package "ROS")
;;//! \htmlinclude StatusInvalid.msg.html


(intern "*CATEGORY*" (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(shadow '*CATEGORY* (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(defconstant im_pickit_msgs::StatusInvalid::*CATEGORY* "INVALID")
(intern "*UNRELIABLE_3D_SCENE_COVERAGE_TOO_LOW*" (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(shadow '*UNRELIABLE_3D_SCENE_COVERAGE_TOO_LOW* (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(defconstant im_pickit_msgs::StatusInvalid::*UNRELIABLE_3D_SCENE_COVERAGE_TOO_LOW* 100)
(intern "*UNRELIABLE_2D_SCENE_COVERAGE_TOO_LOW*" (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(shadow '*UNRELIABLE_2D_SCENE_COVERAGE_TOO_LOW* (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(defconstant im_pickit_msgs::StatusInvalid::*UNRELIABLE_2D_SCENE_COVERAGE_TOO_LOW* 101)
(intern "*UNRELIABLE_3D_MODEL_COVERAGE_TOO_LOW*" (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(shadow '*UNRELIABLE_3D_MODEL_COVERAGE_TOO_LOW* (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(defconstant im_pickit_msgs::StatusInvalid::*UNRELIABLE_3D_MODEL_COVERAGE_TOO_LOW* 102)
(intern "*UNRELIABLE_2D_MODEL_CONTOUR_COVERAGE_TOO_LOW*" (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(shadow '*UNRELIABLE_2D_MODEL_CONTOUR_COVERAGE_TOO_LOW* (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(defconstant im_pickit_msgs::StatusInvalid::*UNRELIABLE_2D_MODEL_CONTOUR_COVERAGE_TOO_LOW* 103)
(intern "*UNRELIABLE_2D_MODEL_SURFACE_COVERAGE_TOO_LOW*" (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(shadow '*UNRELIABLE_2D_MODEL_SURFACE_COVERAGE_TOO_LOW* (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(defconstant im_pickit_msgs::StatusInvalid::*UNRELIABLE_2D_MODEL_SURFACE_COVERAGE_TOO_LOW* 104)
(intern "*UNRELIABLE_2D_MODEL_SURFACE_COVERAGE_TOO_HIGH*" (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(shadow '*UNRELIABLE_2D_MODEL_SURFACE_COVERAGE_TOO_HIGH* (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(defconstant im_pickit_msgs::StatusInvalid::*UNRELIABLE_2D_MODEL_SURFACE_COVERAGE_TOO_HIGH* 105)
(intern "*UNRELIABLE_MISALIGNED_X_AXIS*" (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(shadow '*UNRELIABLE_MISALIGNED_X_AXIS* (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(defconstant im_pickit_msgs::StatusInvalid::*UNRELIABLE_MISALIGNED_X_AXIS* 200)
(intern "*UNRELIABLE_MISALIGNED_Y_AXIS*" (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(shadow '*UNRELIABLE_MISALIGNED_Y_AXIS* (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(defconstant im_pickit_msgs::StatusInvalid::*UNRELIABLE_MISALIGNED_Y_AXIS* 201)
(intern "*WRONG_SIZE_SMALLER_THAN_X_MIN*" (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(shadow '*WRONG_SIZE_SMALLER_THAN_X_MIN* (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(defconstant im_pickit_msgs::StatusInvalid::*WRONG_SIZE_SMALLER_THAN_X_MIN* 300)
(intern "*WRONG_SIZE_LARGER_THAN_X_MAX*" (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(shadow '*WRONG_SIZE_LARGER_THAN_X_MAX* (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(defconstant im_pickit_msgs::StatusInvalid::*WRONG_SIZE_LARGER_THAN_X_MAX* 301)
(intern "*WRONG_SIZE_SMALLER_THAN_Y_MIN*" (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(shadow '*WRONG_SIZE_SMALLER_THAN_Y_MIN* (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(defconstant im_pickit_msgs::StatusInvalid::*WRONG_SIZE_SMALLER_THAN_Y_MIN* 302)
(intern "*WRONG_SIZE_LARGER_THAN_Y_MAX*" (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(shadow '*WRONG_SIZE_LARGER_THAN_Y_MAX* (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(defconstant im_pickit_msgs::StatusInvalid::*WRONG_SIZE_LARGER_THAN_Y_MAX* 303)
(intern "*WRONG_SIZE_SMALLER_THAN_Z_MIN*" (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(shadow '*WRONG_SIZE_SMALLER_THAN_Z_MIN* (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(defconstant im_pickit_msgs::StatusInvalid::*WRONG_SIZE_SMALLER_THAN_Z_MIN* 304)
(intern "*WRONG_SIZE_LARGER_THAN_Z_MAX*" (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(shadow '*WRONG_SIZE_LARGER_THAN_Z_MAX* (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(defconstant im_pickit_msgs::StatusInvalid::*WRONG_SIZE_LARGER_THAN_Z_MAX* 305)
(intern "*WRONG_SIZE_SMALLER_THAN_MIN_OBJECT_POINTS*" (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(shadow '*WRONG_SIZE_SMALLER_THAN_MIN_OBJECT_POINTS* (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(defconstant im_pickit_msgs::StatusInvalid::*WRONG_SIZE_SMALLER_THAN_MIN_OBJECT_POINTS* 306)
(intern "*WRONG_SIZE_LARGER_THAN_MAX_OBJECT_POINTS*" (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(shadow '*WRONG_SIZE_LARGER_THAN_MAX_OBJECT_POINTS* (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(defconstant im_pickit_msgs::StatusInvalid::*WRONG_SIZE_LARGER_THAN_MAX_OBJECT_POINTS* 307)
(intern "*WRONG_SURFACE_SIDE_EXTERNAL*" (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(shadow '*WRONG_SURFACE_SIDE_EXTERNAL* (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(defconstant im_pickit_msgs::StatusInvalid::*WRONG_SURFACE_SIDE_EXTERNAL* 400)
(intern "*WRONG_SURFACE_SIDE_INTERNAL*" (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(shadow '*WRONG_SURFACE_SIDE_INTERNAL* (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(defconstant im_pickit_msgs::StatusInvalid::*WRONG_SURFACE_SIDE_INTERNAL* 401)
(intern "*IN_PREVIOUS_IMAGE*" (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(shadow '*IN_PREVIOUS_IMAGE* (find-package "IM_PICKIT_MSGS::STATUSINVALID"))
(defconstant im_pickit_msgs::StatusInvalid::*IN_PREVIOUS_IMAGE* 500)
(defclass im_pickit_msgs::StatusInvalid
  :super ros::object
  :slots ())

(defmethod im_pickit_msgs::StatusInvalid
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

(setf (get im_pickit_msgs::StatusInvalid :md5sum-) "de376df19f3bac290330f837647f3728")
(setf (get im_pickit_msgs::StatusInvalid :datatype-) "im_pickit_msgs/StatusInvalid")
(setf (get im_pickit_msgs::StatusInvalid :definition-)
      "# These objects (100 <= status <= 999)
# will get a red colored visualization marker.

string CATEGORY = INVALID

### Enums:

uint16 UNRELIABLE_3D_SCENE_COVERAGE_TOO_LOW = 100
uint16 UNRELIABLE_2D_SCENE_COVERAGE_TOO_LOW = 101
uint16 UNRELIABLE_3D_MODEL_COVERAGE_TOO_LOW = 102
uint16 UNRELIABLE_2D_MODEL_CONTOUR_COVERAGE_TOO_LOW = 103
uint16 UNRELIABLE_2D_MODEL_SURFACE_COVERAGE_TOO_LOW = 104
uint16 UNRELIABLE_2D_MODEL_SURFACE_COVERAGE_TOO_HIGH = 105

uint16 UNRELIABLE_MISALIGNED_X_AXIS = 200
uint16 UNRELIABLE_MISALIGNED_Y_AXIS = 201

uint16 WRONG_SIZE_SMALLER_THAN_X_MIN = 300
uint16 WRONG_SIZE_LARGER_THAN_X_MAX = 301
uint16 WRONG_SIZE_SMALLER_THAN_Y_MIN = 302
uint16 WRONG_SIZE_LARGER_THAN_Y_MAX = 303
uint16 WRONG_SIZE_SMALLER_THAN_Z_MIN = 304
uint16 WRONG_SIZE_LARGER_THAN_Z_MAX = 305
uint16 WRONG_SIZE_SMALLER_THAN_MIN_OBJECT_POINTS = 306
uint16 WRONG_SIZE_LARGER_THAN_MAX_OBJECT_POINTS = 307

uint16 WRONG_SURFACE_SIDE_EXTERNAL = 400
uint16 WRONG_SURFACE_SIDE_INTERNAL = 401

uint16 IN_PREVIOUS_IMAGE = 500

")



(provide :im_pickit_msgs/StatusInvalid "de376df19f3bac290330f837647f3728")


