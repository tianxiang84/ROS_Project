## Copyright Intermodalics 2016
## This message contains all descriptive data for one object found by Pick-it ##

# Object index in list associated to a single detection run.
uint16                                  index

# Object frame expressed with respect to a frame.
geometry_msgs/TransformStamped          object_tf

# Object pick frame expressed with respect to a frame.
geometry_msgs/TransformStamped          object_pick_tf

# Object model used for registration, reliability score calculation and more.
ObjectModel                             model

# Number of scene points verifying the object model.
uint16                                  n_points

# Object dimensions. The contents of the x, y and z elements depend on the
# object type:
#
#  |   Type      |    X     |    Y     |    Z     |
#  |-------------|----------|----------|----------|
#  | CYLINDER    | length   | diameter | diameter |
#  | SPHERE      | diameter | diameter | diameter |
#  | RECTANGLE   | length   | width    |    0     |
#  | SQUARE      | length   | length   |    0     |
#  | ELLIPSE     | length   | width    |    0     |
#  | CIRCLE      | diameter | diameter |    0     |
#  | POINT_CLOUD | bbox X   | bbox Y   | bbox Z   |
#  | BLOB        | bbox X   | bbox Y   | bbox Z   |
#
# where 'bbox X' means the span of the object's bounding box along the X-axis.
geometry_msgs/Vector3                   dimensions

# Contains scoring metrics used to quantify the goodness of a detection.
Reliability                             reliability

# NOTE: There is currently an inconsistency between terms used in the
#       back-end vs. the front-end. The following table summarizes them to
#       prevent confusion:
#
#       BACK-END flag  maps to ->   FRONT-END detection grid column
#
#       is_pickable    maps to ->   Pickable
#       is_detectable  maps to ->   Valid
#       is_valid       maps to ->   <None>
#
#       Notice in particular how the is_valid back-end flag and the Valid
#       front-end detection grid column have different meanings.

# Flag that evaluates to true when an object is both pickable and detectable.
bool                                    is_valid

# Flag that evaluates to true when an object satisfies frame alignment and
# collision constraints.
bool                                    is_pickable

# Flag that evaluates to true when an object satisfies fitting, reliability and
# size constraints.
bool                                    is_detectable

# List of strings describing main detection status for invalid detections
# (e.g. ERROR, INVALID, UNPICKABLE).
# See CATEGORY strings in StatusXxx.msg files for available categories.
# The list is empty in case of a valid detection.
string[]                                categories

# List of substatus identifiers providing detail information for each of the
# above categories. There is one substatus per category.
# The list is empty in case of a valid detection.
SubStatus[]                             substatuses
