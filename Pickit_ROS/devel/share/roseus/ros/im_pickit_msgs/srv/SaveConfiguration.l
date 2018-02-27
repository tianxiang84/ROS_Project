;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::SaveConfiguration)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'SaveConfiguration (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::SAVECONFIGURATION")
  (make-package "IM_PICKIT_MSGS::SAVECONFIGURATION"))
(unless (find-package "IM_PICKIT_MSGS::SAVECONFIGURATIONREQUEST")
  (make-package "IM_PICKIT_MSGS::SAVECONFIGURATIONREQUEST"))
(unless (find-package "IM_PICKIT_MSGS::SAVECONFIGURATIONRESPONSE")
  (make-package "IM_PICKIT_MSGS::SAVECONFIGURATIONRESPONSE"))

(in-package "ROS")





(intern "*STATUS_SUCCESS*" (find-package "IM_PICKIT_MSGS::SAVECONFIGURATIONREQUEST"))
(shadow '*STATUS_SUCCESS* (find-package "IM_PICKIT_MSGS::SAVECONFIGURATIONREQUEST"))
(defconstant im_pickit_msgs::SaveConfigurationRequest::*STATUS_SUCCESS* 10)
(intern "*STATUS_FAILURE*" (find-package "IM_PICKIT_MSGS::SAVECONFIGURATIONREQUEST"))
(shadow '*STATUS_FAILURE* (find-package "IM_PICKIT_MSGS::SAVECONFIGURATIONREQUEST"))
(defconstant im_pickit_msgs::SaveConfigurationRequest::*STATUS_FAILURE* 20)
(intern "*STATUS_INVALID_FILENAME*" (find-package "IM_PICKIT_MSGS::SAVECONFIGURATIONREQUEST"))
(shadow '*STATUS_INVALID_FILENAME* (find-package "IM_PICKIT_MSGS::SAVECONFIGURATIONREQUEST"))
(defconstant im_pickit_msgs::SaveConfigurationRequest::*STATUS_INVALID_FILENAME* 22)
(defclass im_pickit_msgs::SaveConfigurationRequest
  :super ros::object
  :slots (_config_file_path _set_active ))

(defmethod im_pickit_msgs::SaveConfigurationRequest
  (:init
   (&key
    ((:config_file_path __config_file_path) "")
    ((:set_active __set_active) nil)
    )
   (send-super :init)
   (setq _config_file_path (string __config_file_path))
   (setq _set_active __set_active)
   self)
  (:config_file_path
   (&optional __config_file_path)
   (if __config_file_path (setq _config_file_path __config_file_path)) _config_file_path)
  (:set_active
   (&optional __set_active)
   (if __set_active (setq _set_active __set_active)) _set_active)
  (:serialization-length
   ()
   (+
    ;; string _config_file_path
    4 (length _config_file_path)
    ;; bool _set_active
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _config_file_path
       (write-long (length _config_file_path) s) (princ _config_file_path s)
     ;; bool _set_active
       (if _set_active (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _config_file_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _config_file_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _set_active
     (setq _set_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass im_pickit_msgs::SaveConfigurationResponse
  :super ros::object
  :slots (_status _message ))

(defmethod im_pickit_msgs::SaveConfigurationResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _message (string __message))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass im_pickit_msgs::SaveConfiguration
  :super ros::object
  :slots ())

(setf (get im_pickit_msgs::SaveConfiguration :md5sum-) "0dd17841f9345006b1b64154016fca6c")
(setf (get im_pickit_msgs::SaveConfiguration :datatype-) "im_pickit_msgs/SaveConfiguration")
(setf (get im_pickit_msgs::SaveConfiguration :request) im_pickit_msgs::SaveConfigurationRequest)
(setf (get im_pickit_msgs::SaveConfiguration :response) im_pickit_msgs::SaveConfigurationResponse)

(defmethod im_pickit_msgs::SaveConfigurationRequest
  (:response () (instance im_pickit_msgs::SaveConfigurationResponse :init)))

(setf (get im_pickit_msgs::SaveConfigurationRequest :md5sum-) "0dd17841f9345006b1b64154016fca6c")
(setf (get im_pickit_msgs::SaveConfigurationRequest :datatype-) "im_pickit_msgs/SaveConfigurationRequest")
(setf (get im_pickit_msgs::SaveConfigurationRequest :definition-)
      "uint8 STATUS_SUCCESS          = 10
uint8 STATUS_FAILURE          = 20

uint8 STATUS_INVALID_FILENAME = 22

string    config_file_path
bool      set_active
---
uint8     status
string    message

")

(setf (get im_pickit_msgs::SaveConfigurationResponse :md5sum-) "0dd17841f9345006b1b64154016fca6c")
(setf (get im_pickit_msgs::SaveConfigurationResponse :datatype-) "im_pickit_msgs/SaveConfigurationResponse")
(setf (get im_pickit_msgs::SaveConfigurationResponse :definition-)
      "uint8 STATUS_SUCCESS          = 10
uint8 STATUS_FAILURE          = 20

uint8 STATUS_INVALID_FILENAME = 22

string    config_file_path
bool      set_active
---
uint8     status
string    message

")



(provide :im_pickit_msgs/SaveConfiguration "0dd17841f9345006b1b64154016fca6c")


