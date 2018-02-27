# Definitions of event codes.
# System specific events.
int32 EVENT_SYSTEM_STARTED = 1
int32 EVENT_SYSTEM_CONFIGURED = 2


# Camera specific events.
int32 EVENT_CAMERA_CONNECTED = 21
int32 EVENT_CAMERA_DISCONNECTED = 22

# TODO: Add many more events here.

# Robot-camera calibration specific events.
int32 EVENT_RC_CALIBRATION_SUCCEEDED = 31
int32 EVENT_RC_CALIBRATION_REQUESTED = 32

# Region of Interest (ROI) specific events.
int32 EVENT_ROI_TEACHING_SUCCEEDED = 41

# Detection related events.
int32 EVENT_SINGLE_DETECTION_REQUESTED = 51

# Configuration related events.
int32 EVENT_CONFIGURATION_REQUESTED = 61

# Snapshot related events.
int32 EVENT_SNAPSHOT_REQUESTED = 81
int32 EVENT_SNAPSHOT_LOADED = 82

# Robot specific events.
int32 EVENT_ROBOT_NEXT_OBJECT_REQUESTED = 101


# Definitions of event sources.
int32 SOURCE_UNSPECIFIED = 0
int32 SOURCE_SYSTEM = 1
int32 SOURCE_CAMERA = 2
int32 SOURCE_ROBOT = 3
int32 SOURCE_WEB_INTERFACE = 4

# Message fields.
time stamp
int32 code
int32 source          # Only relevant for events where the origin is not clear.
string message        # Additional payload message.
