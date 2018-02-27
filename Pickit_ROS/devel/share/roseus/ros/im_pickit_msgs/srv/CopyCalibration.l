;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::CopyCalibration)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'CopyCalibration (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::COPYCALIBRATION")
  (make-package "IM_PICKIT_MSGS::COPYCALIBRATION"))
(unless (find-package "IM_PICKIT_MSGS::COPYCALIBRATIONREQUEST")
  (make-package "IM_PICKIT_MSGS::COPYCALIBRATIONREQUEST"))
(unless (find-package "IM_PICKIT_MSGS::COPYCALIBRATIONRESPONSE")
  (make-package "IM_PICKIT_MSGS::COPYCALIBRATIONRESPONSE"))

(in-package "ROS")





(defclass im_pickit_msgs::CopyCalibrationRequest
  :super ros::object
  :slots (_source_setup_file _target_setup_file ))

(defmethod im_pickit_msgs::CopyCalibrationRequest
  (:init
   (&key
    ((:source_setup_file __source_setup_file) "")
    ((:target_setup_file __target_setup_file) "")
    )
   (send-super :init)
   (setq _source_setup_file (string __source_setup_file))
   (setq _target_setup_file (string __target_setup_file))
   self)
  (:source_setup_file
   (&optional __source_setup_file)
   (if __source_setup_file (setq _source_setup_file __source_setup_file)) _source_setup_file)
  (:target_setup_file
   (&optional __target_setup_file)
   (if __target_setup_file (setq _target_setup_file __target_setup_file)) _target_setup_file)
  (:serialization-length
   ()
   (+
    ;; string _source_setup_file
    4 (length _source_setup_file)
    ;; string _target_setup_file
    4 (length _target_setup_file)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _source_setup_file
       (write-long (length _source_setup_file) s) (princ _source_setup_file s)
     ;; string _target_setup_file
       (write-long (length _target_setup_file) s) (princ _target_setup_file s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _source_setup_file
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _source_setup_file (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _target_setup_file
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_setup_file (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass im_pickit_msgs::CopyCalibrationResponse
  :super ros::object
  :slots (_success _message ))

(defmethod im_pickit_msgs::CopyCalibrationResponse
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

(defclass im_pickit_msgs::CopyCalibration
  :super ros::object
  :slots ())

(setf (get im_pickit_msgs::CopyCalibration :md5sum-) "7d0f212b9fa08ad9ba6469711447fcc6")
(setf (get im_pickit_msgs::CopyCalibration :datatype-) "im_pickit_msgs/CopyCalibration")
(setf (get im_pickit_msgs::CopyCalibration :request) im_pickit_msgs::CopyCalibrationRequest)
(setf (get im_pickit_msgs::CopyCalibration :response) im_pickit_msgs::CopyCalibrationResponse)

(defmethod im_pickit_msgs::CopyCalibrationRequest
  (:response () (instance im_pickit_msgs::CopyCalibrationResponse :init)))

(setf (get im_pickit_msgs::CopyCalibrationRequest :md5sum-) "7d0f212b9fa08ad9ba6469711447fcc6")
(setf (get im_pickit_msgs::CopyCalibrationRequest :datatype-) "im_pickit_msgs/CopyCalibrationRequest")
(setf (get im_pickit_msgs::CopyCalibrationRequest :definition-)
      "
string    source_setup_file
string    target_setup_file
---
bool      success
string    message

")

(setf (get im_pickit_msgs::CopyCalibrationResponse :md5sum-) "7d0f212b9fa08ad9ba6469711447fcc6")
(setf (get im_pickit_msgs::CopyCalibrationResponse :datatype-) "im_pickit_msgs/CopyCalibrationResponse")
(setf (get im_pickit_msgs::CopyCalibrationResponse :definition-)
      "
string    source_setup_file
string    target_setup_file
---
bool      success
string    message

")



(provide :im_pickit_msgs/CopyCalibration "7d0f212b9fa08ad9ba6469711447fcc6")


