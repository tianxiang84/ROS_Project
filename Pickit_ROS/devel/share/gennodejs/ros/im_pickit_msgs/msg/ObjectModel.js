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

class ObjectModel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectModel
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectModel
    let len;
    let data = new ObjectModel(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'im_pickit_msgs/ObjectModel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '49dc4c216781b1b3ce8e8e9d6c3be4e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Copyright (c) 2017, Pick-it NV.
    # All rights reserved.
    
    # Definition of different object models used for registration, reliability score calculation and more.
    
    # Unspecified
    uint8 NONE          = 0
    
    # 2D models:
    uint8 SQUARE        = 21
    uint8 RECTANGLE     = 22
    uint8 CIRCLE        = 23
    uint8 ELLIPSE       = 24
    
    # 3D models:
    uint8 CYLINDER      = 32
    uint8 SPHERE        = 33
    uint8 POINT_CLOUD   = 35  # Object model given as point cloud (Pickit-Teach).
    
    # Other models:
    uint8 BLOB          = 50  # Object without specified shape -> No object fitting is performed.
    
    # Models of internal use only:
    uint8 CLUSTER       = 250
    
    uint8 type  # Model type, takes one of the above defined models types as value.
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectModel(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

// Constants for message
ObjectModel.Constants = {
  NONE: 0,
  SQUARE: 21,
  RECTANGLE: 22,
  CIRCLE: 23,
  ELLIPSE: 24,
  CYLINDER: 32,
  SPHERE: 33,
  POINT_CLOUD: 35,
  BLOB: 50,
  CLUSTER: 250,
}

module.exports = ObjectModel;
