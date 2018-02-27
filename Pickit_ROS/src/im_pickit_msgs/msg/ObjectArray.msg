## Copyright Intermodalics 2014
## This message contains all objects found by the last Pick-it run ##

# Origin of the msg content
uint8 NEW_OBJECT_DETECTION = 2
uint8 RESET = 0

# Clustering methods
uint8 NO_CLUSTERING = 10
uint8 DISTANCE_BASED_CLUSTERING = 11
uint8 NORMAL_BASED_CLUSTERING = 12

std_msgs/Header                 header
uint8                           content
uint32                          encoder_stamp
geometry_msgs/TransformStamped  robot_to_camera_tf
geometry_msgs/TransformStamped  camera_to_reference_tf

float64                         cloud_capturing_duration

uint8                           clustering_method
uint16                          n_rejected_clusters
float64                         clustering_duration

float64                         calculation_time # Total object detection time

uint16                          n_valid_objects
uint16                          n_rejected_objects

im_pickit_msgs/Object[]         objects
