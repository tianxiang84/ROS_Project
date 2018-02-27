// Auto-generated. Do not edit!

// (in-package im_pickit_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PoseInRobotConvention = require('./PoseInRobotConvention.js');

//-----------------------------------------------------------

class TransformsInRobotConventions {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frame_in_robot_conventions = null;
    }
    else {
      if (initObj.hasOwnProperty('frame_in_robot_conventions')) {
        this.frame_in_robot_conventions = initObj.frame_in_robot_conventions
      }
      else {
        this.frame_in_robot_conventions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TransformsInRobotConventions
    // Serialize message field [frame_in_robot_conventions]
    // Serialize the length for message field [frame_in_robot_conventions]
    bufferOffset = _serializer.uint32(obj.frame_in_robot_conventions.length, buffer, bufferOffset);
    obj.frame_in_robot_conventions.forEach((val) => {
      bufferOffset = PoseInRobotConvention.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TransformsInRobotConventions
    let len;
    let data = new TransformsInRobotConventions(null);
    // Deserialize message field [frame_in_robot_conventions]
    // Deserialize array length for message field [frame_in_robot_conventions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.frame_in_robot_conventions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.frame_in_robot_conventions[i] = PoseInRobotConvention.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.frame_in_robot_conventions.forEach((val) => {
      length += PoseInRobotConvention.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'im_pickit_msgs/TransformsInRobotConventions';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '69b2ffe586af55f72b44278254a92d0d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    PoseInRobotConvention[] frame_in_robot_conventions
    
    ================================================================================
    MSG: im_pickit_msgs/PoseInRobotConvention
    # Possible robot types:
    # - ABB     (Radians)
    # - FANUC   (Degrees)
    # - STAUBLI (Degrees)
    # - KUKA    (Degrees)
    # - UR      (Radians)
    
    string       robot_type
    float64[3]   position
    float64[4]   orientation
    string       orientation_unit
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TransformsInRobotConventions(null);
    if (msg.frame_in_robot_conventions !== undefined) {
      resolved.frame_in_robot_conventions = new Array(msg.frame_in_robot_conventions.length);
      for (let i = 0; i < resolved.frame_in_robot_conventions.length; ++i) {
        resolved.frame_in_robot_conventions[i] = PoseInRobotConvention.Resolve(msg.frame_in_robot_conventions[i]);
      }
    }
    else {
      resolved.frame_in_robot_conventions = []
    }

    return resolved;
    }
};

module.exports = TransformsInRobotConventions;
