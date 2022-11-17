
"use strict";

let RegisterValues = require('./RegisterValues.js')
let MotorGains = require('./MotorGains.js')
let TorqueEnable = require('./TorqueEnable.js')
let RobotInfo = require('./RobotInfo.js')
let OperatingModes = require('./OperatingModes.js')
let Reboot = require('./Reboot.js')

module.exports = {
  RegisterValues: RegisterValues,
  MotorGains: MotorGains,
  TorqueEnable: TorqueEnable,
  RobotInfo: RobotInfo,
  OperatingModes: OperatingModes,
  Reboot: Reboot,
};
