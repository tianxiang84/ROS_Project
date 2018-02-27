;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::PickitState)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'PickitState (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::PICKITSTATE")
  (make-package "IM_PICKIT_MSGS::PICKITSTATE"))

(in-package "ROS")
;;//! \htmlinclude PickitState.msg.html


(intern "*IDLE*" (find-package "IM_PICKIT_MSGS::PICKITSTATE"))
(shadow '*IDLE* (find-package "IM_PICKIT_MSGS::PICKITSTATE"))
(defconstant im_pickit_msgs::PickitState::*IDLE* "root.Idle")
(intern "*ROI*" (find-package "IM_PICKIT_MSGS::PICKITSTATE"))
(shadow '*ROI* (find-package "IM_PICKIT_MSGS::PICKITSTATE"))
(defconstant im_pickit_msgs::PickitState::*ROI* "root.Region_of_interest")
(intern "*CALIBRATION*" (find-package "IM_PICKIT_MSGS::PICKITSTATE"))
(shadow '*CALIBRATION* (find-package "IM_PICKIT_MSGS::PICKITSTATE"))
(defconstant im_pickit_msgs::PickitState::*CALIBRATION* "root.Calibration")
(intern "*TESTING*" (find-package "IM_PICKIT_MSGS::PICKITSTATE"))
(shadow '*TESTING* (find-package "IM_PICKIT_MSGS::PICKITSTATE"))
(defconstant im_pickit_msgs::PickitState::*TESTING* "root.Testing")
(intern "*TEST*" (find-package "IM_PICKIT_MSGS::PICKITSTATE"))
(shadow '*TEST* (find-package "IM_PICKIT_MSGS::PICKITSTATE"))
(defconstant im_pickit_msgs::PickitState::*TEST* "root.Test")
(intern "*RUNNING*" (find-package "IM_PICKIT_MSGS::PICKITSTATE"))
(shadow '*RUNNING* (find-package "IM_PICKIT_MSGS::PICKITSTATE"))
(defconstant im_pickit_msgs::PickitState::*RUNNING* "root.Running")
(intern "*TEACH_MODEL*" (find-package "IM_PICKIT_MSGS::PICKITSTATE"))
(shadow '*TEACH_MODEL* (find-package "IM_PICKIT_MSGS::PICKITSTATE"))
(defconstant im_pickit_msgs::PickitState::*TEACH_MODEL* "root.Teach_model")
(defclass im_pickit_msgs::PickitState
  :super ros::object
  :slots ())

(defmethod im_pickit_msgs::PickitState
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

(setf (get im_pickit_msgs::PickitState :md5sum-) "9ef3dc8a4557d0cf9d67cf35dcb7b2af")
(setf (get im_pickit_msgs::PickitState :datatype-) "im_pickit_msgs/PickitState")
(setf (get im_pickit_msgs::PickitState :definition-)
      "## Copyright Pick-it 2017
## This message contains Pick-it state constants  ##

string IDLE=root.Idle
string ROI=root.Region_of_interest
string CALIBRATION=root.Calibration
string TESTING=root.Testing
string TEST=root.Test
string RUNNING=root.Running
string TEACH_MODEL=root.Teach_model

")



(provide :im_pickit_msgs/PickitState "9ef3dc8a4557d0cf9d67cf35dcb7b2af")


