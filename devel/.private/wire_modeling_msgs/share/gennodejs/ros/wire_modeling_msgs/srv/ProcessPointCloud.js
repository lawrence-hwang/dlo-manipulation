// Auto-generated. Do not edit!

// (in-package wire_modeling_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ProcessPointCloudRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pointcloud = null;
    }
    else {
      if (initObj.hasOwnProperty('pointcloud')) {
        this.pointcloud = initObj.pointcloud
      }
      else {
        this.pointcloud = new sensor_msgs.msg.PointCloud2();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProcessPointCloudRequest
    // Serialize message field [pointcloud]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.pointcloud, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProcessPointCloudRequest
    let len;
    let data = new ProcessPointCloudRequest(null);
    // Deserialize message field [pointcloud]
    data.pointcloud = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.pointcloud);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wire_modeling_msgs/ProcessPointCloudRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '56680b720436a8fbd002ea7abe6966e1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/PointCloud2 pointcloud
    
    ================================================================================
    MSG: sensor_msgs/PointCloud2
    # This message holds a collection of N-dimensional points, which may
    # contain additional information such as normals, intensity, etc. The
    # point data is stored as a binary blob, its layout described by the
    # contents of the "fields" array.
    
    # The point cloud data may be organized 2d (image-like) or 1d
    # (unordered). Point clouds organized as 2d images may be produced by
    # camera depth sensors such as stereo or time-of-flight.
    
    # Time of sensor data acquisition, and the coordinate frame ID (for 3d
    # points).
    Header header
    
    # 2D structure of the point cloud. If the cloud is unordered, height is
    # 1 and width is the length of the point cloud.
    uint32 height
    uint32 width
    
    # Describes the channels and their layout in the binary data blob.
    PointField[] fields
    
    bool    is_bigendian # Is this data bigendian?
    uint32  point_step   # Length of a point in bytes
    uint32  row_step     # Length of a row in bytes
    uint8[] data         # Actual point data, size is (row_step*height)
    
    bool is_dense        # True if there are no invalid points
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: sensor_msgs/PointField
    # This message holds the description of one point entry in the
    # PointCloud2 message format.
    uint8 INT8    = 1
    uint8 UINT8   = 2
    uint8 INT16   = 3
    uint8 UINT16  = 4
    uint8 INT32   = 5
    uint8 UINT32  = 6
    uint8 FLOAT32 = 7
    uint8 FLOAT64 = 8
    
    string name      # Name of field
    uint32 offset    # Offset from start of point struct
    uint8  datatype  # Datatype enumeration, see above
    uint32 count     # How many elements in the field
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ProcessPointCloudRequest(null);
    if (msg.pointcloud !== undefined) {
      resolved.pointcloud = sensor_msgs.msg.PointCloud2.Resolve(msg.pointcloud)
    }
    else {
      resolved.pointcloud = new sensor_msgs.msg.PointCloud2()
    }

    return resolved;
    }
};

class ProcessPointCloudResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.wire_length = null;
      this.raw_points = null;
      this.wire_class = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseArray();
      }
      if (initObj.hasOwnProperty('wire_length')) {
        this.wire_length = initObj.wire_length
      }
      else {
        this.wire_length = 0.0;
      }
      if (initObj.hasOwnProperty('raw_points')) {
        this.raw_points = initObj.raw_points
      }
      else {
        this.raw_points = new geometry_msgs.msg.PoseArray();
      }
      if (initObj.hasOwnProperty('wire_class')) {
        this.wire_class = initObj.wire_class
      }
      else {
        this.wire_class = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProcessPointCloudResponse
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseArray.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [wire_length]
    bufferOffset = _serializer.float64(obj.wire_length, buffer, bufferOffset);
    // Serialize message field [raw_points]
    bufferOffset = geometry_msgs.msg.PoseArray.serialize(obj.raw_points, buffer, bufferOffset);
    // Serialize message field [wire_class]
    bufferOffset = _serializer.string(obj.wire_class, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProcessPointCloudResponse
    let len;
    let data = new ProcessPointCloudResponse(null);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [wire_length]
    data.wire_length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [raw_points]
    data.raw_points = geometry_msgs.msg.PoseArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [wire_class]
    data.wire_class = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseArray.getMessageSize(object.pose);
    length += geometry_msgs.msg.PoseArray.getMessageSize(object.raw_points);
    length += _getByteLength(object.wire_class);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wire_modeling_msgs/ProcessPointCloudResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4683210ecd48c7100abc847b856df3fc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseArray pose 
    float64 wire_length
    geometry_msgs/PoseArray raw_points
    string wire_class
    
    ================================================================================
    MSG: geometry_msgs/PoseArray
    # An array of poses with a header for global reference.
    
    Header header
    
    Pose[] poses
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ProcessPointCloudResponse(null);
    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseArray.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseArray()
    }

    if (msg.wire_length !== undefined) {
      resolved.wire_length = msg.wire_length;
    }
    else {
      resolved.wire_length = 0.0
    }

    if (msg.raw_points !== undefined) {
      resolved.raw_points = geometry_msgs.msg.PoseArray.Resolve(msg.raw_points)
    }
    else {
      resolved.raw_points = new geometry_msgs.msg.PoseArray()
    }

    if (msg.wire_class !== undefined) {
      resolved.wire_class = msg.wire_class;
    }
    else {
      resolved.wire_class = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: ProcessPointCloudRequest,
  Response: ProcessPointCloudResponse,
  md5sum() { return 'a037fc9cae4c4c70c78fcfe3985c54fd'; },
  datatype() { return 'wire_modeling_msgs/ProcessPointCloud'; }
};
