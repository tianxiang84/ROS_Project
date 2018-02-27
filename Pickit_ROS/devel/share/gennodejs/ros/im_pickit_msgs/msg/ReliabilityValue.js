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

class ReliabilityValue {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
      this.required_value = null;
      this.has_upper_limit = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0.0;
      }
      if (initObj.hasOwnProperty('required_value')) {
        this.required_value = initObj.required_value
      }
      else {
        this.required_value = 0.0;
      }
      if (initObj.hasOwnProperty('has_upper_limit')) {
        this.has_upper_limit = initObj.has_upper_limit
      }
      else {
        this.has_upper_limit = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReliabilityValue
    // Serialize message field [value]
    bufferOffset = _serializer.float64(obj.value, buffer, bufferOffset);
    // Serialize message field [required_value]
    bufferOffset = _serializer.float64(obj.required_value, buffer, bufferOffset);
    // Serialize message field [has_upper_limit]
    bufferOffset = _serializer.bool(obj.has_upper_limit, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReliabilityValue
    let len;
    let data = new ReliabilityValue(null);
    // Deserialize message field [value]
    data.value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [required_value]
    data.required_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [has_upper_limit]
    data.has_upper_limit = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'im_pickit_msgs/ReliabilityValue';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9c363c22be8a9bef0476a084792fea44';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 value
    float64 required_value
    
    # mostly we work with lower limits so usually this is false
    bool has_upper_limit     
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReliabilityValue(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0.0
    }

    if (msg.required_value !== undefined) {
      resolved.required_value = msg.required_value;
    }
    else {
      resolved.required_value = 0.0
    }

    if (msg.has_upper_limit !== undefined) {
      resolved.has_upper_limit = msg.has_upper_limit;
    }
    else {
      resolved.has_upper_limit = false
    }

    return resolved;
    }
};

module.exports = ReliabilityValue;
