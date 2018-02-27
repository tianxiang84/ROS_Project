;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::ColorRangeRGB)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'ColorRangeRGB (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::COLORRANGERGB")
  (make-package "IM_PICKIT_MSGS::COLORRANGERGB"))

(in-package "ROS")
;;//! \htmlinclude ColorRangeRGB.msg.html


(defclass im_pickit_msgs::ColorRangeRGB
  :super ros::object
  :slots (_r_min _r_max _g_min _g_max _b_min _b_max _threshold ))

(defmethod im_pickit_msgs::ColorRangeRGB
  (:init
   (&key
    ((:r_min __r_min) 0)
    ((:r_max __r_max) 0)
    ((:g_min __g_min) 0)
    ((:g_max __g_max) 0)
    ((:b_min __b_min) 0)
    ((:b_max __b_max) 0)
    ((:threshold __threshold) 0)
    )
   (send-super :init)
   (setq _r_min (round __r_min))
   (setq _r_max (round __r_max))
   (setq _g_min (round __g_min))
   (setq _g_max (round __g_max))
   (setq _b_min (round __b_min))
   (setq _b_max (round __b_max))
   (setq _threshold (round __threshold))
   self)
  (:r_min
   (&optional __r_min)
   (if __r_min (setq _r_min __r_min)) _r_min)
  (:r_max
   (&optional __r_max)
   (if __r_max (setq _r_max __r_max)) _r_max)
  (:g_min
   (&optional __g_min)
   (if __g_min (setq _g_min __g_min)) _g_min)
  (:g_max
   (&optional __g_max)
   (if __g_max (setq _g_max __g_max)) _g_max)
  (:b_min
   (&optional __b_min)
   (if __b_min (setq _b_min __b_min)) _b_min)
  (:b_max
   (&optional __b_max)
   (if __b_max (setq _b_max __b_max)) _b_max)
  (:threshold
   (&optional __threshold)
   (if __threshold (setq _threshold __threshold)) _threshold)
  (:serialization-length
   ()
   (+
    ;; int32 _r_min
    4
    ;; int32 _r_max
    4
    ;; int32 _g_min
    4
    ;; int32 _g_max
    4
    ;; int32 _b_min
    4
    ;; int32 _b_max
    4
    ;; uint32 _threshold
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _r_min
       (write-long _r_min s)
     ;; int32 _r_max
       (write-long _r_max s)
     ;; int32 _g_min
       (write-long _g_min s)
     ;; int32 _g_max
       (write-long _g_max s)
     ;; int32 _b_min
       (write-long _b_min s)
     ;; int32 _b_max
       (write-long _b_max s)
     ;; uint32 _threshold
       (write-long _threshold s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _r_min
     (setq _r_min (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _r_max
     (setq _r_max (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _g_min
     (setq _g_min (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _g_max
     (setq _g_max (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _b_min
     (setq _b_min (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _b_max
     (setq _b_max (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _threshold
     (setq _threshold (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get im_pickit_msgs::ColorRangeRGB :md5sum-) "31b60f88d3839dd75fbd039dd46fec9a")
(setf (get im_pickit_msgs::ColorRangeRGB :datatype-) "im_pickit_msgs/ColorRangeRGB")
(setf (get im_pickit_msgs::ColorRangeRGB :definition-)
      "# An RGB-based color range.

# The range for the colors (from 0 to 255).
int32 r_min
int32 r_max
int32 g_min
int32 g_max
int32 b_min
int32 b_max

uint32 threshold
")



(provide :im_pickit_msgs/ColorRangeRGB "31b60f88d3839dd75fbd039dd46fec9a")


