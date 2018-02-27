;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::CameraList)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'CameraList (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::CAMERALIST")
  (make-package "IM_PICKIT_MSGS::CAMERALIST"))

(in-package "ROS")
;;//! \htmlinclude CameraList.msg.html


(defclass im_pickit_msgs::CameraList
  :super ros::object
  :slots (_cameras _camera_states ))

(defmethod im_pickit_msgs::CameraList
  (:init
   (&key
    ((:cameras __cameras) (let (r) (dotimes (i 0) (push (instance im_pickit_msgs::CameraConfig :init) r)) r))
    ((:camera_states __camera_states) (let (r) (dotimes (i 0) (push (instance im_pickit_msgs::CameraState :init) r)) r))
    )
   (send-super :init)
   (setq _cameras __cameras)
   (setq _camera_states __camera_states)
   self)
  (:cameras
   (&rest __cameras)
   (if (keywordp (car __cameras))
       (send* _cameras __cameras)
     (progn
       (if __cameras (setq _cameras (car __cameras)))
       _cameras)))
  (:camera_states
   (&rest __camera_states)
   (if (keywordp (car __camera_states))
       (send* _camera_states __camera_states)
     (progn
       (if __camera_states (setq _camera_states (car __camera_states)))
       _camera_states)))
  (:serialization-length
   ()
   (+
    ;; im_pickit_msgs/CameraConfig[] _cameras
    (apply #'+ (send-all _cameras :serialization-length)) 4
    ;; im_pickit_msgs/CameraState[] _camera_states
    (apply #'+ (send-all _camera_states :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; im_pickit_msgs/CameraConfig[] _cameras
     (write-long (length _cameras) s)
     (dolist (elem _cameras)
       (send elem :serialize s)
       )
     ;; im_pickit_msgs/CameraState[] _camera_states
     (write-long (length _camera_states) s)
     (dolist (elem _camera_states)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; im_pickit_msgs/CameraConfig[] _cameras
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cameras (let (r) (dotimes (i n) (push (instance im_pickit_msgs::CameraConfig :init) r)) r))
     (dolist (elem- _cameras)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; im_pickit_msgs/CameraState[] _camera_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _camera_states (let (r) (dotimes (i n) (push (instance im_pickit_msgs::CameraState :init) r)) r))
     (dolist (elem- _camera_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get im_pickit_msgs::CameraList :md5sum-) "e437b032a8e9ff1590a662fd97c982f9")
(setf (get im_pickit_msgs::CameraList :datatype-) "im_pickit_msgs/CameraList")
(setf (get im_pickit_msgs::CameraList :definition-)
      "CameraConfig[] cameras        # List of known cameras.
CameraState[] camera_states   # Corresponding camera states.

================================================================================
MSG: im_pickit_msgs/CameraConfig
# Message fields
string name                                 # name (=namespace) of the camera (unique!)
string serial                               # Serial number.

================================================================================
MSG: im_pickit_msgs/CameraState
uint8 STATE_REGISTERED    = 1
uint8 STATE_CONNECTED     = 2
uint8 STATE_DISCONNECTED  = 3

uint8 state   # Camera state

")



(provide :im_pickit_msgs/CameraList "e437b032a8e9ff1590a662fd97c982f9")


