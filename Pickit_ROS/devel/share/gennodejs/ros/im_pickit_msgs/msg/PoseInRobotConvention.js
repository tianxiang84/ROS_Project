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

class PoseInRobotConvention {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_type = null;
      this.position = null;
      this.orientation = null;
      this.orientation_unit = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_type')) {
        this.robot_type = initObj.robot_type
      }
      else {
        this.robot_type = '';
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('orientation_unit')) {
        this.orientation_unit = initObj.orientation_unit
      }
      else {
        this.orientation_unit = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoseInRobotConvention
    // Serialize message field [robot_type]
    bufferOffset = _serializer.string(obj.robot_type, buffer, bufferOffset);
    // Check that the constant length array field [position] has the right length
    if (obj.position.length !== 3) {
      throw new Error('Unable to serialize array field position - length must be 3')
    }
    // Serialize message field [position]
    bufferOffset = _arraySerializer.float64(obj.position, buffer, bufferOffset, 3);
    // Check that the constant length array field [orientation] has the right length
    if (obj.orientation.length !== 4) {
      throw new Error('Unable to serialize array field orientation - length must be 4')
    }
    // Serialize message field [orientation]
    bufferOffset = _arraySerializer.float64(obj.orientation, buffer, bufferOffset, 4);
    // Serialize message field [orientation_unit]
    bufferOffset = _serializer.string(obj.orientation_unit, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoseInRobotConvention
    let len;
    let data = new PoseInRobotConvention(null);
    // Deserialize message field [robot_type]
    data.robot_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [orientation]
    data.orientation = _arrayDeserializer.float64(buffer, bufferOffset, 4)
    // Deserialize message field [orientation_unit]
    data.orientation_unit = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.robot_type.length;
    length += object.orientation_unit.length;
    return length + 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'im_pickit_msgs/PoseInRobotConvention';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '549652ee550f87af479cfa70e3398398';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new PoseInRobotConvention(null);
    if (msg.robot_type !== undefined) {
      resolved.robot_type = msg.robot_type;
    }
    else {
      resolved.robot_type = ''
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = new Array(3).fill(0)
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = msg.orientation;
    }
    else {
      resolved.orientation = new Array(4).fill(0)
    }

    if (msg.orientation_unit !== undefined) {
      resolved.orientation_unit = msg.orientation_unit;
    }
    else {
      resolved.orientation_unit = ''
    }

    return resolved;
    }
};

module.exports = PoseInRobotConvention;
