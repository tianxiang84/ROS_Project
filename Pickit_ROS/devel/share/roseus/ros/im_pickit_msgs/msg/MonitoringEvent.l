;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::MonitoringEvent)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'MonitoringEvent (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::MONITORINGEVENT")
  (make-package "IM_PICKIT_MSGS::MONITORINGEVENT"))

(in-package "ROS")
;;//! \htmlinclude MonitoringEvent.msg.html


(intern "*EVENT_SYSTEM_STARTED*" (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(shadow '*EVENT_SYSTEM_STARTED* (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(defconstant im_pickit_msgs::MonitoringEvent::*EVENT_SYSTEM_STARTED* 1)
(intern "*EVENT_SYSTEM_CONFIGURED*" (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(shadow '*EVENT_SYSTEM_CONFIGURED* (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(defconstant im_pickit_msgs::MonitoringEvent::*EVENT_SYSTEM_CONFIGURED* 2)
(intern "*EVENT_CAMERA_CONNECTED*" (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(shadow '*EVENT_CAMERA_CONNECTED* (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(defconstant im_pickit_msgs::MonitoringEvent::*EVENT_CAMERA_CONNECTED* 21)
(intern "*EVENT_CAMERA_DISCONNECTED*" (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(shadow '*EVENT_CAMERA_DISCONNECTED* (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(defconstant im_pickit_msgs::MonitoringEvent::*EVENT_CAMERA_DISCONNECTED* 22)
(intern "*EVENT_RC_CALIBRATION_SUCCEEDED*" (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(shadow '*EVENT_RC_CALIBRATION_SUCCEEDED* (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(defconstant im_pickit_msgs::MonitoringEvent::*EVENT_RC_CALIBRATION_SUCCEEDED* 31)
(intern "*EVENT_RC_CALIBRATION_REQUESTED*" (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(shadow '*EVENT_RC_CALIBRATION_REQUESTED* (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(defconstant im_pickit_msgs::MonitoringEvent::*EVENT_RC_CALIBRATION_REQUESTED* 32)
(intern "*EVENT_ROI_TEACHING_SUCCEEDED*" (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(shadow '*EVENT_ROI_TEACHING_SUCCEEDED* (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(defconstant im_pickit_msgs::MonitoringEvent::*EVENT_ROI_TEACHING_SUCCEEDED* 41)
(intern "*EVENT_SINGLE_DETECTION_REQUESTED*" (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(shadow '*EVENT_SINGLE_DETECTION_REQUESTED* (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(defconstant im_pickit_msgs::MonitoringEvent::*EVENT_SINGLE_DETECTION_REQUESTED* 51)
(intern "*EVENT_CONFIGURATION_REQUESTED*" (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(shadow '*EVENT_CONFIGURATION_REQUESTED* (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(defconstant im_pickit_msgs::MonitoringEvent::*EVENT_CONFIGURATION_REQUESTED* 61)
(intern "*EVENT_SNAPSHOT_REQUESTED*" (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(shadow '*EVENT_SNAPSHOT_REQUESTED* (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(defconstant im_pickit_msgs::MonitoringEvent::*EVENT_SNAPSHOT_REQUESTED* 81)
(intern "*EVENT_SNAPSHOT_LOADED*" (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(shadow '*EVENT_SNAPSHOT_LOADED* (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(defconstant im_pickit_msgs::MonitoringEvent::*EVENT_SNAPSHOT_LOADED* 82)
(intern "*EVENT_ROBOT_NEXT_OBJECT_REQUESTED*" (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(shadow '*EVENT_ROBOT_NEXT_OBJECT_REQUESTED* (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(defconstant im_pickit_msgs::MonitoringEvent::*EVENT_ROBOT_NEXT_OBJECT_REQUESTED* 101)
(intern "*SOURCE_UNSPECIFIED*" (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(shadow '*SOURCE_UNSPECIFIED* (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(defconstant im_pickit_msgs::MonitoringEvent::*SOURCE_UNSPECIFIED* 0)
(intern "*SOURCE_SYSTEM*" (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(shadow '*SOURCE_SYSTEM* (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(defconstant im_pickit_msgs::MonitoringEvent::*SOURCE_SYSTEM* 1)
(intern "*SOURCE_CAMERA*" (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(shadow '*SOURCE_CAMERA* (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(defconstant im_pickit_msgs::MonitoringEvent::*SOURCE_CAMERA* 2)
(intern "*SOURCE_ROBOT*" (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(shadow '*SOURCE_ROBOT* (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(defconstant im_pickit_msgs::MonitoringEvent::*SOURCE_ROBOT* 3)
(intern "*SOURCE_WEB_INTERFACE*" (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(shadow '*SOURCE_WEB_INTERFACE* (find-package "IM_PICKIT_MSGS::MONITORINGEVENT"))
(defconstant im_pickit_msgs::MonitoringEvent::*SOURCE_WEB_INTERFACE* 4)
(defclass im_pickit_msgs::MonitoringEvent
  :super ros::object
  :slots (_stamp _code _source _message ))

(defmethod im_pickit_msgs::MonitoringEvent
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:code __code) 0)
    ((:source __source) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _code (round __code))
   (setq _source (round __source))
   (setq _message (string __message))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; int32 _code
    4
    ;; int32 _source
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; int32 _code
       (write-long _code s)
     ;; int32 _source
       (write-long _source s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _code
     (setq _code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _source
     (setq _source (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get im_pickit_msgs::MonitoringEvent :md5sum-) "5672f74acd1b7b29851e9bac432c4c5c")
(setf (get im_pickit_msgs::MonitoringEvent :datatype-) "im_pickit_msgs/MonitoringEvent")
(setf (get im_pickit_msgs::MonitoringEvent :definition-)
      "# Definitions of event codes.
# System specific events.
int32 EVENT_SYSTEM_STARTED = 1
int32 EVENT_SYSTEM_CONFIGURED = 2


# Camera specific events.
int32 EVENT_CAMERA_CONNECTED = 21
int32 EVENT_CAMERA_DISCONNECTED = 22

# TODO: Add many more events here.

# Robot-camera calibration specific events.
int32 EVENT_RC_CALIBRATION_SUCCEEDED = 31
int32 EVENT_RC_CALIBRATION_REQUESTED = 32

# Region of Interest (ROI) specific events.
int32 EVENT_ROI_TEACHING_SUCCEEDED = 41

# Detection related events.
int32 EVENT_SINGLE_DETECTION_REQUESTED = 51

# Configuration related events.
int32 EVENT_CONFIGURATION_REQUESTED = 61

# Snapshot related events.
int32 EVENT_SNAPSHOT_REQUESTED = 81
int32 EVENT_SNAPSHOT_LOADED = 82

# Robot specific events.
int32 EVENT_ROBOT_NEXT_OBJECT_REQUESTED = 101


# Definitions of event sources.
int32 SOURCE_UNSPECIFIED = 0
int32 SOURCE_SYSTEM = 1
int32 SOURCE_CAMERA = 2
int32 SOURCE_ROBOT = 3
int32 SOURCE_WEB_INTERFACE = 4

# Message fields.
time stamp
int32 code
int32 source          # Only relevant for events where the origin is not clear.
string message        # Additional payload message.

")



(provide :im_pickit_msgs/MonitoringEvent "5672f74acd1b7b29851e9bac432c4c5c")


