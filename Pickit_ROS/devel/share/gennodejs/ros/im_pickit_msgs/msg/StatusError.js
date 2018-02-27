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

class StatusError {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StatusError
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StatusError
    let len;
    let data = new StatusError(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'im_pickit_msgs/StatusError';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3ef08eadec9d53cd5205e31b7c108462';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # These objects (status >= 1000)
    # will not get a visualization marker (due to a mathematical error, ie bug)
    
    string CATEGORY = ERROR
    
    ### Enums:
    
    uint16 POSE_CONTAINS_NANS = 1000
    uint16 INVALID_ROTATION_MATRIX = 1001
    uint16 SIZE_LARGER_THAN_ROI_BOX = 1002
    uint16 INSUFFICIENT_INLIER_POINTS = 1003
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StatusError(null);
    return resolved;
    }
};

// Constants for message
StatusError.Constants = {
  CATEGORY: 'ERROR',
  POSE_CONTAINS_NANS: 1000,
  INVALID_ROTATION_MATRIX: 1001,
  SIZE_LARGER_THAN_ROI_BOX: 1002,
  INSUFFICIENT_INLIER_POINTS: 1003,
}

module.exports = StatusError;
