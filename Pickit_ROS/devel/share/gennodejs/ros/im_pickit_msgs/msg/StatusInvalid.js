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

class StatusInvalid {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StatusInvalid
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StatusInvalid
    let len;
    let data = new StatusInvalid(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'im_pickit_msgs/StatusInvalid';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'de376df19f3bac290330f837647f3728';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # These objects (100 <= status <= 999)
    # will get a red colored visualization marker.
    
    string CATEGORY = INVALID
    
    ### Enums:
    
    uint16 UNRELIABLE_3D_SCENE_COVERAGE_TOO_LOW = 100
    uint16 UNRELIABLE_2D_SCENE_COVERAGE_TOO_LOW = 101
    uint16 UNRELIABLE_3D_MODEL_COVERAGE_TOO_LOW = 102
    uint16 UNRELIABLE_2D_MODEL_CONTOUR_COVERAGE_TOO_LOW = 103
    uint16 UNRELIABLE_2D_MODEL_SURFACE_COVERAGE_TOO_LOW = 104
    uint16 UNRELIABLE_2D_MODEL_SURFACE_COVERAGE_TOO_HIGH = 105
    
    uint16 UNRELIABLE_MISALIGNED_X_AXIS = 200
    uint16 UNRELIABLE_MISALIGNED_Y_AXIS = 201
    
    uint16 WRONG_SIZE_SMALLER_THAN_X_MIN = 300
    uint16 WRONG_SIZE_LARGER_THAN_X_MAX = 301
    uint16 WRONG_SIZE_SMALLER_THAN_Y_MIN = 302
    uint16 WRONG_SIZE_LARGER_THAN_Y_MAX = 303
    uint16 WRONG_SIZE_SMALLER_THAN_Z_MIN = 304
    uint16 WRONG_SIZE_LARGER_THAN_Z_MAX = 305
    uint16 WRONG_SIZE_SMALLER_THAN_MIN_OBJECT_POINTS = 306
    uint16 WRONG_SIZE_LARGER_THAN_MAX_OBJECT_POINTS = 307
    
    uint16 WRONG_SURFACE_SIDE_EXTERNAL = 400
    uint16 WRONG_SURFACE_SIDE_INTERNAL = 401
    
    uint16 IN_PREVIOUS_IMAGE = 500
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StatusInvalid(null);
    return resolved;
    }
};

// Constants for message
StatusInvalid.Constants = {
  CATEGORY: 'INVALID',
  UNRELIABLE_3D_SCENE_COVERAGE_TOO_LOW: 100,
  UNRELIABLE_2D_SCENE_COVERAGE_TOO_LOW: 101,
  UNRELIABLE_3D_MODEL_COVERAGE_TOO_LOW: 102,
  UNRELIABLE_2D_MODEL_CONTOUR_COVERAGE_TOO_LOW: 103,
  UNRELIABLE_2D_MODEL_SURFACE_COVERAGE_TOO_LOW: 104,
  UNRELIABLE_2D_MODEL_SURFACE_COVERAGE_TOO_HIGH: 105,
  UNRELIABLE_MISALIGNED_X_AXIS: 200,
  UNRELIABLE_MISALIGNED_Y_AXIS: 201,
  WRONG_SIZE_SMALLER_THAN_X_MIN: 300,
  WRONG_SIZE_LARGER_THAN_X_MAX: 301,
  WRONG_SIZE_SMALLER_THAN_Y_MIN: 302,
  WRONG_SIZE_LARGER_THAN_Y_MAX: 303,
  WRONG_SIZE_SMALLER_THAN_Z_MIN: 304,
  WRONG_SIZE_LARGER_THAN_Z_MAX: 305,
  WRONG_SIZE_SMALLER_THAN_MIN_OBJECT_POINTS: 306,
  WRONG_SIZE_LARGER_THAN_MAX_OBJECT_POINTS: 307,
  WRONG_SURFACE_SIDE_EXTERNAL: 400,
  WRONG_SURFACE_SIDE_INTERNAL: 401,
  IN_PREVIOUS_IMAGE: 500,
}

module.exports = StatusInvalid;
