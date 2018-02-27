;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::CameraState)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'CameraState (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::CAMERASTATE")
  (make-package "IM_PICKIT_MSGS::CAMERASTATE"))

(in-package "ROS")
;;//! \htmlinclude CameraState.msg.html


(intern "*STATE_REGISTERED*" (find-package "IM_PICKIT_MSGS::CAMERASTATE"))
(shadow '*STATE_REGISTERED* (find-package "IM_PICKIT_MSGS::CAMERASTATE"))
(defconstant im_pickit_msgs::CameraState::*STATE_REGISTERED* 1)
(intern "*STATE_CONNECTED*" (find-package "IM_PICKIT_MSGS::CAMERASTATE"))
(shadow '*STATE_CONNECTED* (find-package "IM_PICKIT_MSGS::CAMERASTATE"))
(defconstant im_pickit_msgs::CameraState::*STATE_CONNECTED* 2)
(intern "*STATE_DISCONNECTED*" (find-package "IM_PICKIT_MSGS::CAMERASTATE"))
(shadow '*STATE_DISCONNECTED* (find-package "IM_PICKIT_MSGS::CAMERASTATE"))
(defconstant im_pickit_msgs::CameraState::*STATE_DISCONNECTED* 3)
(defclass im_pickit_msgs::CameraState
  :super ros::object
  :slots (_state ))

(defmethod im_pickit_msgs::CameraState
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get im_pickit_msgs::CameraState :md5sum-) "7f0b89c087f6efa23b45a421459a1b74")
(setf (get im_pickit_msgs::CameraState :datatype-) "im_pickit_msgs/CameraState")
(setf (get im_pickit_msgs::CameraState :definition-)
      "uint8 STATE_REGISTERED    = 1
uint8 STATE_CONNECTED     = 2
uint8 STATE_DISCONNECTED  = 3

uint8 state   # Camera state

")



(provide :im_pickit_msgs/CameraState "7f0b89c087f6efa23b45a421459a1b74")


