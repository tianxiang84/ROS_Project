;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::ReliabilityValue)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'ReliabilityValue (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::RELIABILITYVALUE")
  (make-package "IM_PICKIT_MSGS::RELIABILITYVALUE"))

(in-package "ROS")
;;//! \htmlinclude ReliabilityValue.msg.html


(defclass im_pickit_msgs::ReliabilityValue
  :super ros::object
  :slots (_value _required_value _has_upper_limit ))

(defmethod im_pickit_msgs::ReliabilityValue
  (:init
   (&key
    ((:value __value) 0.0)
    ((:required_value __required_value) 0.0)
    ((:has_upper_limit __has_upper_limit) nil)
    )
   (send-super :init)
   (setq _value (float __value))
   (setq _required_value (float __required_value))
   (setq _has_upper_limit __has_upper_limit)
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:required_value
   (&optional __required_value)
   (if __required_value (setq _required_value __required_value)) _required_value)
  (:has_upper_limit
   (&optional __has_upper_limit)
   (if __has_upper_limit (setq _has_upper_limit __has_upper_limit)) _has_upper_limit)
  (:serialization-length
   ()
   (+
    ;; float64 _value
    8
    ;; float64 _required_value
    8
    ;; bool _has_upper_limit
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _required_value
       (sys::poke _required_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _has_upper_limit
       (if _has_upper_limit (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _required_value
     (setq _required_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _has_upper_limit
     (setq _has_upper_limit (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get im_pickit_msgs::ReliabilityValue :md5sum-) "9c363c22be8a9bef0476a084792fea44")
(setf (get im_pickit_msgs::ReliabilityValue :datatype-) "im_pickit_msgs/ReliabilityValue")
(setf (get im_pickit_msgs::ReliabilityValue :definition-)
      "float64 value
float64 required_value

# mostly we work with lower limits so usually this is false
bool has_upper_limit     
")



(provide :im_pickit_msgs/ReliabilityValue "9c363c22be8a9bef0476a084792fea44")


