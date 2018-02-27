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

class PickitState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PickitState
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PickitState
    let len;
    let data = new PickitState(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'im_pickit_msgs/PickitState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9ef3dc8a4557d0cf9d67cf35dcb7b2af';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Copyright Pick-it 2017
    ## This message contains Pick-it state constants  ##
    
    string IDLE=root.Idle
    string ROI=root.Region_of_interest
    string CALIBRATION=root.Calibration
    string TESTING=root.Testing
    string TEST=root.Test
    string RUNNING=root.Running
    string TEACH_MODEL=root.Teach_model
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PickitState(null);
    return resolved;
    }
};

// Constants for message
PickitState.Constants = {
  IDLE: 'root.Idle',
  ROI: 'root.Region_of_interest',
  CALIBRATION: 'root.Calibration',
  TESTING: 'root.Testing',
  TEST: 'root.Test',
  RUNNING: 'root.Running',
  TEACH_MODEL: 'root.Teach_model',
}

module.exports = PickitState;
