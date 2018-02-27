;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::LoadSnapshot)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'LoadSnapshot (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::LOADSNAPSHOT")
  (make-package "IM_PICKIT_MSGS::LOADSNAPSHOT"))
(unless (find-package "IM_PICKIT_MSGS::LOADSNAPSHOTREQUEST")
  (make-package "IM_PICKIT_MSGS::LOADSNAPSHOTREQUEST"))
(unless (find-package "IM_PICKIT_MSGS::LOADSNAPSHOTRESPONSE")
  (make-package "IM_PICKIT_MSGS::LOADSNAPSHOTRESPONSE"))

(in-package "ROS")





(defclass im_pickit_msgs::LoadSnapshotRequest
  :super ros::object
  :slots (_path ))

(defmethod im_pickit_msgs::LoadSnapshotRequest
  (:init
   (&key
    ((:path __path) "")
    )
   (send-super :init)
   (setq _path (string __path))
   self)
  (:path
   (&optional __path)
   (if __path (setq _path __path)) _path)
  (:serialization-length
   ()
   (+
    ;; string _path
    4 (length _path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _path
       (write-long (length _path) s) (princ _path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass im_pickit_msgs::LoadSnapshotResponse
  :super ros::object
  :slots (_success _message ))

(defmethod im_pickit_msgs::LoadSnapshotResponse
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

(defclass im_pickit_msgs::LoadSnapshot
  :super ros::object
  :slots ())

(setf (get im_pickit_msgs::LoadSnapshot :md5sum-) "a6bc470520bc753be0bc358804c232a4")
(setf (get im_pickit_msgs::LoadSnapshot :datatype-) "im_pickit_msgs/LoadSnapshot")
(setf (get im_pickit_msgs::LoadSnapshot :request) im_pickit_msgs::LoadSnapshotRequest)
(setf (get im_pickit_msgs::LoadSnapshot :response) im_pickit_msgs::LoadSnapshotResponse)

(defmethod im_pickit_msgs::LoadSnapshotRequest
  (:response () (instance im_pickit_msgs::LoadSnapshotResponse :init)))

(setf (get im_pickit_msgs::LoadSnapshotRequest :md5sum-) "a6bc470520bc753be0bc358804c232a4")
(setf (get im_pickit_msgs::LoadSnapshotRequest :datatype-) "im_pickit_msgs/LoadSnapshotRequest")
(setf (get im_pickit_msgs::LoadSnapshotRequest :definition-)
      "string    path
---
bool      success
string    message

")

(setf (get im_pickit_msgs::LoadSnapshotResponse :md5sum-) "a6bc470520bc753be0bc358804c232a4")
(setf (get im_pickit_msgs::LoadSnapshotResponse :datatype-) "im_pickit_msgs/LoadSnapshotResponse")
(setf (get im_pickit_msgs::LoadSnapshotResponse :definition-)
      "string    path
---
bool      success
string    message

")



(provide :im_pickit_msgs/LoadSnapshot "a6bc470520bc753be0bc358804c232a4")


