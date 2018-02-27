// Auto-generated. Do not edit!

// (in-package im_pickit_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CameraConfig = require('./CameraConfig.js');
let CameraState = require('./CameraState.js');

//-----------------------------------------------------------

class CameraList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cameras = null;
      this.camera_states = null;
    }
    else {
      if (initObj.hasOwnProperty('cameras')) {
        this.cameras = initObj.cameras
      }
      else {
        this.cameras = [];
      }
      if (initObj.hasOwnProperty('camera_states')) {
        this.camera_states = initObj.camera_states
      }
      else {
        this.camera_states = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraList
    // Serialize message field [cameras]
    // Serialize the length for message field [cameras]
    bufferOffset = _serializer.uint32(obj.cameras.length, buffer, bufferOffset);
    obj.cameras.forEach((val) => {
      bufferOffset = CameraConfig.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [camera_states]
    // Serialize the length for message field [camera_states]
    bufferOffset = _serializer.uint32(obj.camera_states.length, buffer, bufferOffset);
    obj.camera_states.forEach((val) => {
      bufferOffset = CameraState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraList
    let len;
    let data = new CameraList(null);
    // Deserialize message field [cameras]
    // Deserialize array length for message field [cameras]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cameras = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cameras[i] = CameraConfig.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [camera_states]
    // Deserialize array length for message field [camera_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.camera_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.camera_states[i] = CameraState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.cameras.forEach((val) => {
      length += CameraConfig.getMessageSize(val);
    });
    length += object.camera_states.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'im_pickit_msgs/CameraList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e437b032a8e9ff1590a662fd97c982f9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    CameraConfig[] cameras        # List of known cameras.
    CameraState[] camera_states   # Corresponding camera states.
    
    ================================================================================
    MSG: im_pickit_msgs/CameraConfig
    # Message fields
    string name                                 # name (=namespace) of the camera (unique!)
    string serial                               # Serial number.
    
    ================================================================================
    MSG: im_pickit_msgs/CameraState
    uint8 STATE_REGISTERED    = 1
    uint8 STATE_CONNECTED     = 2
    uint8 STATE_DISCONNECTED  = 3
    
    uint8 state   # Camera state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CameraList(null);
    if (msg.cameras !== undefined) {
      resolved.cameras = new Array(msg.cameras.length);
      for (let i = 0; i < resolved.cameras.length; ++i) {
        resolved.cameras[i] = CameraConfig.Resolve(msg.cameras[i]);
      }
    }
    else {
      resolved.cameras = []
    }

    if (msg.camera_states !== undefined) {
      resolved.camera_states = new Array(msg.camera_states.length);
      for (let i = 0; i < resolved.camera_states.length; ++i) {
        resolved.camera_states[i] = CameraState.Resolve(msg.camera_states[i]);
      }
    }
    else {
      resolved.camera_states = []
    }

    return resolved;
    }
};

module.exports = CameraList;
