;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::SnapshotStatus)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'SnapshotStatus (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::SNAPSHOTSTATUS")
  (make-package "IM_PICKIT_MSGS::SNAPSHOTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SnapshotStatus.msg.html


(defclass im_pickit_msgs::SnapshotStatus
  :super ros::object
  :slots (_snapshot_mode _snapshot_name _system_id _pickit_version _robot_type ))

(defmethod im_pickit_msgs::SnapshotStatus
  (:init
   (&key
    ((:snapshot_mode __snapshot_mode) nil)
    ((:snapshot_name __snapshot_name) "")
    ((:system_id __system_id) "")
    ((:pickit_version __pickit_version) "")
    ((:robot_type __robot_type) "")
    )
   (send-super :init)
   (setq _snapshot_mode __snapshot_mode)
   (setq _snapshot_name (string __snapshot_name))
   (setq _system_id (string __system_id))
   (setq _pickit_version (string __pickit_version))
   (setq _robot_type (string __robot_type))
   self)
  (:snapshot_mode
   (&optional __snapshot_mode)
   (if __snapshot_mode (setq _snapshot_mode __snapshot_mode)) _snapshot_mode)
  (:snapshot_name
   (&optional __snapshot_name)
   (if __snapshot_name (setq _snapshot_name __snapshot_name)) _snapshot_name)
  (:system_id
   (&optional __system_id)
   (if __system_id (setq _system_id __system_id)) _system_id)
  (:pickit_version
   (&optional __pickit_version)
   (if __pickit_version (setq _pickit_version __pickit_version)) _pickit_version)
  (:robot_type
   (&optional __robot_type)
   (if __robot_type (setq _robot_type __robot_type)) _robot_type)
  (:serialization-length
   ()
   (+
    ;; bool _snapshot_mode
    1
    ;; string _snapshot_name
    4 (length _snapshot_name)
    ;; string _system_id
    4 (length _system_id)
    ;; string _pickit_version
    4 (length _pickit_version)
    ;; string _robot_type
    4 (length _robot_type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _snapshot_mode
       (if _snapshot_mode (write-byte -1 s) (write-byte 0 s))
     ;; string _snapshot_name
       (write-long (length _snapshot_name) s) (princ _snapshot_name s)
     ;; string _system_id
       (write-long (length _system_id) s) (princ _system_id s)
     ;; string _pickit_version
       (write-long (length _pickit_version) s) (princ _pickit_version s)
     ;; string _robot_type
       (write-long (length _robot_type) s) (princ _robot_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _snapshot_mode
     (setq _snapshot_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _snapshot_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _snapshot_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _system_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _system_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _pickit_version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pickit_version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _robot_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get im_pickit_msgs::SnapshotStatus :md5sum-) "e1c1150594163791dcb2936812dacac0")
(setf (get im_pickit_msgs::SnapshotStatus :datatype-) "im_pickit_msgs/SnapshotStatus")
(setf (get im_pickit_msgs::SnapshotStatus :definition-)
      "bool snapshot_mode            # boolean indicating whether we are in snapshot mode or not
string snapshot_name          # name of the loaded snapshot
string system_id                  # Hostname of the machine that generated the snapshot
string pickit_version             # Git hash in case of compilation from source OR pickit version
string robot_type                 # Robot type from the socket interface.

")



(provide :im_pickit_msgs/SnapshotStatus "e1c1150594163791dcb2936812dacac0")


