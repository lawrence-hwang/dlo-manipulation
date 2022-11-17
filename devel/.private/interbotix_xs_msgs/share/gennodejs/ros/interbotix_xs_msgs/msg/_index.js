
"use strict";

let ArmJoy = require('./ArmJoy.js');
let LocobotJoy = require('./LocobotJoy.js');
let JointSingleCommand = require('./JointSingleCommand.js');
let HexJoy = require('./HexJoy.js');
let JointTemps = require('./JointTemps.js');
let JointTrajectoryCommand = require('./JointTrajectoryCommand.js');
let JointGroupCommand = require('./JointGroupCommand.js');
let TurretJoy = require('./TurretJoy.js');

module.exports = {
  ArmJoy: ArmJoy,
  LocobotJoy: LocobotJoy,
  JointSingleCommand: JointSingleCommand,
  HexJoy: HexJoy,
  JointTemps: JointTemps,
  JointTrajectoryCommand: JointTrajectoryCommand,
  JointGroupCommand: JointGroupCommand,
  TurretJoy: TurretJoy,
};
