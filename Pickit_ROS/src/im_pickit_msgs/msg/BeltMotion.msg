## Copyright Intermodalics 2014
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
