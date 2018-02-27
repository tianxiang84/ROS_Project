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

class CalibrationStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.calibration_plate_visible = null;
      this.calibration_request_received = null;
      this.calibration_plate_localized = null;
      this.calibration_input_poses_received = null;
      this.calibration_calculated = null;
    }
    else {
      if (initObj.hasOwnProperty('calibration_plate_visible')) {
        this.calibration_plate_visible = initObj.calibration_plate_visible
      }
      else {
        this.calibration_plate_visible = false;
      }
      if (initObj.hasOwnProperty('calibration_request_received')) {
        this.calibration_request_received = initObj.calibration_request_received
      }
      else {
        this.calibration_request_received = false;
      }
      if (initObj.hasOwnProperty('calibration_plate_localized')) {
        this.calibration_plate_localized = initObj.calibration_plate_localized
      }
      else {
        this.calibration_plate_localized = false;
      }
      if (initObj.hasOwnProperty('calibration_input_poses_received')) {
        this.calibration_input_poses_received = initObj.calibration_input_poses_received
      }
      else {
        this.calibration_input_poses_received = false;
      }
      if (initObj.hasOwnProperty('calibration_calculated')) {
        this.calibration_calculated = initObj.calibration_calculated
      }
      else {
        this.calibration_calculated = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CalibrationStatus
    // Serialize message field [calibration_plate_visible]
    bufferOffset = _serializer.bool(obj.calibration_plate_visible, buffer, bufferOffset);
    // Serialize message field [calibration_request_received]
    bufferOffset = _serializer.bool(obj.calibration_request_received, buffer, bufferOffset);
    // Serialize message field [calibration_plate_localized]
    bufferOffset = _serializer.bool(obj.calibration_plate_localized, buffer, bufferOffset);
    // Serialize message field [calibration_input_poses_received]
    bufferOffset = _serializer.bool(obj.calibration_input_poses_received, buffer, bufferOffset);
    // Serialize message field [calibration_calculated]
    bufferOffset = _serializer.bool(obj.calibration_calculated, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CalibrationStatus
    let len;
    let data = new CalibrationStatus(null);
    // Deserialize message field [calibration_plate_visible]
    data.calibration_plate_visible = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [calibration_request_received]
    data.calibration_request_received = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [calibration_plate_localized]
    data.calibration_plate_localized = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [calibration_input_poses_received]
    data.calibration_input_poses_received = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [calibration_calculated]
    data.calibration_calculated = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'im_pickit_msgs/CalibrationStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb9e08f442b346d90200848306f7f520';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Copyright Pick-it NV 2017
    ## This message contains Calibration status information  ##
    
    bool calibration_plate_visible
    bool calibration_request_received
    bool calibration_plate_localized
    bool calibration_input_poses_received
    
    bool calibration_calculated
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CalibrationStatus(null);
    if (msg.calibration_plate_visible !== undefined) {
      resolved.calibration_plate_visible = msg.calibration_plate_visible;
    }
    else {
      resolved.calibration_plate_visible = false
    }

    if (msg.calibration_request_received !== undefined) {
      resolved.calibration_request_received = msg.calibration_request_received;
    }
    else {
      resolved.calibration_request_received = false
    }

    if (msg.calibration_plate_localized !== undefined) {
      resolved.calibration_plate_localized = msg.calibration_plate_localized;
    }
    else {
      resolved.calibration_plate_localized = false
    }

    if (msg.calibration_input_poses_received !== undefined) {
      resolved.calibration_input_poses_received = msg.calibration_input_poses_received;
    }
    else {
      resolved.calibration_input_poses_received = false
    }

    if (msg.calibration_calculated !== undefined) {
      resolved.calibration_calculated = msg.calibration_calculated;
    }
    else {
      resolved.calibration_calculated = false
    }

    return resolved;
    }
};

module.exports = CalibrationStatus;
