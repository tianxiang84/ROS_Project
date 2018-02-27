;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::SubStatus)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'SubStatus (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::SUBSTATUS")
  (make-package "IM_PICKIT_MSGS::SUBSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SubStatus.msg.html


(defclass im_pickit_msgs::SubStatus
  :super ros::object
  :slots (_substatus _detail ))

(defmethod im_pickit_msgs::SubStatus
  (:init
   (&key
    ((:substatus __substatus) 0)
    ((:detail __detail) "")
    )
   (send-super :init)
   (setq _substatus (round __substatus))
   (setq _detail (string __detail))
   self)
  (:substatus
   (&optional __substatus)
   (if __substatus (setq _substatus __substatus)) _substatus)
  (:detail
   (&optional __detail)
   (if __detail (setq _detail __detail)) _detail)
  (:serialization-length
   ()
   (+
    ;; uint16 _substatus
    2
    ;; string _detail
    4 (length _detail)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _substatus
       (write-word _substatus s)
     ;; string _detail
       (write-long (length _detail) s) (princ _detail s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _substatus
     (setq _substatus (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _detail
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _detail (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get im_pickit_msgs::SubStatus :md5sum-) "637c475b1be22ba7a5f49036bb64ff8b")
(setf (get im_pickit_msgs::SubStatus :datatype-) "im_pickit_msgs/SubStatus")
(setf (get im_pickit_msgs::SubStatus :definition-)
      "# Rejected object substatus:
#  - StatusUnpickable (orange)
#  - StatusInvalid (red)
#  - StatusDiscarded (no marker)

uint16 substatus
string detail

")



(provide :im_pickit_msgs/SubStatus "637c475b1be22ba7a5f49036bb64ff8b")


