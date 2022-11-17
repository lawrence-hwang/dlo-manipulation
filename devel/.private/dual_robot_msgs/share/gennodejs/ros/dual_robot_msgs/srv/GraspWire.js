// Auto-generated. Do not edit!

// (in-package dual_robot_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class GraspWireRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot = null;
      this.wire_grasp_pose = null;
      this.pull_vec = null;
    }
    else {
      if (initObj.hasOwnProperty('robot')) {
        this.robot = initObj.robot
      }
      else {
        this.robot = '';
      }
      if (initObj.hasOwnProperty('wire_grasp_pose')) {
        this.wire_grasp_pose = initObj.wire_grasp_pose
      }
      else {
        this.wire_grasp_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('pull_vec')) {
        this.pull_vec = initObj.pull_vec
      }
      else {
        this.pull_vec = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GraspWireRequest
    // Serialize message field [robot]
    bufferOffset = _serializer.string(obj.robot, buffer, bufferOffset);
    // Serialize message field [wire_grasp_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.wire_grasp_pose, buffer, bufferOffset);
    // Serialize message field [pull_vec]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.pull_vec, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GraspWireRequest
    let len;
    let data = new GraspWireRequest(null);
    // Deserialize message field [robot]
    data.robot = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [wire_grasp_pose]
    data.wire_grasp_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [pull_vec]
    data.pull_vec = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.robot);
    return length + 84;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dual_robot_msgs/GraspWireRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f3e900c1a0ccd81f3f0298393d52c5aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string robot
    geometry_msgs/Pose wire_grasp_pose 
    geometry_msgs/Vector3 pull_vec
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GraspWireRequest(null);
    if (msg.robot !== undefined) {
      resolved.robot = msg.robot;
    }
    else {
      resolved.robot = ''
    }

    if (msg.wire_grasp_pose !== undefined) {
      resolved.wire_grasp_pose = geometry_msgs.msg.Pose.Resolve(msg.wire_grasp_pose)
    }
    else {
      resolved.wire_grasp_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.pull_vec !== undefined) {
      resolved.pull_vec = geometry_msgs.msg.Vector3.Resolve(msg.pull_vec)
    }
    else {
      resolved.pull_vec = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

class GraspWireResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GraspWireResponse
    // Serialize message field [status]
    bufferOffset = _serializer.bool(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GraspWireResponse
    let len;
    let data = new GraspWireResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dual_robot_msgs/GraspWireResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a1255d4d998bd4d6585c64639b5ee9a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool status 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GraspWireResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = false
    }

    return resolved;
    }
};

module.exports = {
  Request: GraspWireRequest,
  Response: GraspWireResponse,
  md5sum() { return 'e606f67dd60a8cc1664155100285b04a'; },
  datatype() { return 'dual_robot_msgs/GraspWire'; }
};
