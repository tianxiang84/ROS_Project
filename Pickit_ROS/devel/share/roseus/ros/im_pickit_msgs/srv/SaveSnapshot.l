;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::SaveSnapshot)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'SaveSnapshot (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::SAVESNAPSHOT")
  (make-package "IM_PICKIT_MSGS::SAVESNAPSHOT"))
(unless (find-package "IM_PICKIT_MSGS::SAVESNAPSHOTREQUEST")
  (make-package "IM_PICKIT_MSGS::SAVESNAPSHOTREQUEST"))
(unless (find-package "IM_PICKIT_MSGS::SAVESNAPSHOTRESPONSE")
  (make-package "IM_PICKIT_MSGS::SAVESNAPSHOTRESPONSE"))

(in-package "ROS")





(defclass im_pickit_msgs::SaveSnapshotRequest
  :super ros::object
  :slots (_snapshot_name _robot_request ))

(defmethod im_pickit_msgs::SaveSnapshotRequest
  (:init
   (&key
    ((:snapshot_name __snapshot_name) "")
    ((:robot_request __robot_request) nil)
    )
   (send-super :init)
   (setq _snapshot_name (string __snapshot_name))
   (setq _robot_request __robot_request)
   self)
  (:snapshot_name
   (&optional __snapshot_name)
   (if __snapshot_name (setq _snapshot_name __snapshot_name)) _snapshot_name)
  (:robot_request
   (&optional __robot_request)
   (if __robot_request (setq _robot_request __robot_request)) _robot_request)
  (:serialization-length
   ()
   (+
    ;; string _snapshot_name
    4 (length _snapshot_name)
    ;; bool _robot_request
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _snapshot_name
       (write-long (length _snapshot_name) s) (princ _snapshot_name s)
     ;; bool _robot_request
       (if _robot_request (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _snapshot_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _snapshot_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _robot_request
     (setq _robot_request (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass im_pickit_msgs::SaveSnapshotResponse
  :super ros::object
  :slots (_success _message ))

(defmethod im_pickit_msgs::SaveSnapshotResponse
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

(defclass im_pickit_msgs::SaveSnapshot
  :super ros::object
  :slots ())

(setf (get im_pickit_msgs::SaveSnapshot :md5sum-) "90190d82af18bd6fd2d3560080cbe804")
(setf (get im_pickit_msgs::SaveSnapshot :datatype-) "im_pickit_msgs/SaveSnapshot")
(setf (get im_pickit_msgs::SaveSnapshot :request) im_pickit_msgs::SaveSnapshotRequest)
(setf (get im_pickit_msgs::SaveSnapshot :response) im_pickit_msgs::SaveSnapshotResponse)

(defmethod im_pickit_msgs::SaveSnapshotRequest
  (:response () (instance im_pickit_msgs::SaveSnapshotResponse :init)))

(setf (get im_pickit_msgs::SaveSnapshotRequest :md5sum-) "90190d82af18bd6fd2d3560080cbe804")
(setf (get im_pickit_msgs::SaveSnapshotRequest :datatype-) "im_pickit_msgs/SaveSnapshotRequest")
(setf (get im_pickit_msgs::SaveSnapshotRequest :definition-)
      "string    snapshot_name
bool      robot_request
---
bool      success
string    message

")

(setf (get im_pickit_msgs::SaveSnapshotResponse :md5sum-) "90190d82af18bd6fd2d3560080cbe804")
(setf (get im_pickit_msgs::SaveSnapshotResponse :datatype-) "im_pickit_msgs/SaveSnapshotResponse")
(setf (get im_pickit_msgs::SaveSnapshotResponse :definition-)
      "string    snapshot_name
bool      robot_request
---
bool      success
string    message

")



(provide :im_pickit_msgs/SaveSnapshot "90190d82af18bd6fd2d3560080cbe804")


