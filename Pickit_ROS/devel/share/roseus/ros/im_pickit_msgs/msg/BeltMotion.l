;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::BeltMotion)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'BeltMotion (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::BELTMOTION")
  (make-package "IM_PICKIT_MSGS::BELTMOTION"))

(in-package "ROS")
;;//! \htmlinclude BeltMotion.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass im_pickit_msgs::BeltMotion
  :super ros::object
  :slots (_frame_id _child_frame_id _object_motion_type _camera_to_belt_tf _belt_speed_magnitude _belt_normalised_speed_vector ))

(defmethod im_pickit_msgs::BeltMotion
  (:init
   (&key
    ((:frame_id __frame_id) "")
    ((:child_frame_id __child_frame_id) "")
    ((:object_motion_type __object_motion_type) 0)
    ((:camera_to_belt_tf __camera_to_belt_tf) (instance geometry_msgs::Transform :init))
    ((:belt_speed_magnitude __belt_speed_magnitude) 0.0)
    ((:belt_normalised_speed_vector __belt_normalised_speed_vector) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _frame_id (string __frame_id))
   (setq _child_frame_id (string __child_frame_id))
   (setq _object_motion_type (round __object_motion_type))
   (setq _camera_to_belt_tf __camera_to_belt_tf)
   (setq _belt_speed_magnitude (float __belt_speed_magnitude))
   (setq _belt_normalised_speed_vector __belt_normalised_speed_vector)
   self)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:child_frame_id
   (&optional __child_frame_id)
   (if __child_frame_id (setq _child_frame_id __child_frame_id)) _child_frame_id)
  (:object_motion_type
   (&optional __object_motion_type)
   (if __object_motion_type (setq _object_motion_type __object_motion_type)) _object_motion_type)
  (:camera_to_belt_tf
   (&rest __camera_to_belt_tf)
   (if (keywordp (car __camera_to_belt_tf))
       (send* _camera_to_belt_tf __camera_to_belt_tf)
     (progn
       (if __camera_to_belt_tf (setq _camera_to_belt_tf (car __camera_to_belt_tf)))
       _camera_to_belt_tf)))
  (:belt_speed_magnitude
   (&optional __belt_speed_magnitude)
   (if __belt_speed_magnitude (setq _belt_speed_magnitude __belt_speed_magnitude)) _belt_speed_magnitude)
  (:belt_normalised_speed_vector
   (&rest __belt_normalised_speed_vector)
   (if (keywordp (car __belt_normalised_speed_vector))
       (send* _belt_normalised_speed_vector __belt_normalised_speed_vector)
     (progn
       (if __belt_normalised_speed_vector (setq _belt_normalised_speed_vector (car __belt_normalised_speed_vector)))
       _belt_normalised_speed_vector)))
  (:serialization-length
   ()
   (+
    ;; string _frame_id
    4 (length _frame_id)
    ;; string _child_frame_id
    4 (length _child_frame_id)
    ;; int32 _object_motion_type
    4
    ;; geometry_msgs/Transform _camera_to_belt_tf
    (send _camera_to_belt_tf :serialization-length)
    ;; float64 _belt_speed_magnitude
    8
    ;; geometry_msgs/Vector3 _belt_normalised_speed_vector
    (send _belt_normalised_speed_vector :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; string _child_frame_id
       (write-long (length _child_frame_id) s) (princ _child_frame_id s)
     ;; int32 _object_motion_type
       (write-long _object_motion_type s)
     ;; geometry_msgs/Transform _camera_to_belt_tf
       (send _camera_to_belt_tf :serialize s)
     ;; float64 _belt_speed_magnitude
       (sys::poke _belt_speed_magnitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _belt_normalised_speed_vector
       (send _belt_normalised_speed_vector :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _child_frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _child_frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _object_motion_type
     (setq _object_motion_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Transform _camera_to_belt_tf
     (send _camera_to_belt_tf :deserialize buf ptr-) (incf ptr- (send _camera_to_belt_tf :serialization-length))
   ;; float64 _belt_speed_magnitude
     (setq _belt_speed_magnitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _belt_normalised_speed_vector
     (send _belt_normalised_speed_vector :deserialize buf ptr-) (incf ptr- (send _belt_normalised_speed_vector :serialization-length))
   ;;
   self)
  )

(setf (get im_pickit_msgs::BeltMotion :md5sum-) "e1418c364a9790e036636f3c087e1c72")
(setf (get im_pickit_msgs::BeltMotion :datatype-) "im_pickit_msgs/BeltMotion")
(setf (get im_pickit_msgs::BeltMotion :definition-)
      "## Copyright Intermodalics 2014
# Angular twist message

string frame_id											# Parent frame (camera)
string child_frame_id									# Child frame (belt)
int32 object_motion_type								# Object motion type 0 = static, 1 = linear, 2 = angular														
geometry_msgs/Transform camera_to_belt_tf				# Camera to belt frame. Transforms belt to camera coordinates.
														# - std_msgs/Header header
														# - string child_frame_id
														# - geometry_msgs/Transform transform
														
float64 belt_speed_magnitude							# Magnitude linear velocity
geometry_msgs/Vector3 belt_normalised_speed_vector		# Direction of linear speed in belt frame

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :im_pickit_msgs/BeltMotion "e1418c364a9790e036636f3c087e1c72")


