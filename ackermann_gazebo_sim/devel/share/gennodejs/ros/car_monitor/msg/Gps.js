// Auto-generated. Do not edit!

// (in-package car_monitor.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Gps {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.latitude = null;
      this.longitude = null;
      this.altitude = null;
      this.latitude_variance = null;
      this.longitude_variance = null;
      this.altitude_variance = null;
      this.vel = null;
      this.accel = null;
      this.posture = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
      if (initObj.hasOwnProperty('latitude_variance')) {
        this.latitude_variance = initObj.latitude_variance
      }
      else {
        this.latitude_variance = 0.0;
      }
      if (initObj.hasOwnProperty('longitude_variance')) {
        this.longitude_variance = initObj.longitude_variance
      }
      else {
        this.longitude_variance = 0.0;
      }
      if (initObj.hasOwnProperty('altitude_variance')) {
        this.altitude_variance = initObj.altitude_variance
      }
      else {
        this.altitude_variance = 0.0;
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('accel')) {
        this.accel = initObj.accel
      }
      else {
        this.accel = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('posture')) {
        this.posture = initObj.posture
      }
      else {
        this.posture = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Gps
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    // Serialize message field [latitude_variance]
    bufferOffset = _serializer.float64(obj.latitude_variance, buffer, bufferOffset);
    // Serialize message field [longitude_variance]
    bufferOffset = _serializer.float64(obj.longitude_variance, buffer, bufferOffset);
    // Serialize message field [altitude_variance]
    bufferOffset = _serializer.float64(obj.altitude_variance, buffer, bufferOffset);
    // Serialize message field [vel]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.vel, buffer, bufferOffset);
    // Serialize message field [accel]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.accel, buffer, bufferOffset);
    // Serialize message field [posture]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.posture, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Gps
    let len;
    let data = new Gps(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latitude_variance]
    data.latitude_variance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude_variance]
    data.longitude_variance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude_variance]
    data.altitude_variance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vel]
    data.vel = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [accel]
    data.accel = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [posture]
    data.posture = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 144;
  }

  static datatype() {
    // Returns string type for a message object
    return 'car_monitor/Gps';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '295397941bdaaa9898baf0c7b0105885';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float64 latitude  # 纬度
    float64 longitude  # 经度
    float64 altitude  # 高度
    
    float64 latitude_variance  # 纬度的方差
    float64 longitude_variance  # 经度的方差
    float64 altitude_variance # 高度的方差
    
    # 速度
    geometry_msgs/Twist vel
    
    # 加速度
    geometry_msgs/Vector3 accel
    
    # 姿态 (x, y, z)分别对应(roll, pitch, yall)
    # 说明：yall - 蘑菇天线左右安装时，朝北为0，顺时针数值增大
    geometry_msgs/Vector3 posture
    
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
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
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
    const resolved = new Gps(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    if (msg.latitude_variance !== undefined) {
      resolved.latitude_variance = msg.latitude_variance;
    }
    else {
      resolved.latitude_variance = 0.0
    }

    if (msg.longitude_variance !== undefined) {
      resolved.longitude_variance = msg.longitude_variance;
    }
    else {
      resolved.longitude_variance = 0.0
    }

    if (msg.altitude_variance !== undefined) {
      resolved.altitude_variance = msg.altitude_variance;
    }
    else {
      resolved.altitude_variance = 0.0
    }

    if (msg.vel !== undefined) {
      resolved.vel = geometry_msgs.msg.Twist.Resolve(msg.vel)
    }
    else {
      resolved.vel = new geometry_msgs.msg.Twist()
    }

    if (msg.accel !== undefined) {
      resolved.accel = geometry_msgs.msg.Vector3.Resolve(msg.accel)
    }
    else {
      resolved.accel = new geometry_msgs.msg.Vector3()
    }

    if (msg.posture !== undefined) {
      resolved.posture = geometry_msgs.msg.Vector3.Resolve(msg.posture)
    }
    else {
      resolved.posture = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = Gps;
