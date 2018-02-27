;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::CalibrationStatus)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'CalibrationStatus (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::CALIBRATIONSTATUS")
  (make-package "IM_PICKIT_MSGS::CALIBRATIONSTATUS"))

(in-package "ROS")
;;//! \htmlinclude CalibrationStatus.msg.html


(defclass im_pickit_msgs::CalibrationStatus
  :super ros::object
  :slots (_calibration_plate_visible _calibration_request_received _calibration_plate_localized _calibration_input_poses_received _calibration_calculated ))

(defmethod im_pickit_msgs::CalibrationStatus
  (:init
   (&key
    ((:calibration_plate_visible __calibration_plate_visible) nil)
    ((:calibration_request_received __calibration_request_received) nil)
    ((:calibration_plate_localized __calibration_plate_localized) nil)
    ((:calibration_input_poses_received __calibration_input_poses_received) nil)
    ((:calibration_calculated __calibration_calculated) nil)
    )
   (send-super :init)
   (setq _calibration_plate_visible __calibration_plate_visible)
   (setq _calibration_request_received __calibration_request_received)
   (setq _calibration_plate_localized __calibration_plate_localized)
   (setq _calibration_input_poses_received __calibration_input_poses_received)
   (setq _calibration_calculated __calibration_calculated)
   self)
  (:calibration_plate_visible
   (&optional __calibration_plate_visible)
   (if __calibration_plate_visible (setq _calibration_plate_visible __calibration_plate_visible)) _calibration_plate_visible)
  (:calibration_request_received
   (&optional __calibration_request_received)
   (if __calibration_request_received (setq _calibration_request_received __calibration_request_received)) _calibration_request_received)
  (:calibration_plate_localized
   (&optional __calibration_plate_localized)
   (if __calibration_plate_localized (setq _calibration_plate_localized __calibration_plate_localized)) _calibration_plate_localized)
  (:calibration_input_poses_received
   (&optional __calibration_input_poses_received)
   (if __calibration_input_poses_received (setq _calibration_input_poses_received __calibration_input_poses_received)) _calibration_input_poses_received)
  (:calibration_calculated
   (&optional __calibration_calculated)
   (if __calibration_calculated (setq _calibration_calculated __calibration_calculated)) _calibration_calculated)
  (:serialization-length
   ()
   (+
    ;; bool _calibration_plate_visible
    1
    ;; bool _calibration_request_received
    1
    ;; bool _calibration_plate_localized
    1
    ;; bool _calibration_input_poses_received
    1
    ;; bool _calibration_calculated
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _calibration_plate_visible
       (if _calibration_plate_visible (write-byte -1 s) (write-byte 0 s))
     ;; bool _calibration_request_received
       (if _calibration_request_received (write-byte -1 s) (write-byte 0 s))
     ;; bool _calibration_plate_localized
       (if _calibration_plate_localized (write-byte -1 s) (write-byte 0 s))
     ;; bool _calibration_input_poses_received
       (if _calibration_input_poses_received (write-byte -1 s) (write-byte 0 s))
     ;; bool _calibration_calculated
       (if _calibration_calculated (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _calibration_plate_visible
     (setq _calibration_plate_visible (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _calibration_request_received
     (setq _calibration_request_received (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _calibration_plate_localized
     (setq _calibration_plate_localized (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _calibration_input_poses_received
     (setq _calibration_input_poses_received (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _calibration_calculated
     (setq _calibration_calculated (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get im_pickit_msgs::CalibrationStatus :md5sum-) "eb9e08f442b346d90200848306f7f520")
(setf (get im_pickit_msgs::CalibrationStatus :datatype-) "im_pickit_msgs/CalibrationStatus")
(setf (get im_pickit_msgs::CalibrationStatus :definition-)
      "## Copyright Pick-it NV 2017
## This message contains Calibration status information  ##

bool calibration_plate_visible
bool calibration_request_received
bool calibration_plate_localized
bool calibration_input_poses_received

bool calibration_calculated

")



(provide :im_pickit_msgs/CalibrationStatus "eb9e08f442b346d90200848306f7f520")


