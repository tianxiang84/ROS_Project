;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::File)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'File (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::FILE")
  (make-package "IM_PICKIT_MSGS::FILE"))

(in-package "ROS")
;;//! \htmlinclude File.msg.html


(defclass im_pickit_msgs::File
  :super ros::object
  :slots (_file_id _file_name _readonly ))

(defmethod im_pickit_msgs::File
  (:init
   (&key
    ((:file_id __file_id) 0)
    ((:file_name __file_name) "")
    ((:readonly __readonly) nil)
    )
   (send-super :init)
   (setq _file_id (round __file_id))
   (setq _file_name (string __file_name))
   (setq _readonly __readonly)
   self)
  (:file_id
   (&optional __file_id)
   (if __file_id (setq _file_id __file_id)) _file_id)
  (:file_name
   (&optional __file_name)
   (if __file_name (setq _file_name __file_name)) _file_name)
  (:readonly
   (&optional __readonly)
   (if __readonly (setq _readonly __readonly)) _readonly)
  (:serialization-length
   ()
   (+
    ;; int32 _file_id
    4
    ;; string _file_name
    4 (length _file_name)
    ;; bool _readonly
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _file_id
       (write-long _file_id s)
     ;; string _file_name
       (write-long (length _file_name) s) (princ _file_name s)
     ;; bool _readonly
       (if _readonly (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _file_id
     (setq _file_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _file_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _readonly
     (setq _readonly (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get im_pickit_msgs::File :md5sum-) "4c4f24261c48aaf171f33bc1655b7b8b")
(setf (get im_pickit_msgs::File :datatype-) "im_pickit_msgs/File")
(setf (get im_pickit_msgs::File :definition-)
      "## Copyright Intermodalics 2015
int32        file_id
string       file_name
bool         readonly
")



(provide :im_pickit_msgs/File "4c4f24261c48aaf171f33bc1655b7b8b")


