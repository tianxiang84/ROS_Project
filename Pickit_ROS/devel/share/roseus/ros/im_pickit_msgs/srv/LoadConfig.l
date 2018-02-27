;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::LoadConfig)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'LoadConfig (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::LOADCONFIG")
  (make-package "IM_PICKIT_MSGS::LOADCONFIG"))
(unless (find-package "IM_PICKIT_MSGS::LOADCONFIGREQUEST")
  (make-package "IM_PICKIT_MSGS::LOADCONFIGREQUEST"))
(unless (find-package "IM_PICKIT_MSGS::LOADCONFIGRESPONSE")
  (make-package "IM_PICKIT_MSGS::LOADCONFIGRESPONSE"))

(in-package "ROS")





(intern "*CONFIG_SETUP*" (find-package "IM_PICKIT_MSGS::LOADCONFIGREQUEST"))
(shadow '*CONFIG_SETUP* (find-package "IM_PICKIT_MSGS::LOADCONFIGREQUEST"))
(defconstant im_pickit_msgs::LoadConfigRequest::*CONFIG_SETUP* 1)
(intern "*CONFIG_PRODUCT*" (find-package "IM_PICKIT_MSGS::LOADCONFIGREQUEST"))
(shadow '*CONFIG_PRODUCT* (find-package "IM_PICKIT_MSGS::LOADCONFIGREQUEST"))
(defconstant im_pickit_msgs::LoadConfigRequest::*CONFIG_PRODUCT* 2)
(defclass im_pickit_msgs::LoadConfigRequest
  :super ros::object
  :slots (_config_type _path _set_persistent ))

(defmethod im_pickit_msgs::LoadConfigRequest
  (:init
   (&key
    ((:config_type __config_type) 0)
    ((:path __path) "")
    ((:set_persistent __set_persistent) nil)
    )
   (send-super :init)
   (setq _config_type (round __config_type))
   (setq _path (string __path))
   (setq _set_persistent __set_persistent)
   self)
  (:config_type
   (&optional __config_type)
   (if __config_type (setq _config_type __config_type)) _config_type)
  (:path
   (&optional __path)
   (if __path (setq _path __path)) _path)
  (:set_persistent
   (&optional __set_persistent)
   (if __set_persistent (setq _set_persistent __set_persistent)) _set_persistent)
  (:serialization-length
   ()
   (+
    ;; uint8 _config_type
    1
    ;; string _path
    4 (length _path)
    ;; bool _set_persistent
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _config_type
       (write-byte _config_type s)
     ;; string _path
       (write-long (length _path) s) (princ _path s)
     ;; bool _set_persistent
       (if _set_persistent (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _config_type
     (setq _config_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _set_persistent
     (setq _set_persistent (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass im_pickit_msgs::LoadConfigResponse
  :super ros::object
  :slots (_success _message ))

(defmethod im_pickit_msgs::LoadConfigResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass im_pickit_msgs::LoadConfig
  :super ros::object
  :slots ())

(setf (get im_pickit_msgs::LoadConfig :md5sum-) "eab8b02e16fe6a8a2dd0ff58db907dfe")
(setf (get im_pickit_msgs::LoadConfig :datatype-) "im_pickit_msgs/LoadConfig")
(setf (get im_pickit_msgs::LoadConfig :request) im_pickit_msgs::LoadConfigRequest)
(setf (get im_pickit_msgs::LoadConfig :response) im_pickit_msgs::LoadConfigResponse)

(defmethod im_pickit_msgs::LoadConfigRequest
  (:response () (instance im_pickit_msgs::LoadConfigResponse :init)))

(setf (get im_pickit_msgs::LoadConfigRequest :md5sum-) "eab8b02e16fe6a8a2dd0ff58db907dfe")
(setf (get im_pickit_msgs::LoadConfigRequest :datatype-) "im_pickit_msgs/LoadConfigRequest")
(setf (get im_pickit_msgs::LoadConfigRequest :definition-)
      "uint8 CONFIG_SETUP = 1
uint8 CONFIG_PRODUCT = 2

uint8     config_type
string    path
bool      set_persistent
---
bool      success
string    message

")

(setf (get im_pickit_msgs::LoadConfigResponse :md5sum-) "eab8b02e16fe6a8a2dd0ff58db907dfe")
(setf (get im_pickit_msgs::LoadConfigResponse :datatype-) "im_pickit_msgs/LoadConfigResponse")
(setf (get im_pickit_msgs::LoadConfigResponse :definition-)
      "uint8 CONFIG_SETUP = 1
uint8 CONFIG_PRODUCT = 2

uint8     config_type
string    path
bool      set_persistent
---
bool      success
string    message

")



(provide :im_pickit_msgs/LoadConfig "eab8b02e16fe6a8a2dd0ff58db907dfe")


