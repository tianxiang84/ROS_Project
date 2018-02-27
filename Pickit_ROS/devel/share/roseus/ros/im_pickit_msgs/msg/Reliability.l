;; Auto-generated. Do not edit!


(when (boundp 'im_pickit_msgs::Reliability)
  (if (not (find-package "IM_PICKIT_MSGS"))
    (make-package "IM_PICKIT_MSGS"))
  (shadow 'Reliability (find-package "IM_PICKIT_MSGS")))
(unless (find-package "IM_PICKIT_MSGS::RELIABILITY")
  (make-package "IM_PICKIT_MSGS::RELIABILITY"))

(in-package "ROS")
;;//! \htmlinclude Reliability.msg.html


(defclass im_pickit_msgs::Reliability
  :super ros::object
  :slots (_scene_coverage_2d _scene_coverage_3d _model_contour_coverage_2d _model_surface_coverage_2d _model_coverage_3d ))

(defmethod im_pickit_msgs::Reliability
  (:init
   (&key
    ((:scene_coverage_2d __scene_coverage_2d) (instance im_pickit_msgs::ReliabilityValue :init))
    ((:scene_coverage_3d __scene_coverage_3d) (instance im_pickit_msgs::ReliabilityValue :init))
    ((:model_contour_coverage_2d __model_contour_coverage_2d) (instance im_pickit_msgs::ReliabilityValue :init))
    ((:model_surface_coverage_2d __model_surface_coverage_2d) (instance im_pickit_msgs::ReliabilityValue :init))
    ((:model_coverage_3d __model_coverage_3d) (instance im_pickit_msgs::ReliabilityValue :init))
    )
   (send-super :init)
   (setq _scene_coverage_2d __scene_coverage_2d)
   (setq _scene_coverage_3d __scene_coverage_3d)
   (setq _model_contour_coverage_2d __model_contour_coverage_2d)
   (setq _model_surface_coverage_2d __model_surface_coverage_2d)
   (setq _model_coverage_3d __model_coverage_3d)
   self)
  (:scene_coverage_2d
   (&rest __scene_coverage_2d)
   (if (keywordp (car __scene_coverage_2d))
       (send* _scene_coverage_2d __scene_coverage_2d)
     (progn
       (if __scene_coverage_2d (setq _scene_coverage_2d (car __scene_coverage_2d)))
       _scene_coverage_2d)))
  (:scene_coverage_3d
   (&rest __scene_coverage_3d)
   (if (keywordp (car __scene_coverage_3d))
       (send* _scene_coverage_3d __scene_coverage_3d)
     (progn
       (if __scene_coverage_3d (setq _scene_coverage_3d (car __scene_coverage_3d)))
       _scene_coverage_3d)))
  (:model_contour_coverage_2d
   (&rest __model_contour_coverage_2d)
   (if (keywordp (car __model_contour_coverage_2d))
       (send* _model_contour_coverage_2d __model_contour_coverage_2d)
     (progn
       (if __model_contour_coverage_2d (setq _model_contour_coverage_2d (car __model_contour_coverage_2d)))
       _model_contour_coverage_2d)))
  (:model_surface_coverage_2d
   (&rest __model_surface_coverage_2d)
   (if (keywordp (car __model_surface_coverage_2d))
       (send* _model_surface_coverage_2d __model_surface_coverage_2d)
     (progn
       (if __model_surface_coverage_2d (setq _model_surface_coverage_2d (car __model_surface_coverage_2d)))
       _model_surface_coverage_2d)))
  (:model_coverage_3d
   (&rest __model_coverage_3d)
   (if (keywordp (car __model_coverage_3d))
       (send* _model_coverage_3d __model_coverage_3d)
     (progn
       (if __model_coverage_3d (setq _model_coverage_3d (car __model_coverage_3d)))
       _model_coverage_3d)))
  (:serialization-length
   ()
   (+
    ;; im_pickit_msgs/ReliabilityValue _scene_coverage_2d
    (send _scene_coverage_2d :serialization-length)
    ;; im_pickit_msgs/ReliabilityValue _scene_coverage_3d
    (send _scene_coverage_3d :serialization-length)
    ;; im_pickit_msgs/ReliabilityValue _model_contour_coverage_2d
    (send _model_contour_coverage_2d :serialization-length)
    ;; im_pickit_msgs/ReliabilityValue _model_surface_coverage_2d
    (send _model_surface_coverage_2d :serialization-length)
    ;; im_pickit_msgs/ReliabilityValue _model_coverage_3d
    (send _model_coverage_3d :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; im_pickit_msgs/ReliabilityValue _scene_coverage_2d
       (send _scene_coverage_2d :serialize s)
     ;; im_pickit_msgs/ReliabilityValue _scene_coverage_3d
       (send _scene_coverage_3d :serialize s)
     ;; im_pickit_msgs/ReliabilityValue _model_contour_coverage_2d
       (send _model_contour_coverage_2d :serialize s)
     ;; im_pickit_msgs/ReliabilityValue _model_surface_coverage_2d
       (send _model_surface_coverage_2d :serialize s)
     ;; im_pickit_msgs/ReliabilityValue _model_coverage_3d
       (send _model_coverage_3d :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; im_pickit_msgs/ReliabilityValue _scene_coverage_2d
     (send _scene_coverage_2d :deserialize buf ptr-) (incf ptr- (send _scene_coverage_2d :serialization-length))
   ;; im_pickit_msgs/ReliabilityValue _scene_coverage_3d
     (send _scene_coverage_3d :deserialize buf ptr-) (incf ptr- (send _scene_coverage_3d :serialization-length))
   ;; im_pickit_msgs/ReliabilityValue _model_contour_coverage_2d
     (send _model_contour_coverage_2d :deserialize buf ptr-) (incf ptr- (send _model_contour_coverage_2d :serialization-length))
   ;; im_pickit_msgs/ReliabilityValue _model_surface_coverage_2d
     (send _model_surface_coverage_2d :deserialize buf ptr-) (incf ptr- (send _model_surface_coverage_2d :serialization-length))
   ;; im_pickit_msgs/ReliabilityValue _model_coverage_3d
     (send _model_coverage_3d :deserialize buf ptr-) (incf ptr- (send _model_coverage_3d :serialization-length))
   ;;
   self)
  )

(setf (get im_pickit_msgs::Reliability :md5sum-) "685a54d871aab00bbe45a67c03dafaea")
(setf (get im_pickit_msgs::Reliability :datatype-) "im_pickit_msgs/Reliability")
(setf (get im_pickit_msgs::Reliability :definition-)
      "## Contains all parameters describing reliability of detected object
## Values expressed as confidence levels ranging from 0.0 to 1.0

## Ratio of inlier points close to the border of the \"Intermodalics hole\" and
## all points of the \"Intermodalics hole\".
ReliabilityValue scene_coverage_2d

## Ratio of inlier points to all points in the cluster.
ReliabilityValue scene_coverage_3d

### TODO(@wannesvanloock): Add description pls.
ReliabilityValue model_contour_coverage_2d
### TODO(@wannesvanloock): Add description pls.
ReliabilityValue model_surface_coverage_2d

## 3D reliability of the matched model
ReliabilityValue model_coverage_3d

================================================================================
MSG: im_pickit_msgs/ReliabilityValue
float64 value
float64 required_value

# mostly we work with lower limits so usually this is false
bool has_upper_limit     
")



(provide :im_pickit_msgs/Reliability "685a54d871aab00bbe45a67c03dafaea")


