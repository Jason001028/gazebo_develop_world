// Auto-generated. Do not edit!

// (in-package car_monitor.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CarRank {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.car_rank = null;
    }
    else {
      if (initObj.hasOwnProperty('car_rank')) {
        this.car_rank = initObj.car_rank
      }
      else {
        this.car_rank = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CarRank
    // Serialize message field [car_rank]
    bufferOffset = _arraySerializer.string(obj.car_rank, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CarRank
    let len;
    let data = new CarRank(null);
    // Deserialize message field [car_rank]
    data.car_rank = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.car_rank.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'car_monitor/CarRank';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c93f5f28361737bd4f54c4b01de9c55c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] car_rank  # 车辆顺序
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CarRank(null);
    if (msg.car_rank !== undefined) {
      resolved.car_rank = msg.car_rank;
    }
    else {
      resolved.car_rank = []
    }

    return resolved;
    }
};

module.exports = CarRank;
