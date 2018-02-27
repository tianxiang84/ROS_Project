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

class ColorRangeHSV {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.h_min = null;
      this.h_max = null;
      this.s_min = null;
      this.s_max = null;
      this.v_min = null;
      this.v_max = null;
    }
    else {
      if (initObj.hasOwnProperty('h_min')) {
        this.h_min = initObj.h_min
      }
      else {
        this.h_min = 0;
      }
      if (initObj.hasOwnProperty('h_max')) {
        this.h_max = initObj.h_max
      }
      else {
        this.h_max = 0;
      }
      if (initObj.hasOwnProperty('s_min')) {
        this.s_min = initObj.s_min
      }
      else {
        this.s_min = 0.0;
      }
      if (initObj.hasOwnProperty('s_max')) {
        this.s_max = initObj.s_max
      }
      else {
        this.s_max = 0.0;
      }
      if (initObj.hasOwnProperty('v_min')) {
        this.v_min = initObj.v_min
      }
      else {
        this.v_min = 0.0;
      }
      if (initObj.hasOwnProperty('v_max')) {
        this.v_max = initObj.v_max
      }
      else {
        this.v_max = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ColorRangeHSV
    // Serialize message field [h_min]
    bufferOffset = _serializer.uint32(obj.h_min, buffer, bufferOffset);
    // Serialize message field [h_max]
    bufferOffset = _serializer.uint32(obj.h_max, buffer, bufferOffset);
    // Serialize message field [s_min]
    bufferOffset = _serializer.float64(obj.s_min, buffer, bufferOffset);
    // Serialize message field [s_max]
    bufferOffset = _serializer.float64(obj.s_max, buffer, bufferOffset);
    // Serialize message field [v_min]
    bufferOffset = _serializer.float64(obj.v_min, buffer, bufferOffset);
    // Serialize message field [v_max]
    bufferOffset = _serializer.float64(obj.v_max, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ColorRangeHSV
    let len;
    let data = new ColorRangeHSV(null);
    // Deserialize message field [h_min]
    data.h_min = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [h_max]
    data.h_max = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [s_min]
    data.s_min = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [s_max]
    data.s_max = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_min]
    data.v_min = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_max]
    data.v_max = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'im_pickit_msgs/ColorRangeHSV';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '54efefea98c15a07b7359b9e855639cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # An HSV-based color range.
    
    # The range for the color representation. 
    # Hue: range is from 0 to 360.
    uint32 h_min
    uint32 h_max
    # Saturation: range is from 0 to 1.
    float64 s_min
    float64 s_max
    # Saturation: range is from 0 to 1.
    float64 v_min
    float64 v_max
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ColorRangeHSV(null);
    if (msg.h_min !== undefined) {
      resolved.h_min = msg.h_min;
    }
    else {
      resolved.h_min = 0
    }

    if (msg.h_max !== undefined) {
      resolved.h_max = msg.h_max;
    }
    else {
      resolved.h_max = 0
    }

    if (msg.s_min !== undefined) {
      resolved.s_min = msg.s_min;
    }
    else {
      resolved.s_min = 0.0
    }

    if (msg.s_max !== undefined) {
      resolved.s_max = msg.s_max;
    }
    else {
      resolved.s_max = 0.0
    }

    if (msg.v_min !== undefined) {
      resolved.v_min = msg.v_min;
    }
    else {
      resolved.v_min = 0.0
    }

    if (msg.v_max !== undefined) {
      resolved.v_max = msg.v_max;
    }
    else {
      resolved.v_max = 0.0
    }

    return resolved;
    }
};

module.exports = ColorRangeHSV;
