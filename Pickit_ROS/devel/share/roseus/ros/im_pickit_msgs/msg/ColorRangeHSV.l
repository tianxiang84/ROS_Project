;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::ColorRangeHSV)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'ColorRangeHSV (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::COLORRANGEHSV")
  (make-package "IM_PICKIT_MSGS::COLORRANGEHSV"))

(in-package "ROS")
;;//! \htmlinclude ColorRangeHSV.msg.html


(defclass im_pickit_msgs::ColorRangeHSV
  :super ros::object
  :slots (_h_min _h_max _s_min _s_max _v_min _v_max ))

(defmethod im_pickit_msgs::ColorRangeHSV
  (:init
   (&key
    ((:h_min __h_min) 0)
    ((:h_max __h_max) 0)
    ((:s_min __s_min) 0.0)
    ((:s_max __s_max) 0.0)
    ((:v_min __v_min) 0.0)
    ((:v_max __v_max) 0.0)
    )
   (send-super :init)
   (setq _h_min (round __h_min))
   (setq _h_max (round __h_max))
   (setq _s_min (float __s_min))
   (setq _s_max (float __s_max))
   (setq _v_min (float __v_min))
   (setq _v_max (float __v_max))
   self)
  (:h_min
   (&optional __h_min)
   (if __h_min (setq _h_min __h_min)) _h_min)
  (:h_max
   (&optional __h_max)
   (if __h_max (setq _h_max __h_max)) _h_max)
  (:s_min
   (&optional __s_min)
   (if __s_min (setq _s_min __s_min)) _s_min)
  (:s_max
   (&optional __s_max)
   (if __s_max (setq _s_max __s_max)) _s_max)
  (:v_min
   (&optional __v_min)
   (if __v_min (setq _v_min __v_min)) _v_min)
  (:v_max
   (&optional __v_max)
   (if __v_max (setq _v_max __v_max)) _v_max)
  (:serialization-length
   ()
   (+
    ;; uint32 _h_min
    4
    ;; uint32 _h_max
    4
    ;; float64 _s_min
    8
    ;; float64 _s_max
    8
    ;; float64 _v_min
    8
    ;; float64 _v_max
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _h_min
       (write-long _h_min s)
     ;; uint32 _h_max
       (write-long _h_max s)
     ;; float64 _s_min
       (sys::poke _s_min (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _s_max
       (sys::poke _s_max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_min
       (sys::poke _v_min (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_max
       (sys::poke _v_max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _h_min
     (setq _h_min (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _h_max
     (setq _h_max (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _s_min
     (setq _s_min (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _s_max
     (setq _s_max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_min
     (setq _v_min (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_max
     (setq _v_max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get im_pickit_msgs::ColorRangeHSV :md5sum-) "54efefea98c15a07b7359b9e855639cf")
(setf (get im_pickit_msgs::ColorRangeHSV :datatype-) "im_pickit_msgs/ColorRangeHSV")
(setf (get im_pickit_msgs::ColorRangeHSV :definition-)
      "# An HSV-based color range.

# The range for the color representation. 
# Hue: range is from 0 to 360.
uint32 h_min
uint32 h_max
# Saturation: range is from 0 to 1.
float64 s_min
float64 s_max
# Saturation: range is from 0 to 1.
float64 v_min
float64 v_max

")



(provide :im_pickit_msgs/ColorRangeHSV "54efefea98c15a07b7359b9e855639cf")


