// Auto-generated. Do not edit!

// (in-package im_pickit_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class BeltMotion {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frame_id = null;
      this.child_frame_id = null;
      this.object_motion_type = null;
      this.camera_to_belt_tf = null;
      this.belt_speed_magnitude = null;
      this.belt_normalised_speed_vector = null;
    }
    else {
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = '';
      }
      if (initObj.hasOwnProperty('child_frame_id')) {
        this.child_frame_id = initObj.child_frame_id
      }
      else {
        this.child_frame_id = '';
      }
      if (initObj.hasOwnProperty('object_motion_type')) {
        this.object_motion_type = initObj.object_motion_type
      }
      else {
        this.object_motion_type = 0;
      }
      if (initObj.hasOwnProperty('camera_to_belt_tf')) {
        this.camera_to_belt_tf = initObj.camera_to_belt_tf
      }
      else {
        this.camera_to_belt_tf = new geometry_msgs.msg.Transform();
      }
      if (initObj.hasOwnProperty('belt_speed_magnitude')) {
        this.belt_speed_magnitude = initObj.belt_speed_magnitude
      }
      else {
        this.belt_speed_magnitude = 0.0;
      }
      if (initObj.hasOwnProperty('belt_normalised_speed_vector')) {
        this.belt_normalised_speed_vector = initObj.belt_normalised_speed_vector
      }
      else {
        this.belt_normalised_speed_vector = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BeltMotion
    // Serialize message field [frame_id]
    bufferOffset = _serializer.string(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [child_frame_id]
    bufferOffset = _serializer.string(obj.child_frame_id, buffer, bufferOffset);
    // Serialize message field [object_motion_type]
    bufferOffset = _serializer.int32(obj.object_motion_type, buffer, bufferOffset);
    // Serialize message field [camera_to_belt_tf]
    bufferOffset = geometry_msgs.msg.Transform.serialize(obj.camera_to_belt_tf, buffer, bufferOffset);
    // Serialize message field [belt_speed_magnitude]
    bufferOffset = _serializer.float64(obj.belt_speed_magnitude, buffer, bufferOffset);
    // Serialize message field [belt_normalised_speed_vector]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.belt_normalised_speed_vector, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BeltMotion
    let len;
    let data = new BeltMotion(null);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [child_frame_id]
    data.child_frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [object_motion_type]
    data.object_motion_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [camera_to_belt_tf]
    data.camera_to_belt_tf = geometry_msgs.msg.Transform.deserialize(buffer, bufferOffset);
    // Deserialize message field [belt_speed_magnitude]
    data.belt_speed_magnitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [belt_normalised_speed_vector]
    data.belt_normalised_speed_vector = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.frame_id.length;
    length += object.child_frame_id.length;
    return length + 100;
  }

  static datatype() {
    // Returns string type for a message object
    return 'im_pickit_msgs/BeltMotion';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e1418c364a9790e036636f3c087e1c72';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Copyright Intermodalics 2014
    # Angular twist message
    
    string frame_id											# Parent frame (camera)
    string child_frame_id									# Child frame (belt)
    int32 object_motion_type								# Object motion type 0 = static, 1 = linear, 2 = angular														
    geometry_msgs/Transform camera_to_belt_tf				# Camera to belt frame. Transforms belt to camera coordinates.
    														# - std_msgs/Header header
    														# - string child_frame_id
    														# - geometry_msgs/Transform transform
    														
    float64 belt_speed_magnitude							# Magnitude linear velocity
    geometry_msgs/Vector3 belt_normalised_speed_vector		# Direction of linear speed in belt frame
    
    ================================================================================
    MSG: geometry_msgs/Transform
    # This represents the transform between two coordinate frames in free space.
    
    Vector3 translation
    Quaternion rotation
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BeltMotion(null);
    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = ''
    }

    if (msg.child_frame_id !== undefined) {
      resolved.child_frame_id = msg.child_frame_id;
    }
    else {
      resolved.child_frame_id = ''
    }

    if (msg.object_motion_type !== undefined) {
      resolved.object_motion_type = msg.object_motion_type;
    }
    else {
      resolved.object_motion_type = 0
    }

    if (msg.camera_to_belt_tf !== undefined) {
      resolved.camera_to_belt_tf = geometry_msgs.msg.Transform.Resolve(msg.camera_to_belt_tf)
    }
    else {
      resolved.camera_to_belt_tf = new geometry_msgs.msg.Transform()
    }

    if (msg.belt_speed_magnitude !== undefined) {
      resolved.belt_speed_magnitude = msg.belt_speed_magnitude;
    }
    else {
      resolved.belt_speed_magnitude = 0.0
    }

    if (msg.belt_normalised_speed_vector !== undefined) {
      resolved.belt_normalised_speed_vector = geometry_msgs.msg.Vector3.Resolve(msg.belt_normalised_speed_vector)
    }
    else {
      resolved.belt_normalised_speed_vector = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = BeltMotion;
