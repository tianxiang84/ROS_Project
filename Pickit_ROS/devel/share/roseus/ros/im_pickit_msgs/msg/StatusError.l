;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::StatusError)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'StatusError (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::STATUSERROR")
  (make-package "IM_PICKIT_MSGS::STATUSERROR"))

(in-package "ROS")
;;//! \htmlinclude StatusError.msg.html


(intern "*CATEGORY*" (find-package "IM_PICKIT_MSGS::STATUSERROR"))
(shadow '*CATEGORY* (find-package "IM_PICKIT_MSGS::STATUSERROR"))
(defconstant im_pickit_msgs::StatusError::*CATEGORY* "ERROR")
(intern "*POSE_CONTAINS_NANS*" (find-package "IM_PICKIT_MSGS::STATUSERROR"))
(shadow '*POSE_CONTAINS_NANS* (find-package "IM_PICKIT_MSGS::STATUSERROR"))
(defconstant im_pickit_msgs::StatusError::*POSE_CONTAINS_NANS* 1000)
(intern "*INVALID_ROTATION_MATRIX*" (find-package "IM_PICKIT_MSGS::STATUSERROR"))
(shadow '*INVALID_ROTATION_MATRIX* (find-package "IM_PICKIT_MSGS::STATUSERROR"))
(defconstant im_pickit_msgs::StatusError::*INVALID_ROTATION_MATRIX* 1001)
(intern "*SIZE_LARGER_THAN_ROI_BOX*" (find-package "IM_PICKIT_MSGS::STATUSERROR"))
(shadow '*SIZE_LARGER_THAN_ROI_BOX* (find-package "IM_PICKIT_MSGS::STATUSERROR"))
(defconstant im_pickit_msgs::StatusError::*SIZE_LARGER_THAN_ROI_BOX* 1002)
(intern "*INSUFFICIENT_INLIER_POINTS*" (find-package "IM_PICKIT_MSGS::STATUSERROR"))
(shadow '*INSUFFICIENT_INLIER_POINTS* (find-package "IM_PICKIT_MSGS::STATUSERROR"))
(defconstant im_pickit_msgs::StatusError::*INSUFFICIENT_INLIER_POINTS* 1003)
(defclass im_pickit_msgs::StatusError
  :super ros::object
  :slots ())

(defmethod im_pickit_msgs::StatusError
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

(setf (get im_pickit_msgs::StatusError :md5sum-) "3ef08eadec9d53cd5205e31b7c108462")
(setf (get im_pickit_msgs::StatusError :datatype-) "im_pickit_msgs/StatusError")
(setf (get im_pickit_msgs::StatusError :definition-)
      "# These objects (status >= 1000)
# will not get a visualization marker (due to a mathematical error, ie bug)

string CATEGORY = ERROR

### Enums:

uint16 POSE_CONTAINS_NANS = 1000
uint16 INVALID_ROTATION_MATRIX = 1001
uint16 SIZE_LARGER_THAN_ROI_BOX = 1002
uint16 INSUFFICIENT_INLIER_POINTS = 1003

")



(provide :im_pickit_msgs/StatusError "3ef08eadec9d53cd5205e31b7c108462")


