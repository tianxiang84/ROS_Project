// Auto-generated. Do not edit!

// (in-package im_pickit_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MonitoringEvent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.code = null;
      this.source = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('code')) {
        this.code = initObj.code
      }
      else {
        this.code = 0;
      }
      if (initObj.hasOwnProperty('source')) {
        this.source = initObj.source
      }
      else {
        this.source = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MonitoringEvent
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [code]
    bufferOffset = _serializer.int32(obj.code, buffer, bufferOffset);
    // Serialize message field [source]
    bufferOffset = _serializer.int32(obj.source, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MonitoringEvent
    let len;
    let data = new MonitoringEvent(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [code]
    data.code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [source]
    data.source = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'im_pickit_msgs/MonitoringEvent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5672f74acd1b7b29851e9bac432c4c5c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MonitoringEvent(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.code !== undefined) {
      resolved.code = msg.code;
    }
    else {
      resolved.code = 0
    }

    if (msg.source !== undefined) {
      resolved.source = msg.source;
    }
    else {
      resolved.source = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

// Constants for message
MonitoringEvent.Constants = {
  EVENT_SYSTEM_STARTED: 1,
  EVENT_SYSTEM_CONFIGURED: 2,
  EVENT_CAMERA_CONNECTED: 21,
  EVENT_CAMERA_DISCONNECTED: 22,
  EVENT_RC_CALIBRATION_SUCCEEDED: 31,
  EVENT_RC_CALIBRATION_REQUESTED: 32,
  EVENT_ROI_TEACHING_SUCCEEDED: 41,
  EVENT_SINGLE_DETECTION_REQUESTED: 51,
  EVENT_CONFIGURATION_REQUESTED: 61,
  EVENT_SNAPSHOT_REQUESTED: 81,
  EVENT_SNAPSHOT_LOADED: 82,
  EVENT_ROBOT_NEXT_OBJECT_REQUESTED: 101,
  SOURCE_UNSPECIFIED: 0,
  SOURCE_SYSTEM: 1,
  SOURCE_CAMERA: 2,
  SOURCE_ROBOT: 3,
  SOURCE_WEB_INTERFACE: 4,
}

module.exports = MonitoringEvent;
