// Auto-generated. Do not edit!

// (in-package blink_led.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class Joy {
  constructor() {
    this.x = '';
    this.y = '';
    this.rot = '';
    this.throttle = '';
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type Joy
    // Serialize message field [x]
    bufferInfo = _serializer.string(obj.x, bufferInfo);
    // Serialize message field [y]
    bufferInfo = _serializer.string(obj.y, bufferInfo);
    // Serialize message field [rot]
    bufferInfo = _serializer.string(obj.rot, bufferInfo);
    // Serialize message field [throttle]
    bufferInfo = _serializer.string(obj.throttle, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type Joy
    let tmp;
    let len;
    let data = new Joy();
    // Deserialize message field [x]
    tmp = _deserializer.string(buffer);
    data.x = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [y]
    tmp = _deserializer.string(buffer);
    data.y = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [rot]
    tmp = _deserializer.string(buffer);
    data.rot = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [throttle]
    tmp = _deserializer.string(buffer);
    data.throttle = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'blink_led/Joy';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ed918a0c2fe838fed35fc22e2bcab1be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string x
    string y
    string rot
    string throttle
    
    `;
  }

};

module.exports = Joy;
