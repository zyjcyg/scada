/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : ruoyi

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 25/03/2020 16:26:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for b_accel
-- ----------------------------
DROP TABLE IF EXISTS `b_accel`;
CREATE TABLE `b_accel`  (
  `ID` int(32) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `TurbineID` int(16) NULL DEFAULT NULL COMMENT '机组ID',
  `TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '时间',
  `VibrationState` int(16) NULL DEFAULT NULL COMMENT '状态反馈',
  `TowerSidebysideAccel` float(255, 5) NULL DEFAULT NULL COMMENT '塔筒通道1振动值',
  `TowerForeAfterAccel` float(255, 5) NULL DEFAULT NULL COMMENT '塔筒通道2振动值',
  `DriveChainXAccel` float(255, 5) NULL DEFAULT NULL COMMENT '传动链通道1振动值',
  `DriveChainYAccel` float(255, 5) NULL DEFAULT NULL COMMENT '传动链通道2振动值',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '振动' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_accel
-- ----------------------------
INSERT INTO `b_accel` VALUES (1, 1, '2020-03-23 10:12:23', 1, 0.01200, 0.01300, 0.00300, 0.00200);
INSERT INTO `b_accel` VALUES (2, 2, '2020-03-23 10:12:24', 1, 0.01400, 0.00900, 0.00200, 0.00100);

-- ----------------------------
-- Table structure for b_brake
-- ----------------------------
DROP TABLE IF EXISTS `b_brake`;
CREATE TABLE `b_brake`  (
  `ID` int(32) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `TurbineID` int(16) NULL DEFAULT NULL COMMENT '机组ID',
  `TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '时间',
  `BrakeCtrlMode` int(16) NULL DEFAULT NULL COMMENT '机械刹车控制模式',
  `BrakeState` int(16) NULL DEFAULT NULL COMMENT '机械刹车状态反馈',
  `DIBrake1Feedback` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-刹车1反馈',
  `DIBrake2Feedback` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-刹车2反馈',
  `DIBrake1WearFault` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-刹车磨损故障1',
  `DIBrake2WearFault` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-刹车磨损故障2',
  `DIManulBrakeSwitch` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-手动刹车开关',
  `DOOpenBrake1` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DO-打开刹车1',
  `DOOpenBrake2` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DO-打开刹车2',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '机械刹车' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_brake
-- ----------------------------
INSERT INTO `b_brake` VALUES (1, 1, '2020-03-23 10:12:33', 1, 1, '0', '0', '0', '0', NULL, NULL, NULL);
INSERT INTO `b_brake` VALUES (2, 2, '2020-03-23 12:23:33', 1, 1, '0', '0', '1', '0', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for b_conveter
-- ----------------------------
DROP TABLE IF EXISTS `b_conveter`;
CREATE TABLE `b_conveter`  (
  `ID` int(32) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `TurbineID` int(16) NULL DEFAULT NULL COMMENT '机组ID',
  `TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '时间',
  `ConveterCtrlMode` int(16) NULL DEFAULT NULL COMMENT '变流器控制模式',
  `ConveterState` int(16) NULL DEFAULT NULL COMMENT '变流器状态反馈',
  `TrqDmd` float(255, 5) NULL DEFAULT NULL COMMENT '转矩给定',
  `ReactPowerDmd` float(255, 5) NULL DEFAULT NULL COMMENT '功率角给定',
  `TrqFeedback` float(255, 5) NULL DEFAULT NULL COMMENT '转矩反馈',
  `ConverterSpd` float(255, 5) NULL DEFAULT NULL COMMENT '转速反馈',
  `ConverterAirTemp` float(255, 5) NULL DEFAULT NULL COMMENT '变流器入口温度',
  `DIReadyRun` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI_变流器准备就绪',
  `DIRpmInOperationRange` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI_变流器在运行范围内',
  `DIReadySync` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI_变流器准备并网',
  `DISyncState` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI_变流器并网状态',
  `DILVRT` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI_变流器LVRT信号',
  `DIHeating` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI_变流器加热',
  `DIFault` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI_变流器故障',
  `DIGridFault` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI_变流器电网故障',
  `DIMCBTripped` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI_变流器MCB跳闸',
  `DIUPSWarning` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI_UPS告警',
  `DIOverSpd` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI_变流器过速',
  `DIHVRT` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI_变流器HVRT信号',
  `DOControllerOK` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DO_控制器正常',
  `DOGenSwitchOFF` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DO_发电机脱网',
  `DOExciting` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DO_开始励磁',
  `DOSync` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DO_开始并网',
  `DOResetFault` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DO_复位故障',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '变流器' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_conveter
-- ----------------------------
INSERT INTO `b_conveter` VALUES (1, 1, '2020-03-23 12:23:44', 1, 3, 8200.00000, 100.00000, 8215.00000, 1803.00000, 20.00000, '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '1', '0');
INSERT INTO `b_conveter` VALUES (2, 2, '2020-03-23 12:23:44', 1, 3, 8100.00000, 50.00000, 8106.00000, 1800.00000, 21.00000, '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '1', '0');
INSERT INTO `b_conveter` VALUES (3, 3, '2020-03-23 12:23:44', 1, 3, 8300.00000, 20.00000, 8290.00000, 1799.00000, 21.50000, '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '1', '0');

-- ----------------------------
-- Table structure for b_drivechain
-- ----------------------------
DROP TABLE IF EXISTS `b_drivechain`;
CREATE TABLE `b_drivechain`  (
  `ID` int(32) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `TurbineID` int(16) NULL DEFAULT NULL COMMENT '机组ID',
  `TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '时间',
  `GearboxCtrlMode` int(16) NULL DEFAULT NULL COMMENT '齿轮箱控制模式',
  `GearboxState` float(255, 5) NULL DEFAULT NULL COMMENT '齿轮箱状态反馈',
  `GbxOilTemp` float(255, 5) NULL DEFAULT NULL COMMENT 'TEMP-齿轮箱油温度',
  `GbxGear1Temp` float(255, 5) NULL DEFAULT NULL COMMENT 'TEMP-齿轮箱轴承1温度',
  `GbxGear2Temp` float(255, 5) NULL DEFAULT NULL COMMENT 'TEMP-齿轮箱轴承2温度',
  `GbxInputOilTemp` float(255, 5) NULL DEFAULT NULL COMMENT 'TEMP-齿轮箱入口油温',
  `RotorGearTemp` float(255, 5) NULL DEFAULT NULL COMMENT 'TEMP-主轴承温度',
  `GbxOilPressure` float(255, 5) NULL DEFAULT NULL COMMENT 'AI-齿轮箱油压',
  `GbxInputOilPressure` float(255, 5) NULL DEFAULT NULL COMMENT 'AI-齿轮箱入口油压',
  `DIGbxOilLevel` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-齿轮箱油位',
  `DIGbxFilterPressureSwitch` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-齿轮油过滤器压力开关',
  `DIGbxLubPumpBreaker` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-齿轮润滑泵断路器',
  `DIRotorLubPumpBreaker` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-主轴润滑泵断路器',
  `DIGbxFanBreaker` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-齿轮箱风扇断路器',
  `DIGbxHeaterBreaker` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-齿轮箱加热器断路器',
  `DOGbxHssPumpConnector` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DO-齿轮箱高速油泵接触器',
  `DOGbxOilPumpConnector` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DO-齿轮箱油泵接触器',
  `DORotorLubPumpConnector` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DO-主轴润滑泵接触器',
  `DOGbxFanConnector` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DO-齿轮箱风扇接触器',
  `DOGbxHeaterConnector` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DO-齿轮箱加热器接触器',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '传动链' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_drivechain
-- ----------------------------
INSERT INTO `b_drivechain` VALUES (1, 1, '2020-03-23 12:23:44', 3, 3.00000, 40.50000, 60.10000, 67.50000, 45.10000, 55.10000, 1.20000, 0.90000, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `b_drivechain` VALUES (2, 2, '2020-03-23 12:23:44', 3, 2.00000, 40.60000, 60.20000, 67.50000, 45.20000, 55.20000, 1.30000, 0.80000, '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1');
INSERT INTO `b_drivechain` VALUES (3, 3, '2020-03-23 12:23:44', 3, 3.00000, 40.70000, 60.30000, 67.60000, 45.30000, 55.30000, 1.40000, 0.70000, '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0');
INSERT INTO `b_drivechain` VALUES (4, 5, '2020-03-23 12:23:44', 3, 3.00000, 40.80000, 60.40000, 67.70000, 45.40000, 55.40000, 1.50000, 0.80000, '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1');

-- ----------------------------
-- Table structure for b_electricgenerator
-- ----------------------------
DROP TABLE IF EXISTS `b_electricgenerator`;
CREATE TABLE `b_electricgenerator`  (
  `ID` int(32) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `TurbineID` int(16) NULL DEFAULT NULL COMMENT '机组ID',
  `TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '时间',
  `GenCtrlMode` int(16) NULL DEFAULT NULL COMMENT '发电机控制模式',
  `GenState` int(16) NULL DEFAULT NULL COMMENT '发电机状态反馈',
  `StatorWind1Temp` float(255, 5) NULL DEFAULT NULL COMMENT 'TEMP-发电机定子绕组1',
  `StatorWind2Temp` float(255, 5) NULL DEFAULT NULL COMMENT 'TEMP-发电机定子绕组2',
  `StatorWind3Temp` float(255, 5) NULL DEFAULT NULL COMMENT 'TEMP-发电机定子绕组3',
  `GenDEGearTemp` float(255, 5) NULL DEFAULT NULL COMMENT 'TEMP-发电机前轴承',
  `GenNDEGearTemp` float(255, 5) NULL DEFAULT NULL COMMENT 'TEMP-发电机后轴承',
  `DIStatorWindResiter` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-发电机定子绕组热敏电阻',
  `DIBrushWearing` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-发电机碳刷磨损',
  `DIprotection` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-发电机防雷保护',
  `DIGenFan1CircultBreaker` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-发电机冷却风扇断路器',
  `DIGenFan2CircultBreaker` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-发电机冷却风扇2断路器',
  `DIGenHeatingConnector` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DO-发电机加热器接触器',
  `DIGenFan1Connector` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DO-发电机风扇1接触器',
  `DIGenFan2Connector` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DO-发电机风扇2接触器',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '发电机' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_electricgenerator
-- ----------------------------
INSERT INTO `b_electricgenerator` VALUES (1, 1, '2020-03-24 12:01:04', 2, 3, 80.00000, 88.00000, 87.00000, 66.00000, 56.00000, '1', '1', '1', '1', '1', '0', '0', '0');
INSERT INTO `b_electricgenerator` VALUES (2, 2, '2020-03-24 12:01:04', 2, 3, 87.00000, 88.00000, 86.00000, 67.00000, 56.00000, '1', '1', '1', '1', '1', '0', '0', '0');
INSERT INTO `b_electricgenerator` VALUES (3, 3, '2020-03-24 12:01:54', 2, 3, 86.00000, 88.00000, 85.00000, 68.00000, 54.00000, '1', '1', '1', '1', '1', '0', '0', '0');

-- ----------------------------
-- Table structure for b_grid
-- ----------------------------
DROP TABLE IF EXISTS `b_grid`;
CREATE TABLE `b_grid`  (
  `ID` int(32) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `TurbineID` int(16) NULL DEFAULT NULL COMMENT '机组ID',
  `TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '时间',
  `GridState` int(16) NULL DEFAULT NULL COMMENT '电网状态机',
  `ActivePower` float(255, 5) NULL DEFAULT NULL COMMENT '电网有功功率',
  `ReactPower` float(255, 5) NULL DEFAULT NULL COMMENT '电网无功功率',
  `Uuv` float(255, 5) NULL DEFAULT NULL COMMENT '电网线电压UV',
  `Uvw` float(255, 5) NULL DEFAULT NULL COMMENT '电网线电压VW',
  `Uwu` float(255, 5) NULL DEFAULT NULL COMMENT '电网线电压WU',
  `Iu` float(255, 5) NULL DEFAULT NULL COMMENT '电网线电流U',
  `Iv` float(255, 5) NULL DEFAULT NULL COMMENT '电网线电流V',
  `Iw` float(255, 5) NULL DEFAULT NULL COMMENT '电网线电流W',
  `Freq` float(255, 5) NULL DEFAULT NULL COMMENT '电网频率',
  `Uun` float(255, 5) NULL DEFAULT NULL COMMENT '电网相电压U',
  `Uvn` float(255, 5) NULL DEFAULT NULL COMMENT '电网相电压V',
  `Uwn` float(255, 5) NULL DEFAULT NULL COMMENT '电网相电压W',
  `phiUV` float(255, 5) NULL DEFAULT NULL COMMENT '电网相位差UV',
  `phiVW` float(255, 5) NULL DEFAULT NULL COMMENT '电网相位差VW',
  `phiWU` float(255, 5) NULL DEFAULT NULL COMMENT '电网相位差WU',
  `Actpower30s` float(255, 5) NULL DEFAULT NULL COMMENT '电网有功30s平均值',
  `Reactpower30s` float(255, 5) NULL DEFAULT NULL COMMENT '电网无功30s平均值',
  `Actpower10min` float(255, 5) NULL DEFAULT NULL COMMENT '电网有功10min平均值',
  `Reactpower10min` float(255, 5) NULL DEFAULT NULL COMMENT '电网无功10min平均值',
  `UsMax` float(255, 5) NULL DEFAULT NULL COMMENT '相电压最大值',
  `UdMax` float(255, 5) NULL DEFAULT NULL COMMENT '线电压最大值',
  `Udavg` float(255, 5) NULL DEFAULT NULL COMMENT '平均线电压',
  `Iavg` float(255, 5) NULL DEFAULT NULL COMMENT '平均线电流',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '电网' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_grid
-- ----------------------------
INSERT INTO `b_grid` VALUES (1, 1, '2020-03-24 12:01:04', 1, 1500.00000, 10.00000, 688.00000, 688.00000, 690.00000, 600.00000, 600.00000, 600.00000, 50.05000, 400.00000, 400.00000, 400.00000, 120.00000, 120.00000, 120.70000, 1490.00000, 12.00000, 1499.00000, 11.00000, 430.00000, 704.00000, 400.00000, 500.00000);
INSERT INTO `b_grid` VALUES (2, 2, '2020-03-24 12:01:04', 1, 1490.00000, 20.00000, 687.00000, 690.00000, 690.00000, 590.00000, 590.00000, 590.00000, 50.04000, 400.00000, 400.00000, 400.00000, 120.00000, 120.00000, 120.40000, 1498.00000, 15.00000, 1506.00000, 12.00000, 420.00000, 710.00000, 401.00000, 501.00000);
INSERT INTO `b_grid` VALUES (3, 3, '2020-03-24 12:01:04', 1, 1498.00000, 30.00000, 689.00000, 690.00000, 690.29999, 595.00000, 595.00000, 595.00000, 49.96000, 400.00000, 400.00000, 400.00000, 120.40000, 120.00000, 120.00000, 1503.50000, 16.70000, 1507.00000, 20.00000, 410.50000, 720.50000, 403.50000, 502.00000);

-- ----------------------------
-- Table structure for b_hydraulic
-- ----------------------------
DROP TABLE IF EXISTS `b_hydraulic`;
CREATE TABLE `b_hydraulic`  (
  `ID` int(32) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `TurbineID` int(16) NULL DEFAULT NULL COMMENT '机组ID',
  `TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '时间',
  `HydCtrlMode` int(16) NULL DEFAULT NULL COMMENT '液压控制模式',
  `HydState` int(16) NULL DEFAULT NULL COMMENT '液压状态反馈',
  `AIHydPressure` float(255, 5) NULL DEFAULT NULL COMMENT 'AI-液压系统压力',
  `DIHydOilLevel` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-液压站液位信号',
  `DIHydPumpCircultBeaker` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-液压油泵保护',
  `DIHydPumpConncetor` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DO-液压泵接触器',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '液压系统' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_hydraulic
-- ----------------------------
INSERT INTO `b_hydraulic` VALUES (1, 1, '2020-03-23 12:23:44', 1, 2, 4.20000, '1', '1', '1');
INSERT INTO `b_hydraulic` VALUES (2, 2, '2020-03-23 12:23:44', 1, 2, 4.30000, '1', '1', '1');
INSERT INTO `b_hydraulic` VALUES (3, 3, '2020-03-23 12:23:44', 1, 2, 4.50000, '1', '1', '1');

-- ----------------------------
-- Table structure for b_mainstate
-- ----------------------------
DROP TABLE IF EXISTS `b_mainstate`;
CREATE TABLE `b_mainstate`  (
  `ID` int(32) NOT NULL,
  `TurbineID` int(16) NULL DEFAULT NULL COMMENT '机组ID',
  `TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '时间',
  `MainState` int(16) NULL DEFAULT NULL COMMENT '风机主状态机',
  `SubState` int(16) NULL DEFAULT NULL COMMENT '风机子状态机',
  `ActiveCode` int(16) NULL DEFAULT NULL COMMENT '当前激活的状态码',
  `Availbility` int(16) NULL DEFAULT NULL COMMENT '风机可利用率状态',
  `Windspd` float NULL DEFAULT NULL COMMENT '风速',
  `ActPower` float NULL DEFAULT NULL COMMENT '功率',
  `GenSpd` float NULL DEFAULT NULL COMMENT '发电机转速',
  `PitAve` float NULL DEFAULT NULL COMMENT '桨角',
  `YawErr` float NULL DEFAULT NULL COMMENT '相对风向',
  `GeoWindvane` float NULL DEFAULT NULL COMMENT '地理风向',
  `NacelleAngleByNorth` float NULL DEFAULT NULL COMMENT '机舱对北位置',
  `TwistAngle` float NULL DEFAULT NULL COMMENT '扭缆角度',
  `PowerLmt` float NULL DEFAULT NULL COMMENT '功率限值',
  `PowerlimitedState` float NULL DEFAULT NULL COMMENT '功率限制状态',
  `GenWindTempHighPowerLmt` float NULL DEFAULT NULL COMMENT '发电机绕组温度高功率限值',
  `GbxTempHighPowerLmt` float NULL DEFAULT NULL COMMENT '齿轮箱温度高功率限值',
  `ConvTempHighPowerLmt` float NULL DEFAULT NULL COMMENT '变流器风冷温度高功率限值',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '风机主状态' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_mainstate
-- ----------------------------
INSERT INTO `b_mainstate` VALUES (1, 1, '2020-03-23 12:23:44', 5, 25, 1203, 5, 12.5, 1501, 1800, 1.5, 12, 320, 308, 400, 1500, 1, 1500, 1500, 1500);
INSERT INTO `b_mainstate` VALUES (2, 2, '2020-03-23 12:23:44', 5, 25, 1105, 5, 12.8, 1498, 1799, 1.3, -13, 340, 353, 230.5, 1500, 1, 1500, 1500, 1500);
INSERT INTO `b_mainstate` VALUES (3, 3, '2020-03-23 12:23:44', 5, 25, 701, 5, 11.4, 1508, 1798, 0.1, 0, 4, 4, -20.5, 1500, 1, 1500, 1500, 1500);

-- ----------------------------
-- Table structure for b_meteorological
-- ----------------------------
DROP TABLE IF EXISTS `b_meteorological`;
CREATE TABLE `b_meteorological`  (
  `ID` int(32) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `TurbineID` int(16) NULL DEFAULT NULL COMMENT '机组ID',
  `TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '时间',
  `Windspd1s` float(255, 5) NULL DEFAULT NULL COMMENT '测量风速(1sec)',
  `Windspd3s` float(255, 5) NULL DEFAULT NULL COMMENT '测量风速(3sec)',
  `Windspd30s` float(255, 5) NULL DEFAULT NULL COMMENT '测量风速(30sec)',
  `Windspd2m` float(255, 5) NULL DEFAULT NULL COMMENT '测量风速(2min)',
  `Windspd10m` float(255, 5) NULL DEFAULT NULL COMMENT '测量风速(10min)',
  `Windspd1` float(255, 5) NULL DEFAULT NULL COMMENT '风速仪1风速',
  `Windspd2` float(255, 5) NULL DEFAULT NULL COMMENT '风速仪2风速',
  `WindVane1s` float(255, 5) NULL DEFAULT NULL COMMENT '相对风向(1sec)',
  `WindVane3s` float(255, 5) NULL DEFAULT NULL COMMENT '相对风向(短期)',
  `WindVane30s` float(255, 5) NULL DEFAULT NULL COMMENT '相对风向(中期)',
  `WindVane10m` float(255, 5) NULL DEFAULT NULL COMMENT '相对风向(长期)',
  `GeroWindVane1s` float(255, 5) NULL DEFAULT NULL COMMENT '地理风向(1sec)',
  `GeroWindVane3s` float(255, 5) NULL DEFAULT NULL COMMENT '地理风向(短期)',
  `GeroWindVane30s` float(255, 5) NULL DEFAULT NULL COMMENT '地理风向(中期)',
  `GeroWindVane10m` float(255, 5) NULL DEFAULT NULL COMMENT '地理风向(长期)',
  `WindVane1` float(255, 5) NULL DEFAULT NULL COMMENT '相对风向1',
  `WindVane2` float(255, 5) NULL DEFAULT NULL COMMENT '相对风向2',
  `AirTemp` float(255, 5) NULL DEFAULT NULL COMMENT 'TEMP-大气温度',
  `DOWindMeterHeaterOn` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DO_风速风向仪加热接触器',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '气象' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_meteorological
-- ----------------------------
INSERT INTO `b_meteorological` VALUES (1, 1, '2020-03-23 12:23:44', 11.40000, 12.50000, 10.90000, 10.50000, 11.60000, 13.50000, 11.40000, 20.40000, 10.40000, 15.40000, 9.80000, 320.79999, 340.79999, 345.79999, 346.79999, 12.70000, 11.40000, 20.50000, '0');
INSERT INTO `b_meteorological` VALUES (2, 2, '2020-03-23 12:23:44', 12.50000, 13.50000, 12.60000, 11.40000, 11.70000, 9.90000, 12.60000, 10.40000, -12.00000, 4.50000, 6.80000, 320.10001, 320.60001, 330.70001, 325.79999, 11.40000, 12.60000, 20.00000, '0');
INSERT INTO `b_meteorological` VALUES (3, 3, '2020-03-23 12:23:44', 12.70000, 11.50000, 10.80000, 11.50000, 11.80000, 10.30000, 14.50000, 8.80000, -5.80000, 8.70000, 9.60000, 310.60001, 310.70001, 308.89999, 309.79999, 14.50000, 12.50000, 19.50000, '0');

-- ----------------------------
-- Table structure for b_pitsystem
-- ----------------------------
DROP TABLE IF EXISTS `b_pitsystem`;
CREATE TABLE `b_pitsystem`  (
  `ID` int(32) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `TurbineID` int(16) NULL DEFAULT NULL COMMENT '机组ID',
  `TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '时间',
  `PitCtrlMode` int(16) NULL DEFAULT NULL COMMENT '变桨控制模式',
  `PitStateFB` int(16) NULL DEFAULT NULL COMMENT '变桨状态反馈',
  `Pit1Setpoint` float(255, 5) NULL DEFAULT NULL COMMENT '桨叶1位置给定',
  `Pit2Setpoint` float(255, 5) NULL DEFAULT NULL COMMENT '桨叶2位置给定',
  `Pit3Setpoint` float(255, 5) NULL DEFAULT NULL COMMENT '桨叶3位置给定',
  `Pit1Actual` float(255, 5) NULL DEFAULT NULL COMMENT '桨叶1实际角度',
  `Pit2Actual` float(255, 5) NULL DEFAULT NULL COMMENT '桨叶2实际角度',
  `Pit3Actual` float(255, 5) NULL DEFAULT NULL COMMENT '桨叶3实际角度',
  `PitAve` float(255, 5) NULL DEFAULT NULL COMMENT '实际平均桨距角',
  `Pit1MotorCurrent` float(255, 5) NULL DEFAULT NULL COMMENT '桨叶1电机电流',
  `Pit2MotorCurrent` float(255, 5) NULL DEFAULT NULL COMMENT '桨叶2电机电流',
  `Pit3MotorCurrent` float(255, 5) NULL DEFAULT NULL COMMENT '桨叶3电机电流',
  `Pit1MotorTemp` float(255, 5) NULL DEFAULT NULL COMMENT '桨叶1电机温度',
  `Pit2MotorTemp` float(255, 5) NULL DEFAULT NULL COMMENT '桨叶2电机温度',
  `Pit3MotorTemp` float(255, 5) NULL DEFAULT NULL COMMENT '桨叶3电机温度',
  `Pit1EncoderA` float(255, 5) NULL DEFAULT NULL COMMENT '桨叶1角度A编码器值',
  `Pit2EncoderA` float(255, 5) NULL DEFAULT NULL COMMENT '桨叶2角度A编码器值',
  `Pit3EncoderA` float(255, 5) NULL DEFAULT NULL COMMENT '桨叶3角度A编码器值',
  `Pit1EncoderB` float(255, 5) NULL DEFAULT NULL COMMENT '桨叶1角度B编码器值',
  `Pit2EncoderB` float(255, 5) NULL DEFAULT NULL COMMENT '桨叶2角度B编码器值',
  `Pit3EncoderB` float(255, 5) NULL DEFAULT NULL COMMENT '桨叶3角度B编码器值',
  `HubTemp` float(255, 5) NULL DEFAULT NULL COMMENT '轮毂温度',
  `Pit1FollowErr` float(255, 5) NULL DEFAULT NULL COMMENT '桨叶1跟随误差',
  `Pit2FollowErr` float(255, 5) NULL DEFAULT NULL COMMENT '桨叶2跟随误差',
  `Pit3FollowErr` float(255, 5) NULL DEFAULT NULL COMMENT '桨叶3跟随误差',
  `Pit1and23Integral` float(255, 5) NULL DEFAULT NULL COMMENT '桨叶1与2,3偏差积分',
  `Pit2and13Integral` float(255, 5) NULL DEFAULT NULL COMMENT '桨叶2与1,3偏差积分',
  `Pit3and12Integral` float(255, 5) NULL DEFAULT NULL COMMENT '桨叶3与1,2偏差积分',
  `PitBatTestDuration` int(32) NULL DEFAULT NULL COMMENT '变桨电池测试周期计时',
  `PitBatTestFlag` int(16) NULL DEFAULT NULL COMMENT '变桨电池测试标志位',
  `PitBatTestCount` int(16) NULL DEFAULT NULL COMMENT '变桨电池测试计数器',
  `DIPitBatVolOk` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-变桨电池电压正常',
  `DIPitFault` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-变桨故障',
  `DIAllBladesAtFeather` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-3个桨叶在顺桨位置',
  `DOLmtSwitchBypass` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DO-限位开关旁路',
  `DOEFC` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DO-紧急顺桨指令EFC',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '变桨系统' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_pitsystem
-- ----------------------------
INSERT INTO `b_pitsystem` VALUES (1, 1, '2020-03-23 12:23:44', 5, 5, 1.20000, 1.20000, 1.20000, 1.20000, 1.10000, 1.00000, 1.20000, 14.00000, 13.50000, 13.30000, 50.80000, 50.90000, 51.00000, 1.20000, 1.20000, 1.30000, 1.30000, 1.20000, 1.20000, 30.50000, 0.20000, 0.10000, 0.10000, 0.30000, 0.40000, 0.60000, 47, 0, 133, '1', '1', '0', '0', '1');
INSERT INTO `b_pitsystem` VALUES (2, 2, '2020-03-23 12:23:44', 5, 5, 1.50000, 1.50000, 1.50000, 1.40000, 1.50000, 1.50000, 1.50000, 13.60000, 13.60000, 13.70000, 52.00000, 52.50000, 53.00000, 1.50000, 1.40000, 1.50000, 1.40000, 1.50000, 1.40000, 30.50000, -0.50000, -0.20000, -0.30000, 0.50000, 0.50000, 0.50000, 58, 0, 155, '1', '1', '0', '0', '1');
INSERT INTO `b_pitsystem` VALUES (3, 3, '2020-03-23 12:23:44', 5, 5, 0.50000, 0.50000, 0.50000, 0.30000, 0.40000, 0.50000, 0.50000, 14.20000, 14.00000, 13.90000, 54.00000, 54.50000, 54.80000, 0.40000, 0.50000, 0.40000, 0.50000, 0.40000, 0.50000, 30.60000, 0.10000, 0.10000, 0.10000, 0.40000, 0.60000, 0.40000, 166, 0, 166, '1', '1', '0', '0', '1');

-- ----------------------------
-- Table structure for b_rotorrpm
-- ----------------------------
DROP TABLE IF EXISTS `b_rotorrpm`;
CREATE TABLE `b_rotorrpm`  (
  `ID` int(32) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `TurbineID` int(16) NULL DEFAULT NULL COMMENT '机组号',
  `TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '时间',
  `DIRotorRpmSeneor1` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-风轮转速接近开关1',
  `DIRotorRpmSeneor2` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-风轮转速接近开关2',
  `RotorRpm` float(255, 5) NULL DEFAULT NULL COMMENT '主轴转速',
  `GbxLssRpm` float(255, 5) NULL DEFAULT NULL COMMENT '齿轮箱低速轴转速',
  `GbxHssRpm` float(255, 5) NULL DEFAULT NULL COMMENT '齿轮箱高速轴转速',
  `GenRpm` float(255, 5) NULL DEFAULT NULL COMMENT '发电机转速',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '转速' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_rotorrpm
-- ----------------------------
INSERT INTO `b_rotorrpm` VALUES (1, 1, '2020-03-23 12:23:44', '1', '0', 17.90000, 17.90000, 1800.59998, 1800.00000);
INSERT INTO `b_rotorrpm` VALUES (2, 2, '2020-03-23 12:23:44', '0', '1', 17.80000, 17.80000, 1798.50000, 1798.50000);
INSERT INTO `b_rotorrpm` VALUES (3, 3, '2020-03-23 12:23:44', '0', '0', 17.60000, 17.60000, 1789.59998, 1789.00000);

-- ----------------------------
-- Table structure for b_safetychain
-- ----------------------------
DROP TABLE IF EXISTS `b_safetychain`;
CREATE TABLE `b_safetychain`  (
  `ID` int(32) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `TurbineID` int(16) NULL DEFAULT NULL COMMENT '机组ID',
  `TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '时间',
  `SafetyChainState` int(16) NULL DEFAULT NULL COMMENT '安全链状态',
  `DI24VInputOk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-24V电源输入正常',
  `DI24VOutputOk` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-24V电源输出正常',
  `DINacCabEmergBtn` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-机舱柜紧急停机按钮',
  `DITowCabEmergBtn` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-塔底柜紧急停机按钮',
  `DINacEmergBtn` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-机舱紧急停机按钮',
  `DIPitchServiceSwitch` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-变桨手动维护开关',
  `DICWTwistLmt` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-CW扭缆超限',
  `DICCWTwistLmt` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-CCW扭缆超限',
  `DIVibSwitch` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-振动开关',
  `DIMCCBFeedback` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-主断路器MCB反馈',
  `DIRotorOverSpd` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-叶轮超速',
  `DIGbxHssOverSpd` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-齿轮箱高速轴超速',
  `DISafetyChainFB` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-安全链回路反馈',
  `DOMCResetSafetyChain` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DO-主控制器复位安全链',
  `DOMCOpenSafetyChain` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DO-主控制器断开安全链',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '安全链' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_safetychain
-- ----------------------------
INSERT INTO `b_safetychain` VALUES (1, 1, '2020-03-23 12:23:44', 1, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0');
INSERT INTO `b_safetychain` VALUES (2, 2, '2020-03-23 12:23:44', 1, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0');
INSERT INTO `b_safetychain` VALUES (3, 3, '2020-03-23 12:23:44', 1, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0');

-- ----------------------------
-- Table structure for b_statecode
-- ----------------------------
DROP TABLE IF EXISTS `b_statecode`;
CREATE TABLE `b_statecode`  (
  `ID` int(32) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `TurbineID` int(16) NULL DEFAULT NULL COMMENT '机组ID',
  `TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '时间',
  `ActiveCode1` int(16) NULL DEFAULT NULL COMMENT '激活的状态码1',
  `ActiveCode2` int(16) NULL DEFAULT NULL COMMENT '激活的状态码2',
  `ActiveCode3` int(16) NULL DEFAULT NULL COMMENT '激活的状态码3',
  `ActiveCode4` int(16) NULL DEFAULT NULL COMMENT '激活的状态码4',
  `ActiveCode5` int(16) NULL DEFAULT NULL COMMENT '激活的状态码5',
  `ActiveCode6` int(16) NULL DEFAULT NULL COMMENT '激活的状态码6',
  `ActiveCode7` int(16) NULL DEFAULT NULL COMMENT '激活的状态码7',
  `ActiveCode8` int(16) NULL DEFAULT NULL COMMENT '激活的状态码8',
  `ActiveCode9` int(16) NULL DEFAULT NULL COMMENT '激活的状态码9',
  `ActiveCode10` int(16) NULL DEFAULT NULL COMMENT '激活的状态码10',
  `ActiveCode11` int(16) NULL DEFAULT NULL COMMENT '激活的状态码11',
  `ActiveCode12` int(16) NULL DEFAULT NULL COMMENT '激活的状态码12',
  `ActiveCode13` int(16) NULL DEFAULT NULL COMMENT '激活的状态码13',
  `ActiveCode14` int(16) NULL DEFAULT NULL COMMENT '激活的状态码14',
  `ActiveCode15` int(16) NULL DEFAULT NULL COMMENT '激活的状态码15',
  `ActiveCode16` int(16) NULL DEFAULT NULL COMMENT '激活的状态码16',
  `ActiveCode17` int(16) NULL DEFAULT NULL COMMENT '激活的状态码17',
  `ActiveCode18` int(16) NULL DEFAULT NULL COMMENT '激活的状态码18',
  `ActiveCode19` int(16) NULL DEFAULT NULL COMMENT '激活的状态码19',
  `ActiveCode20` int(16) NULL DEFAULT NULL COMMENT '激活的状态码20',
  `ActiveCode1TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '激活的状态码1激活时间',
  `ActiveCode2TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '激活的状态码2激活时间',
  `ActiveCode3TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '激活的状态码3激活时间',
  `ActiveCode4TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '激活的状态码4激活时间',
  `ActiveCode5TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '激活的状态码5激活时间',
  `ActiveCode6TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '激活的状态码6激活时间',
  `ActiveCode7TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '激活的状态码7激活时间',
  `ActiveCode8TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '激活的状态码8激活时间',
  `ActiveCode9TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '激活的状态码9激活时间',
  `ActiveCode10TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '激活的状态码10激活时间',
  `ActiveCode11TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '激活的状态码11激活时间',
  `ActiveCode12TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '激活的状态码12激活时间',
  `ActiveCode13TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '激活的状态码13激活时间',
  `ActiveCode14TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '激活的状态码14激活时间',
  `ActiveCode15TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '激活的状态码15激活时间',
  `ActiveCode16TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '激活的状态码16激活时间',
  `ActiveCode17TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '激活的状态码17激活时间',
  `ActiveCode18TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '激活的状态码18激活时间',
  `ActiveCode19TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '激活的状态码19激活时间',
  `ActiveCode20TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '激活的状态码20激活时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '状态码' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_statecode
-- ----------------------------
INSERT INTO `b_statecode` VALUES (1, 1, '2020-03-23 12:23:44', 1105, 504, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-03-21 12:23:44', '2020-03-23 08:24:44', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `b_statecode` VALUES (2, 2, '2020-03-23 12:23:44', 1205, 1208, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-03-20 12:23:44', '2020-03-16 08:24:44', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00');
INSERT INTO `b_statecode` VALUES (3, 3, '2020-03-23 12:23:44', 701, 820, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2020-03-21 12:55:44', '2020-03-23 09:24:44', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01 00:00:00');

-- ----------------------------
-- Table structure for b_statistics
-- ----------------------------
DROP TABLE IF EXISTS `b_statistics`;
CREATE TABLE `b_statistics`  (
  `ID` int(32) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `TurbineID` int(16) NULL DEFAULT NULL COMMENT '机组ID',
  `TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '时间',
  `TotalActPowerProduction` int(32) NULL DEFAULT NULL COMMENT '历史总有功发电量',
  `TotalActPowerConsumption` int(32) NULL DEFAULT NULL COMMENT '历史总有功耗电量',
  `TotalReactPowerProduction` int(32) NULL DEFAULT NULL COMMENT '历史总无功发电量',
  `TotalReactPowerConsumption` int(32) NULL DEFAULT NULL COMMENT '历史总无功耗电量',
  `TotalProductionTime` int(32) NULL DEFAULT NULL COMMENT '发电时间',
  `TotalRuningTime` int(32) NULL DEFAULT NULL COMMENT '运行时间',
  `TotalMannulStopTime` int(32) NULL DEFAULT NULL COMMENT '人工停机时间',
  `TotalWetherStopTime` int(32) NULL DEFAULT NULL COMMENT '天气原因停机时间',
  `TotalGridFaultStopTime` int(32) NULL DEFAULT NULL COMMENT '电网故障停机时间',
  `TotalTurbineFaultStopTime` int(32) NULL DEFAULT NULL COMMENT '风机故障停机时间',
  `TotalTime` int(32) NULL DEFAULT NULL COMMENT '总统计时间',
  `TotalAvailability` int(32) NULL DEFAULT NULL COMMENT '风机总可利用率',
  `StatResetTimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '复位总数据时间戳',
  `YearlyActiveProduction` int(32) NULL DEFAULT NULL COMMENT '风机当年有功发电量',
  `YearlyActiveConsumption` int(32) NULL DEFAULT NULL COMMENT '风机当年有功耗电量',
  `MonthActiveProduction` int(32) NULL DEFAULT NULL COMMENT '风机当月有功发电量',
  `MonthActiveConsumption` int(32) NULL DEFAULT NULL COMMENT '风机当月有功耗电量',
  `DayActiveProduction` int(32) NULL DEFAULT NULL COMMENT '风机当日有功发电量',
  `DayActiveConsumption` int(32) NULL DEFAULT NULL COMMENT '风机当日有功耗电量',
  `DayReactiveProduction` int(32) NULL DEFAULT NULL COMMENT '风机当日无功发电量',
  `DayReactiveConsumption` int(32) NULL DEFAULT NULL COMMENT '风机当日无功耗电量',
  `DayProductionTime` int(32) NULL DEFAULT NULL COMMENT '当日发电时间',
  `DayRuningTime` int(32) NULL DEFAULT NULL COMMENT '当日运行时间',
  `DayMannulStopTime` int(32) NULL DEFAULT NULL COMMENT '当日人工停机时间',
  `DayWetherStopTime` int(32) NULL DEFAULT NULL COMMENT '当日天气原因停机时间',
  `DayGridFaultStopTime` int(32) NULL DEFAULT NULL COMMENT '当日电网故障停机时间',
  `DayTurbineFaultStopTime` int(32) NULL DEFAULT NULL COMMENT '当日风机故障停机时间',
  `DayStatTime` int(32) NULL DEFAULT NULL COMMENT '当日统计时间',
  `DayAvailability` int(32) NULL DEFAULT NULL COMMENT '当日可利用率',
  `CWYawCount` int(32) NULL DEFAULT NULL COMMENT 'CW偏航次数',
  `CWYawTime` int(32) NULL DEFAULT NULL COMMENT 'CW偏航时间',
  `CCWYawCount` int(32) NULL DEFAULT NULL COMMENT 'CCW偏航次数',
  `CCWYawTime` int(32) NULL DEFAULT NULL COMMENT 'CCW偏航时间',
  `BrakeCount` int(32) NULL DEFAULT NULL COMMENT '刹车抱闸次数',
  `BrakeTime` int(32) NULL DEFAULT NULL COMMENT '刹车抱闸时间',
  `GeneratorHeaterOnCount` int(32) NULL DEFAULT NULL COMMENT '发电机加热器开启次数',
  `GeneratorHeaterOnTime` int(32) NULL DEFAULT NULL COMMENT '发电机加热器开启时间',
  `GeneratorFan1OnCount` int(32) NULL DEFAULT NULL COMMENT '发电机风扇1开启次数',
  `GeneratorFan1OnTime` int(32) NULL DEFAULT NULL COMMENT '发电机风扇1开启时间',
  `GeneratorFan2OnCount` int(32) NULL DEFAULT NULL COMMENT '发电机风扇2开启次数',
  `GeneratorFan2OnTime` int(32) NULL DEFAULT NULL COMMENT '发电机风扇2开启时间',
  `GbxHeaterOnCount` int(32) NULL DEFAULT NULL COMMENT '齿轮箱加热器开启次数',
  `GbxHeaterOnTime` int(32) NULL DEFAULT NULL COMMENT '齿轮箱加热器开启时间',
  `GbxFanOnCount` int(32) NULL DEFAULT NULL COMMENT '齿轮箱风扇开启次数',
  `GbxFanOnTime` int(32) NULL DEFAULT NULL COMMENT '齿轮箱风扇开启时间',
  `GbxPumpOnCount` int(32) NULL DEFAULT NULL COMMENT '齿轮箱油泵开启次数',
  `GbxPumpOnTime` int(32) NULL DEFAULT NULL COMMENT '齿轮箱油泵开启时间',
  `RotorLubOnCount` int(32) NULL DEFAULT NULL COMMENT '主轴润滑泵开启次数',
  `RotorLubOnTime` int(32) NULL DEFAULT NULL COMMENT '主轴润滑泵开启时间',
  `HydPumpOnCount` int(32) NULL DEFAULT NULL COMMENT '液压站油泵开启次数',
  `HydPumpOnTime` int(32) NULL DEFAULT NULL COMMENT '液压站油泵开启时间',
  `WindMeterHeaterOnCount` int(32) NULL DEFAULT NULL COMMENT '测风仪加热器开启次数',
  `WindMeterHeaterOnTime` int(32) NULL DEFAULT NULL COMMENT '测风仪加热器开启时间',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '统计' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for b_statuscode
-- ----------------------------
DROP TABLE IF EXISTS `b_statuscode`;
CREATE TABLE `b_statuscode`  (
  `ID` int(32) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `StatusCode` int(16) NULL DEFAULT NULL COMMENT '状态码值',
  `BrakeType` int(16) NULL DEFAULT NULL COMMENT '刹车类型',
  `StopType` int(16) NULL DEFAULT NULL COMMENT '停机类型',
  `ResetMode` int(16) NULL DEFAULT NULL COMMENT '复位方式',
  `Availability` int(16) NULL DEFAULT NULL COMMENT '可利用率类型',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '状态码表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for b_turbineinfo
-- ----------------------------
DROP TABLE IF EXISTS `b_turbineinfo`;
CREATE TABLE `b_turbineinfo`  (
  `ID` int(32) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `TurbineID` int(16) NULL DEFAULT NULL COMMENT '机组ID',
  `Type` int(16) NULL DEFAULT NULL COMMENT '类型',
  `Capacity` int(16) NULL DEFAULT NULL COMMENT '容量',
  `Line` int(16) NULL DEFAULT NULL COMMENT '线路',
  `IPAddr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '机组信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_turbineinfo
-- ----------------------------
INSERT INTO `b_turbineinfo` VALUES (1, 1, NULL, 150, 11, '10.12.100.1');
INSERT INTO `b_turbineinfo` VALUES (2, 2, NULL, 150, 11, '10.12.100.2');

-- ----------------------------
-- Table structure for b_yaw
-- ----------------------------
DROP TABLE IF EXISTS `b_yaw`;
CREATE TABLE `b_yaw`  (
  `ID` int(32) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `TurbineID` int(16) NULL DEFAULT NULL COMMENT '机组ID',
  `TimeStamp` datetime(0) NULL DEFAULT NULL COMMENT '时间',
  `YawCtrlMode` int(16) NULL DEFAULT NULL COMMENT '偏航控制模式',
  `YawState` int(16) NULL DEFAULT NULL COMMENT '偏航状态反馈',
  `YawDriveCtrlMode` int(16) NULL DEFAULT NULL COMMENT '偏航驱动控制模式',
  `YawDriveState` int(16) NULL DEFAULT NULL COMMENT '偏航驱动状态',
  `DIYawPauseA` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-偏航脉冲A',
  `DIYawPauseB` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-偏航脉冲B',
  `DIYawMotor13Breaker` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-偏航电机13断路器',
  `DIYawMotor24Breaker` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-偏航电机24断路器',
  `DIYawElectricBrakeBreaker` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DI-偏航电气制动断路器',
  `DOYawMotor13CWConnector` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DO-偏航电机13_CW接触器',
  `DOYawMotor13CCWConnector` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DO-偏航电机13_CCW接触器',
  `DOYawMotor24CWConnector` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DO-偏航电机24_CW接触器',
  `DOYawMotor24CCWConnector` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DO-偏航电机24_CCW接触器',
  `D0YawElectricBrake` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DO-偏航电气刹车',
  `D0YawHydraulicBrake` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DO-偏航液压刹车阀',
  `YawTwistAngle` float(255, 5) NULL DEFAULT NULL COMMENT '偏航扭缆角度',
  `YawErrShort` float(255, 5) NULL DEFAULT NULL COMMENT '相对风向角度(短期)',
  `YawErrMedium` float(255, 5) NULL DEFAULT NULL COMMENT '相对风向角度(中期)',
  `YawErrLong` float(255, 5) NULL DEFAULT NULL COMMENT '相对风向角度(长期)',
  `NacellePositionByNorth` float(255, 5) NULL DEFAULT NULL COMMENT '机舱对北位置',
  `NorthIsCalibrated` int(16) NULL DEFAULT NULL COMMENT '对北已标定',
  `ErrByNorth` float(255, 5) NULL DEFAULT NULL COMMENT '对北偏差',
  `TwistIsCalibrated` int(16) NULL DEFAULT NULL COMMENT '偏航扭缆已校准',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '偏航' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (4, 'b_statuscode', '状态码表', 'BStatuscode', 'crud', 'com.ruoyi.project.system', 'system', 'statuscode', '状态码', 'ruoyi', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-03-19 09:20:51', '', '2020-03-19 09:53:55', '');
INSERT INTO `gen_table` VALUES (5, 'b_turbineinfo', '机组信息表', 'BTurbineinfo', 'crud', 'com.ruoyi.project.system', 'system', 'turbineinfo', '机组信息', 'ruoyi', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-03-19 09:20:51', '', '2020-03-19 09:53:48', '');
INSERT INTO `gen_table` VALUES (6, 'b_accel', '振动', 'BAccel', 'crud', 'com.ruoyi.project.system', 'system', 'accel', '振动', 'ruoyi', NULL, 'admin', '2020-03-24 09:04:50', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (7, 'b_brake', '机械刹车', 'BBrake', 'crud', 'com.ruoyi.project.system', 'system', 'brake', '机械刹车', 'ruoyi', NULL, 'admin', '2020-03-24 09:04:51', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (8, 'b_conveter', '变流器', 'BConveter', 'crud', 'com.ruoyi.project.system', 'system', 'conveter', '变流器', 'ruoyi', NULL, 'admin', '2020-03-24 09:04:51', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (9, 'b_drivechain', '传动链', 'BDrivechain', 'crud', 'com.ruoyi.project.system', 'system', 'drivechain', '传动链', 'ruoyi', NULL, 'admin', '2020-03-24 09:04:51', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (10, 'b_electricgenerator', '发电机', 'BElectricgenerator', 'crud', 'com.ruoyi.project.system', 'system', 'electricgenerator', '发电机', 'ruoyi', NULL, 'admin', '2020-03-24 09:04:51', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (11, 'b_grid', '电网', 'BGrid', 'crud', 'com.ruoyi.project.system', 'system', 'grid', '电网', 'ruoyi', NULL, 'admin', '2020-03-24 09:04:51', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (12, 'b_hydraulic', '液压系统', 'BHydraulic', 'crud', 'com.ruoyi.project.system', 'system', 'hydraulic', '液压系统', 'ruoyi', NULL, 'admin', '2020-03-24 09:04:51', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (13, 'b_mainstate', '风机主状态', 'BMainstate', 'crud', 'com.ruoyi.project.system', 'system', 'mainstate', '风机主状态', 'ruoyi', NULL, 'admin', '2020-03-24 09:04:51', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (14, 'b_meteorological', '气象', 'BMeteorological', 'crud', 'com.ruoyi.project.system', 'system', 'meteorological', '气象', 'ruoyi', NULL, 'admin', '2020-03-24 09:04:51', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (15, 'b_pitsystem', '变桨系统', 'BPitsystem', 'crud', 'com.ruoyi.project.system', 'system', 'pitsystem', '变桨系统', 'ruoyi', NULL, 'admin', '2020-03-24 09:04:51', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (16, 'b_rotorrpm', '转速', 'BRotorrpm', 'crud', 'com.ruoyi.project.system', 'system', 'rotorrpm', '转速', 'ruoyi', NULL, 'admin', '2020-03-24 09:04:51', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (17, 'b_safetychain', '安全链', 'BSafetychain', 'crud', 'com.ruoyi.project.system', 'system', 'safetychain', '安全链', 'ruoyi', NULL, 'admin', '2020-03-24 09:04:51', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (18, 'b_statecode', '状态码', 'BStatecode', 'crud', 'com.ruoyi.project.system', 'system', 'statecode', '状态码', 'ruoyi', NULL, 'admin', '2020-03-24 09:04:51', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (19, 'b_statistics', '统计', 'BStatistics', 'crud', 'com.ruoyi.project.system', 'system', 'statistics', '统计', 'ruoyi', NULL, 'admin', '2020-03-24 09:04:51', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (20, 'b_yaw', '偏航', 'BYaw', 'crud', 'com.ruoyi.project.system', 'system', 'yaw', '偏航', 'ruoyi', NULL, 'admin', '2020-03-24 09:04:51', '', NULL, NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 395 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (25, '4', 'ID', 'ID', 'int(32)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-03-19 09:20:51', NULL, '2020-03-19 09:53:55');
INSERT INTO `gen_table_column` VALUES (26, '4', 'StatusCode', '状态码值', 'int(16)', 'Long', 'statuscode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-03-19 09:20:51', NULL, '2020-03-19 09:53:55');
INSERT INTO `gen_table_column` VALUES (27, '4', 'BrakeType', '刹车类型', 'int(16)', 'Long', 'braketype', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2020-03-19 09:20:51', NULL, '2020-03-19 09:53:55');
INSERT INTO `gen_table_column` VALUES (28, '4', 'StopType', '停机类型', 'int(16)', 'Long', 'stoptype', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2020-03-19 09:20:51', NULL, '2020-03-19 09:53:55');
INSERT INTO `gen_table_column` VALUES (29, '4', 'ResetMode', '复位方式', 'int(16)', 'Long', 'resetmode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-03-19 09:20:51', NULL, '2020-03-19 09:53:55');
INSERT INTO `gen_table_column` VALUES (30, '4', 'Availability', '可利用率类型', 'int(16)', 'Long', 'availability', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-03-19 09:20:51', NULL, '2020-03-19 09:53:55');
INSERT INTO `gen_table_column` VALUES (31, '5', 'ID', 'ID', 'int(32)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-03-19 09:20:51', NULL, '2020-03-19 09:53:48');
INSERT INTO `gen_table_column` VALUES (32, '5', 'TurbineID', '机组ID', 'int(16)', 'Long', 'turbineid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-03-19 09:20:51', NULL, '2020-03-19 09:53:48');
INSERT INTO `gen_table_column` VALUES (33, '5', 'Type', '类型', 'int(16)', 'Long', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2020-03-19 09:20:51', NULL, '2020-03-19 09:53:48');
INSERT INTO `gen_table_column` VALUES (34, '5', 'Capacity', '容量', 'int(16)', 'Long', 'capacity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-03-19 09:20:51', NULL, '2020-03-19 09:53:48');
INSERT INTO `gen_table_column` VALUES (35, '5', 'Line', '线路', 'int(16)', 'Long', 'line', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-03-19 09:20:51', NULL, '2020-03-19 09:53:48');
INSERT INTO `gen_table_column` VALUES (36, '5', 'IPAddr', 'IP地址', 'varchar(255)', 'String', 'ipaddr', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-03-19 09:20:51', NULL, '2020-03-19 09:53:48');
INSERT INTO `gen_table_column` VALUES (37, '6', 'ID', 'ID', 'int(32)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (38, '6', 'TurbineID', '机组ID', 'int(16)', 'Long', 'turbineid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (39, '6', 'TimeStamp', '时间', 'datetime', 'Date', 'timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (40, '6', 'VibrationState', '状态反馈', 'int(16)', 'Long', 'vibrationstate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (41, '6', 'TowerSidebysideAccel', '塔筒通道1振动值', 'float(255,5)', 'Double', 'towersidebysideaccel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (42, '6', 'TowerForeAfterAccel', '塔筒通道2振动值', 'float(255,5)', 'Double', 'towerforeafteraccel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (43, '6', 'DriveChainXAccel', '传动链通道1振动值', 'float(255,5)', 'Double', 'drivechainxaccel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (44, '6', 'DriveChainYAccel', '传动链通道2振动值', 'float(255,5)', 'Double', 'drivechainyaccel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (45, '7', 'ID', 'ID', 'int(32)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (46, '7', 'TurbineID', '机组ID', 'int(16)', 'Long', 'turbineid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (47, '7', 'TimeStamp', '时间', 'datetime', 'Date', 'timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (48, '7', 'BrakeCtrlMode', '机械刹车控制模式', 'int(16)', 'Long', 'brakectrlmode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (49, '7', 'BrakeState', '机械刹车状态反馈', 'int(16)', 'Long', 'brakestate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (50, '7', 'DIBrake1Feedback', 'DI-刹车1反馈', 'char(255)', 'String', 'dibrake1feedback', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (51, '7', 'DIBrake2Feedback', 'DI-刹车2反馈', 'char(255)', 'String', 'dibrake2feedback', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (52, '7', 'DIBrake1WearFault', 'DI-刹车磨损故障1', 'char(255)', 'String', 'dibrake1wearfault', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (53, '7', 'DIBrake2WearFault', 'DI-刹车磨损故障2', 'char(255)', 'String', 'dibrake2wearfault', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (54, '7', 'DIManulBrakeSwitch', 'DI-手动刹车开关', 'char(255)', 'String', 'dimanulbrakeswitch', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (55, '7', 'DOOpenBrake1', 'DO-打开刹车1', 'char(255)', 'String', 'doopenbrake1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (56, '7', 'DOOpenBrake2', 'DO-打开刹车2', 'char(255)', 'String', 'doopenbrake2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (57, '8', 'ID', 'ID', 'int(32)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (58, '8', 'TurbineID', '机组ID', 'int(16)', 'Long', 'turbineid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (59, '8', 'TimeStamp', '时间', 'datetime', 'Date', 'timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (60, '8', 'ConveterCtrlMode', '变流器控制模式', 'int(16)', 'Long', 'conveterctrlmode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (61, '8', 'ConveterState', '变流器状态反馈', 'int(16)', 'Long', 'conveterstate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (62, '8', 'TrqDmd', '转矩给定', 'float(255,5)', 'Double', 'trqdmd', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (63, '8', 'ReactPowerDmd', '功率角给定', 'float(255,5)', 'Double', 'reactpowerdmd', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (64, '8', 'TrqFeedback', '转矩反馈', 'float(255,5)', 'Double', 'trqfeedback', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (65, '8', 'ConverterSpd', '转速反馈', 'float(255,5)', 'Double', 'converterspd', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (66, '8', 'ConverterAirTemp', '变流器入口温度', 'float(255,5)', 'Double', 'converterairtemp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (67, '8', 'DIReadyRun', 'DI_变流器准备就绪', 'char(255)', 'String', 'direadyrun', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (68, '8', 'DIRpmInOperationRange', 'DI_变流器在运行范围内', 'char(255)', 'String', 'dirpminoperationrange', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (69, '8', 'DIReadySync', 'DI_变流器准备并网', 'char(255)', 'String', 'direadysync', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (70, '8', 'DISyncState', 'DI_变流器并网状态', 'char(255)', 'String', 'disyncstate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (71, '8', 'DILVRT', 'DI_变流器LVRT信号', 'char(255)', 'String', 'dilvrt', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (72, '8', 'DIHeating', 'DI_变流器加热', 'char(255)', 'String', 'diheating', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (73, '8', 'DIFault', 'DI_变流器故障', 'char(255)', 'String', 'difault', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (74, '8', 'DIGridFault', 'DI_变流器电网故障', 'char(255)', 'String', 'digridfault', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (75, '8', 'DIMCBTripped', 'DI_变流器MCB跳闸', 'char(255)', 'String', 'dimcbtripped', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (76, '8', 'DIUPSWarning', 'DI_UPS告警', 'char(255)', 'String', 'diupswarning', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (77, '8', 'DIOverSpd', 'DI_变流器过速', 'char(255)', 'String', 'dioverspd', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 21, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (78, '8', 'DIHVRT', 'DI_变流器HVRT信号', 'char(255)', 'String', 'dihvrt', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 22, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (79, '8', 'DOControllerOK', 'DO_控制器正常', 'char(255)', 'String', 'docontrollerok', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 23, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (80, '8', 'DOGenSwitchOFF', 'DO_发电机脱网', 'char(255)', 'String', 'dogenswitchoff', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 24, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (81, '8', 'DOExciting', 'DO_开始励磁', 'char(255)', 'String', 'doexciting', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 25, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (82, '8', 'DOSync', 'DO_开始并网', 'char(255)', 'String', 'dosync', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 26, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (83, '8', 'DOResetFault', 'DO_复位故障', 'char(255)', 'String', 'doresetfault', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 27, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (84, '9', 'ID', 'ID', 'int(32)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (85, '9', 'TurbineID', '机组ID', 'int(16)', 'Long', 'turbineid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (86, '9', 'TimeStamp', '时间', 'datetime', 'Date', 'timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (87, '9', 'GearboxCtrlMode', '齿轮箱控制模式', 'int(16)', 'Long', 'gearboxctrlmode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (88, '9', 'GearboxState', '齿轮箱状态反馈', 'float(255,5)', 'Double', 'gearboxstate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (89, '9', 'GbxOilTemp', 'TEMP-齿轮箱油温度', 'float(255,5)', 'Double', 'gbxoiltemp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (90, '9', 'GbxGear1Temp', 'TEMP-齿轮箱轴承1温度', 'float(255,5)', 'Double', 'gbxgear1temp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (91, '9', 'GbxGear2Temp', 'TEMP-齿轮箱轴承2温度', 'float(255,5)', 'Double', 'gbxgear2temp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (92, '9', 'GbxInputOilTemp', 'TEMP-齿轮箱入口油温', 'float(255,5)', 'Double', 'gbxinputoiltemp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (93, '9', 'RotorGearTemp', 'TEMP-主轴承温度', 'float(255,5)', 'Double', 'rotorgeartemp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (94, '9', 'GbxOilPressure', 'AI-齿轮箱油压', 'float(255,5)', 'Double', 'gbxoilpressure', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (95, '9', 'GbxInputOilPressure', 'AI-齿轮箱入口油压', 'float(255,5)', 'Double', 'gbxinputoilpressure', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (96, '9', 'DIGbxOilLevel', 'DI-齿轮箱油位', 'char(255)', 'String', 'digbxoillevel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (97, '9', 'DIGbxFilterPressureSwitch', 'DI-齿轮油过滤器压力开关', 'char(255)', 'String', 'digbxfilterpressureswitch', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (98, '9', 'DIGbxLubPumpBreaker', 'DI-齿轮润滑泵断路器', 'char(255)', 'String', 'digbxlubpumpbreaker', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (99, '9', 'DIRotorLubPumpBreaker', 'DI-主轴润滑泵断路器', 'char(255)', 'String', 'dirotorlubpumpbreaker', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (100, '9', 'DIGbxFanBreaker', 'DI-齿轮箱风扇断路器', 'char(255)', 'String', 'digbxfanbreaker', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (101, '9', 'DIGbxHeaterBreaker', 'DI-齿轮箱加热器断路器', 'char(255)', 'String', 'digbxheaterbreaker', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (102, '9', 'DOGbxHssPumpConnector', 'DO-齿轮箱高速油泵接触器', 'char(255)', 'String', 'dogbxhsspumpconnector', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (103, '9', 'DOGbxOilPumpConnector', 'DO-齿轮箱油泵接触器', 'char(255)', 'String', 'dogbxoilpumpconnector', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (104, '9', 'DORotorLubPumpConnector', 'DO-主轴润滑泵接触器', 'char(255)', 'String', 'dorotorlubpumpconnector', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 21, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (105, '9', 'DOGbxFanConnector', 'DO-齿轮箱风扇接触器', 'char(255)', 'String', 'dogbxfanconnector', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 22, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (106, '9', 'DOGbxHeaterConnector', 'DO-齿轮箱加热器接触器', 'char(255)', 'String', 'dogbxheaterconnector', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 23, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (107, '10', 'ID', 'ID', 'int(32)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (108, '10', 'TurbineID', '机组ID', 'int(16)', 'Long', 'turbineid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (109, '10', 'TimeStamp', '时间', 'datetime', 'Date', 'timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (110, '10', 'GenCtrlMode', '发电机控制模式', 'int(16)', 'Long', 'genctrlmode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (111, '10', 'GenState', '发电机状态反馈', 'int(16)', 'Long', 'genstate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (112, '10', 'StatorWind1Temp', 'TEMP-发电机定子绕组1', 'float(255,5)', 'Double', 'statorwind1temp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (113, '10', 'StatorWind2Temp', 'TEMP-发电机定子绕组2', 'float(255,5)', 'Double', 'statorwind2temp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (114, '10', 'StatorWind3Temp', 'TEMP-发电机定子绕组3', 'float(255,5)', 'Double', 'statorwind3temp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (115, '10', 'GenDEGearTemp', 'TEMP-发电机前轴承', 'float(255,5)', 'Double', 'gendegeartemp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (116, '10', 'GenNDEGearTemp', 'TEMP-发电机后轴承', 'float(255,5)', 'Double', 'genndegeartemp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (117, '10', 'DIStatorWindResiter', 'DI-发电机定子绕组热敏电阻', 'char(255)', 'String', 'distatorwindresiter', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (118, '10', 'DIBrushWearing', 'DI-发电机碳刷磨损', 'char(255)', 'String', 'dibrushwearing', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (119, '10', 'DIprotection', 'DI-发电机防雷保护', 'char(255)', 'String', 'diprotection', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (120, '10', 'DIGenFan1CircultBreaker', 'DI-发电机冷却风扇断路器', 'char(255)', 'String', 'digenfan1circultbreaker', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (121, '10', 'DIGenFan2CircultBreaker', 'DI-发电机冷却风扇2断路器', 'char(255)', 'String', 'digenfan2circultbreaker', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (122, '10', 'DIGenHeatingConnector', 'DO-发电机加热器接触器', 'char(255)', 'String', 'digenheatingconnector', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (123, '10', 'DIGenFan1Connector', 'DO-发电机风扇1接触器', 'char(255)', 'String', 'digenfan1connector', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (124, '10', 'DIGenFan2Connector', 'DO-发电机风扇2接触器', 'char(255)', 'String', 'digenfan2connector', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (125, '11', 'ID', 'ID', 'int(32)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (126, '11', 'TurbineID', '机组ID', 'int(16)', 'Long', 'turbineid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (127, '11', 'TimeStamp', '时间', 'datetime', 'Date', 'timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (128, '11', 'GridState', '电网状态机', 'int(16)', 'Long', 'gridstate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (129, '11', 'ActivePower', '电网有功功率', 'float(255,5)', 'Double', 'activepower', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (130, '11', 'ReactPower', '电网无功功率', 'float(255,5)', 'Double', 'reactpower', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (131, '11', 'Uuv', '电网线电压UV', 'float(255,5)', 'Double', 'uuv', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (132, '11', 'Uvw', '电网线电压VW', 'float(255,5)', 'Double', 'uvw', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (133, '11', 'Uwu', '电网线电压WU', 'float(255,5)', 'Double', 'uwu', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (134, '11', 'Iu', '电网线电流U', 'float(255,5)', 'Double', 'iu', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (135, '11', 'Iv', '电网线电流V', 'float(255,5)', 'Double', 'iv', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (136, '11', 'Iw', '电网线电流W', 'float(255,5)', 'Double', 'iw', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (137, '11', 'Freq', '电网频率', 'float(255,5)', 'Double', 'freq', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (138, '11', 'Uun', '电网相电压U', 'float(255,5)', 'Double', 'uun', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (139, '11', 'Uvn', '电网相电压V', 'float(255,5)', 'Double', 'uvn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (140, '11', 'Uwn', '电网相电压W', 'float(255,5)', 'Double', 'uwn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (141, '11', 'phiUV', '电网相位差UV', 'float(255,5)', 'Double', 'phiuv', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (142, '11', 'phiVW', '电网相位差VW', 'float(255,5)', 'Double', 'phivw', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (143, '11', 'phiWU', '电网相位差WU', 'float(255,5)', 'Double', 'phiwu', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (144, '11', 'Actpower30s', '电网有功30s平均值', 'float(255,5)', 'Double', 'actpower30s', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (145, '11', 'Reactpower30s', '电网无功30s平均值', 'float(255,5)', 'Double', 'reactpower30s', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 21, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (146, '11', 'Actpower10min', '电网有功10min平均值', 'float(255,5)', 'Double', 'actpower10min', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 22, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (147, '11', 'Reactpower10min', '电网无功10min平均值', 'float(255,5)', 'Double', 'reactpower10min', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 23, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (148, '11', 'UsMax', '相电压最大值', 'float(255,5)', 'Double', 'usmax', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 24, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (149, '11', 'UdMax', '线电压最大值', 'float(255,5)', 'Double', 'udmax', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 25, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (150, '11', 'Udavg', '平均线电压', 'float(255,5)', 'Double', 'udavg', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 26, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (151, '11', 'Iavg', '平均线电流', 'float(255,5)', 'Double', 'iavg', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 27, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (152, '12', 'ID', 'ID', 'int(32)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (153, '12', 'TurbineID', '机组ID', 'int(16)', 'Long', 'turbineid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (154, '12', 'TimeStamp', '时间', 'datetime', 'Date', 'timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (155, '12', 'HydCtrlMode', '液压控制模式', 'int(16)', 'Long', 'hydctrlmode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (156, '12', 'HydState', '液压状态反馈', 'int(16)', 'Long', 'hydstate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (157, '12', 'AIHydPressure', 'AI-液压系统压力', 'float(255,5)', 'Double', 'aihydpressure', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (158, '12', 'DIHydOilLevel', 'DI-液压站液位信号', 'char(1)', 'String', 'dihydoillevel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (159, '12', 'DIHydPumpCircultBeaker', 'DI-液压油泵保护', 'char(1)', 'String', 'dihydpumpcircultbeaker', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (160, '12', 'DIHydPumpConncetor', 'DO-液压泵接触器', 'char(1)', 'String', 'dihydpumpconncetor', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (161, '13', 'ID', NULL, 'int(32)', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (162, '13', 'TurbineID', '机组ID', 'int(16)', 'Long', 'turbineid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (163, '13', 'TimeStamp', '时间', 'datetime', 'Date', 'timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (164, '13', 'MainState', '风机主状态机', 'int(16)', 'Long', 'mainstate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (165, '13', 'SubState', '风机子状态机', 'int(16)', 'Long', 'substate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (166, '13', 'ActiveCode', '当前激活的状态码', 'int(16)', 'Long', 'activecode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (167, '13', 'Availbility', '风机可利用率状态', 'int(16)', 'Long', 'availbility', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (168, '13', 'Windspd', '风速', 'float', 'Long', 'windspd', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (169, '13', 'ActPower', '功率', 'float', 'Long', 'actpower', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (170, '13', 'GenSpd', '发电机转速', 'float', 'Long', 'genspd', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (171, '13', 'PitAve', '桨角', 'float', 'Long', 'pitave', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (172, '13', 'YawErr', '相对风向', 'float', 'Long', 'yawerr', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (173, '13', 'GeoWindvane', '地理风向', 'float', 'Long', 'geowindvane', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (174, '13', 'NacelleAngleByNorth', '机舱对北位置', 'float', 'Long', 'nacelleanglebynorth', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (175, '13', 'TwistAngle', '扭缆角度', 'float', 'Long', 'twistangle', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (176, '13', 'PowerLmt', '功率限值', 'float', 'Long', 'powerlmt', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (177, '13', 'PowerlimitedState', '功率限制状态', 'float', 'Long', 'powerlimitedstate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (178, '13', 'GenWindTempHighPowerLmt', '发电机绕组温度高功率限值', 'float', 'Long', 'genwindtemphighpowerlmt', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (179, '13', 'GbxTempHighPowerLmt', '齿轮箱温度高功率限值', 'float', 'Long', 'gbxtemphighpowerlmt', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (180, '13', 'ConvTempHighPowerLmt', '变流器风冷温度高功率限值', 'float', 'Long', 'convtemphighpowerlmt', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (181, '14', 'ID', 'ID', 'int(32)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (182, '14', 'TurbineID', '机组ID', 'int(16)', 'Long', 'turbineid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (183, '14', 'TimeStamp', '时间', 'datetime', 'Date', 'timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (184, '14', 'Windspd1s', '测量风速(1sec)', 'float(255,5)', 'Double', 'windspd1s', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (185, '14', 'Windspd3s', '测量风速(3sec)', 'float(255,5)', 'Double', 'windspd3s', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (186, '14', 'Windspd30s', '测量风速(30sec)', 'float(255,5)', 'Double', 'windspd30s', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (187, '14', 'Windspd2m', '测量风速(2min)', 'float(255,5)', 'Double', 'windspd2m', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (188, '14', 'Windspd10m', '测量风速(10min)', 'float(255,5)', 'Double', 'windspd10m', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (189, '14', 'Windspd1', '风速仪1风速', 'float(255,5)', 'Double', 'windspd1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (190, '14', 'Windspd2', '风速仪2风速', 'float(255,5)', 'Double', 'windspd2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (191, '14', 'WindVane1s', '相对风向(1sec)', 'float(255,5)', 'Double', 'windvane1s', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (192, '14', 'WindVane3s', '相对风向(短期)', 'float(255,5)', 'Double', 'windvane3s', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (193, '14', 'WindVane30s', '相对风向(中期)', 'float(255,5)', 'Double', 'windvane30s', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (194, '14', 'WindVane10m', '相对风向(长期)', 'float(255,5)', 'Double', 'windvane10m', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (195, '14', 'GeroWindVane1s', '地理风向(1sec)', 'float(255,5)', 'Double', 'gerowindvane1s', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (196, '14', 'GeroWindVane3s', '地理风向(短期)', 'float(255,5)', 'Double', 'gerowindvane3s', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (197, '14', 'GeroWindVane30s', '地理风向(中期)', 'float(255,5)', 'Double', 'gerowindvane30s', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (198, '14', 'GeroWindVane10m', '地理风向(长期)', 'float(255,5)', 'Double', 'gerowindvane10m', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (199, '14', 'WindVane1', '相对风向1', 'float(255,5)', 'Double', 'windvane1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (200, '14', 'WindVane2', '相对风向2', 'float(255,5)', 'Double', 'windvane2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (201, '14', 'AirTemp', 'TEMP-大气温度', 'float(255,5)', 'Double', 'airtemp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 21, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (202, '14', 'DOWindMeterHeaterOn', 'DO_风速风向仪加热接触器', 'char(255)', 'String', 'dowindmeterheateron', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 22, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (203, '15', 'ID', 'ID', 'int(32)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (204, '15', 'TurbineID', '机组ID', 'int(16)', 'Long', 'turbineid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (205, '15', 'TimeStamp', '时间', 'datetime', 'Date', 'timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (206, '15', 'PitCtrlMode', '变桨控制模式', 'int(16)', 'Long', 'pitctrlmode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (207, '15', 'PitStateFB', '变桨状态反馈', 'int(16)', 'Long', 'pitstatefb', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (208, '15', 'Pit1Setpoint', '桨叶1位置给定', 'float(255,5)', 'Double', 'pit1setpoint', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (209, '15', 'Pit2Setpoint', '桨叶2位置给定', 'float(255,5)', 'Double', 'pit2setpoint', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (210, '15', 'Pit3Setpoint', '桨叶3位置给定', 'float(255,5)', 'Double', 'pit3setpoint', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (211, '15', 'Pit1Actual', '桨叶1实际角度', 'float(255,5)', 'Double', 'pit1actual', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (212, '15', 'Pit2Actual', '桨叶2实际角度', 'float(255,5)', 'Double', 'pit2actual', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (213, '15', 'Pit3Actual', '桨叶3实际角度', 'float(255,5)', 'Double', 'pit3actual', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (214, '15', 'PitAve', '实际平均桨距角', 'float(255,5)', 'Double', 'pitave', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (215, '15', 'Pit1MotorCurrent', '桨叶1电机电流', 'float(255,5)', 'Double', 'pit1motorcurrent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (216, '15', 'Pit2MotorCurrent', '桨叶2电机电流', 'float(255,5)', 'Double', 'pit2motorcurrent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (217, '15', 'Pit3MotorCurrent', '桨叶3电机电流', 'float(255,5)', 'Double', 'pit3motorcurrent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (218, '15', 'Pit1MotorTemp', '桨叶1电机温度', 'float(255,5)', 'Double', 'pit1motortemp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (219, '15', 'Pit2MotorTemp', '桨叶2电机温度', 'float(255,5)', 'Double', 'pit2motortemp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (220, '15', 'Pit3MotorTemp', '桨叶3电机温度', 'float(255,5)', 'Double', 'pit3motortemp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (221, '15', 'Pit1EncoderA', '桨叶1角度A编码器值', 'float(255,5)', 'Double', 'pit1encodera', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (222, '15', 'Pit2EncoderA', '桨叶2角度A编码器值', 'float(255,5)', 'Double', 'pit2encodera', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (223, '15', 'Pit3EncoderA', '桨叶3角度A编码器值', 'float(255,5)', 'Double', 'pit3encodera', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 21, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (224, '15', 'Pit1EncoderB', '桨叶1角度B编码器值', 'float(255,5)', 'Double', 'pit1encoderb', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 22, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (225, '15', 'Pit2EncoderB', '桨叶2角度B编码器值', 'float(255,5)', 'Double', 'pit2encoderb', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 23, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (226, '15', 'Pit3EncoderB', '桨叶3角度B编码器值', 'float(255,5)', 'Double', 'pit3encoderb', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 24, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (227, '15', 'HubTemp', '轮毂温度', 'float(255,5)', 'Double', 'hubtemp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 25, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (228, '15', 'Pit1FollowErr', '桨叶1跟随误差', 'float(255,5)', 'Double', 'pit1followerr', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 26, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (229, '15', 'Pit2FollowErr', '桨叶2跟随误差', 'float(255,5)', 'Double', 'pit2followerr', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 27, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (230, '15', 'Pit3FollowErr', '桨叶3跟随误差', 'float(255,5)', 'Double', 'pit3followerr', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 28, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (231, '15', 'Pit1and23Integral', '桨叶1与2,3偏差积分', 'float(255,5)', 'Double', 'pit1and23integral', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 29, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (232, '15', 'Pit2and13Integral', '桨叶2与1,3偏差积分', 'float(255,5)', 'Double', 'pit2and13integral', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 30, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (233, '15', 'Pit3and12Integral', '桨叶3与1,2偏差积分', 'float(255,5)', 'Double', 'pit3and12integral', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 31, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (234, '15', 'PitBatTestDuration', '变桨电池测试周期计时', 'int(32)', 'Long', 'pitbattestduration', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 32, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (235, '15', 'PitBatTestFlag', '变桨电池测试标志位', 'int(16)', 'Long', 'pitbattestflag', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 33, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (236, '15', 'PitBatTestCount', '变桨电池测试计数器', 'int(16)', 'Long', 'pitbattestcount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 34, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (237, '15', 'DIPitBatVolOk', 'DI-变桨电池电压正常', 'char(255)', 'String', 'dipitbatvolok', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 35, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (238, '15', 'DIPitFault', 'DI-变桨故障', 'char(255)', 'String', 'dipitfault', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 36, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (239, '15', 'DIAllBladesAtFeather', 'DI-3个桨叶在顺桨位置', 'char(255)', 'String', 'diallbladesatfeather', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 37, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (240, '15', 'DOLmtSwitchBypass', 'DO-限位开关旁路', 'char(255)', 'String', 'dolmtswitchbypass', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 38, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (241, '15', 'DOEFC', 'DO-紧急顺桨指令EFC', 'char(255)', 'String', 'doefc', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 39, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (242, '16', 'ID', 'ID', 'int(32)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (243, '16', 'TurbineID', '机组号', 'int(16)', 'Long', 'turbineid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (244, '16', 'TimeStamp', '时间', 'datetime', 'Date', 'timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (245, '16', 'DIRotorRpmSeneor1', 'DI-风轮转速接近开关1', 'char(255)', 'String', 'dirotorrpmseneor1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (246, '16', 'DIRotorRpmSeneor2', 'DI-风轮转速接近开关2', 'char(255)', 'String', 'dirotorrpmseneor2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (247, '16', 'RotorRpm', '主轴转速', 'float(255,5)', 'Double', 'rotorrpm', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (248, '16', 'GbxLssRpm', '齿轮箱低速轴转速', 'float(255,5)', 'Double', 'gbxlssrpm', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (249, '16', 'GbxHssRpm', '齿轮箱高速轴转速', 'float(255,5)', 'Double', 'gbxhssrpm', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (250, '16', 'GenRpm', '发电机转速', 'float(255,5)', 'Double', 'genrpm', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (251, '17', 'ID', 'ID', 'int(32)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (252, '17', 'TurbineID', '机组ID', 'int(16)', 'Long', 'turbineid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (253, '17', 'TimeStamp', '时间', 'datetime', 'Date', 'timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (254, '17', 'SafetyChainState', '安全链状态', 'int(16)', 'Long', 'safetychainstate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (255, '17', 'DI24VInputOk', 'DI-24V电源输入正常', 'char(1)', 'String', 'di24vinputok', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (256, '17', 'DI24VOutputOk', 'DI-24V电源输出正常', 'char(255)', 'String', 'di24voutputok', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (257, '17', 'DINacCabEmergBtn', 'DI-机舱柜紧急停机按钮', 'char(1)', 'String', 'dinaccabemergbtn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (258, '17', 'DITowCabEmergBtn', 'DI-塔底柜紧急停机按钮', 'char(1)', 'String', 'ditowcabemergbtn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (259, '17', 'DINacEmergBtn', 'DI-机舱紧急停机按钮', 'char(1)', 'String', 'dinacemergbtn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (260, '17', 'DIPitchServiceSwitch', 'DI-变桨手动维护开关', 'char(255)', 'String', 'dipitchserviceswitch', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (261, '17', 'DICWTwistLmt', 'DI-CW扭缆超限', 'char(255)', 'String', 'dicwtwistlmt', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (262, '17', 'DICCWTwistLmt', 'DI-CCW扭缆超限', 'char(255)', 'String', 'diccwtwistlmt', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (263, '17', 'DIVibSwitch', 'DI-振动开关', 'char(255)', 'String', 'divibswitch', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (264, '17', 'DIMCCBFeedback', 'DI-主断路器MCB反馈', 'char(255)', 'String', 'dimccbfeedback', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (265, '17', 'DIRotorOverSpd', 'DI-叶轮超速', 'char(255)', 'String', 'dirotoroverspd', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (266, '17', 'DIGbxHssOverSpd', 'DI-齿轮箱高速轴超速', 'char(1)', 'String', 'digbxhssoverspd', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (267, '17', 'DISafetyChainFB', 'DI-安全链回路反馈', 'char(255)', 'String', 'disafetychainfb', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (268, '17', 'DOMCResetSafetyChain', 'DO-主控制器复位安全链', 'char(255)', 'String', 'domcresetsafetychain', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (269, '17', 'DOMCOpenSafetyChain', 'DO-主控制器断开安全链', 'char(255)', 'String', 'domcopensafetychain', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (270, '18', 'ID', 'ID', 'int(32)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (271, '18', 'TurbineID', '机组ID', 'int(16)', 'Long', 'turbineid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (272, '18', 'TimeStamp', '时间', 'datetime', 'Date', 'timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (273, '18', 'ActiveCode1', '激活的状态码1', 'int(16)', 'Long', 'activecode1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (274, '18', 'ActiveCode2', '激活的状态码2', 'int(16)', 'Long', 'activecode2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (275, '18', 'ActiveCode3', '激活的状态码3', 'int(16)', 'Long', 'activecode3', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (276, '18', 'ActiveCode4', '激活的状态码4', 'int(16)', 'Long', 'activecode4', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (277, '18', 'ActiveCode5', '激活的状态码5', 'int(16)', 'Long', 'activecode5', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (278, '18', 'ActiveCode6', '激活的状态码6', 'int(16)', 'Long', 'activecode6', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (279, '18', 'ActiveCode7', '激活的状态码7', 'int(16)', 'Long', 'activecode7', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (280, '18', 'ActiveCode8', '激活的状态码8', 'int(16)', 'Long', 'activecode8', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (281, '18', 'ActiveCode9', '激活的状态码9', 'int(16)', 'Long', 'activecode9', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (282, '18', 'ActiveCode10', '激活的状态码10', 'int(16)', 'Long', 'activecode10', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (283, '18', 'ActiveCode11', '激活的状态码11', 'int(16)', 'Long', 'activecode11', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (284, '18', 'ActiveCode12', '激活的状态码12', 'int(16)', 'Long', 'activecode12', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (285, '18', 'ActiveCode13', '激活的状态码13', 'int(16)', 'Long', 'activecode13', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (286, '18', 'ActiveCode14', '激活的状态码14', 'int(16)', 'Long', 'activecode14', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (287, '18', 'ActiveCode15', '激活的状态码15', 'int(16)', 'Long', 'activecode15', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (288, '18', 'ActiveCode16', '激活的状态码16', 'int(16)', 'Long', 'activecode16', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (289, '18', 'ActiveCode17', '激活的状态码17', 'int(16)', 'Long', 'activecode17', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (290, '18', 'ActiveCode18', '激活的状态码18', 'int(16)', 'Long', 'activecode18', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 21, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (291, '18', 'ActiveCode19', '激活的状态码19', 'int(16)', 'Long', 'activecode19', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 22, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (292, '18', 'ActiveCode20', '激活的状态码20', 'int(16)', 'Long', 'activecode20', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 23, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (293, '18', 'ActiveCode1TimeStamp', '激活的状态码1激活时间', 'datetime', 'Date', 'activecode1timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 24, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (294, '18', 'ActiveCode2TimeStamp', '激活的状态码2激活时间', 'datetime', 'Date', 'activecode2timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 25, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (295, '18', 'ActiveCode3TimeStamp', '激活的状态码3激活时间', 'datetime', 'Date', 'activecode3timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 26, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (296, '18', 'ActiveCode4TimeStamp', '激活的状态码4激活时间', 'datetime', 'Date', 'activecode4timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 27, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (297, '18', 'ActiveCode5TimeStamp', '激活的状态码5激活时间', 'datetime', 'Date', 'activecode5timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 28, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (298, '18', 'ActiveCode6TimeStamp', '激活的状态码6激活时间', 'datetime', 'Date', 'activecode6timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 29, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (299, '18', 'ActiveCode7TimeStamp', '激活的状态码7激活时间', 'datetime', 'Date', 'activecode7timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 30, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (300, '18', 'ActiveCode8TimeStamp', '激活的状态码8激活时间', 'datetime', 'Date', 'activecode8timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 31, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (301, '18', 'ActiveCode9TimeStamp', '激活的状态码9激活时间', 'datetime', 'Date', 'activecode9timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 32, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (302, '18', 'ActiveCode10TimeStamp', '激活的状态码10激活时间', 'datetime', 'Date', 'activecode10timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 33, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (303, '18', 'ActiveCode11TimeStamp', '激活的状态码11激活时间', 'datetime', 'Date', 'activecode11timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 34, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (304, '18', 'ActiveCode12TimeStamp', '激活的状态码12激活时间', 'datetime', 'Date', 'activecode12timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 35, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (305, '18', 'ActiveCode13TimeStamp', '激活的状态码13激活时间', 'datetime', 'Date', 'activecode13timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 36, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (306, '18', 'ActiveCode14TimeStamp', '激活的状态码14激活时间', 'datetime', 'Date', 'activecode14timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 37, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (307, '18', 'ActiveCode15TimeStamp', '激活的状态码15激活时间', 'datetime', 'Date', 'activecode15timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 38, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (308, '18', 'ActiveCode16TimeStamp', '激活的状态码16激活时间', 'datetime', 'Date', 'activecode16timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 39, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (309, '18', 'ActiveCode17TimeStamp', '激活的状态码17激活时间', 'datetime', 'Date', 'activecode17timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 40, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (310, '18', 'ActiveCode18TimeStamp', '激活的状态码18激活时间', 'datetime', 'Date', 'activecode18timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 41, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (311, '18', 'ActiveCode19TimeStamp', '激活的状态码19激活时间', 'datetime', 'Date', 'activecode19timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 42, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (312, '18', 'ActiveCode20TimeStamp', '激活的状态码20激活时间', 'datetime', 'Date', 'activecode20timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 43, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (313, '19', 'ID', 'ID', 'int(32)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (314, '19', 'TurbineID', '机组ID', 'int(16)', 'Long', 'turbineid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (315, '19', 'TimeStamp', '时间', 'datetime', 'Date', 'timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (316, '19', 'TotalActPowerProduction', '历史总有功发电量', 'int(32)', 'Long', 'totalactpowerproduction', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (317, '19', 'TotalActPowerConsumption', '历史总有功耗电量', 'int(32)', 'Long', 'totalactpowerconsumption', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (318, '19', 'TotalReactPowerProduction', '历史总无功发电量', 'int(32)', 'Long', 'totalreactpowerproduction', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (319, '19', 'TotalReactPowerConsumption', '历史总无功耗电量', 'int(32)', 'Long', 'totalreactpowerconsumption', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (320, '19', 'TotalProductionTime', '发电时间', 'int(32)', 'Long', 'totalproductiontime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (321, '19', 'TotalRuningTime', '运行时间', 'int(32)', 'Long', 'totalruningtime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (322, '19', 'TotalMannulStopTime', '人工停机时间', 'int(32)', 'Long', 'totalmannulstoptime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (323, '19', 'TotalWetherStopTime', '天气原因停机时间', 'int(32)', 'Long', 'totalwetherstoptime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (324, '19', 'TotalGridFaultStopTime', '电网故障停机时间', 'int(32)', 'Long', 'totalgridfaultstoptime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (325, '19', 'TotalTurbineFaultStopTime', '风机故障停机时间', 'int(32)', 'Long', 'totalturbinefaultstoptime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (326, '19', 'TotalTime', '总统计时间', 'int(32)', 'Long', 'totaltime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (327, '19', 'TotalAvailability', '风机总可利用率', 'int(32)', 'Long', 'totalavailability', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (328, '19', 'StatResetTimeStamp', '复位总数据时间戳', 'datetime', 'Date', 'statresettimestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 16, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (329, '19', 'YearlyActiveProduction', '风机当年有功发电量', 'int(32)', 'Long', 'yearlyactiveproduction', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (330, '19', 'YearlyActiveConsumption', '风机当年有功耗电量', 'int(32)', 'Long', 'yearlyactiveconsumption', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (331, '19', 'MonthActiveProduction', '风机当月有功发电量', 'int(32)', 'Long', 'monthactiveproduction', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (332, '19', 'MonthActiveConsumption', '风机当月有功耗电量', 'int(32)', 'Long', 'monthactiveconsumption', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (333, '19', 'DayActiveProduction', '风机当日有功发电量', 'int(32)', 'Long', 'dayactiveproduction', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 21, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (334, '19', 'DayActiveConsumption', '风机当日有功耗电量', 'int(32)', 'Long', 'dayactiveconsumption', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 22, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (335, '19', 'DayReactiveProduction', '风机当日无功发电量', 'int(32)', 'Long', 'dayreactiveproduction', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 23, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (336, '19', 'DayReactiveConsumption', '风机当日无功耗电量', 'int(32)', 'Long', 'dayreactiveconsumption', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 24, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (337, '19', 'DayProductionTime', '当日发电时间', 'int(32)', 'Long', 'dayproductiontime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 25, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (338, '19', 'DayRuningTime', '当日运行时间', 'int(32)', 'Long', 'dayruningtime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 26, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (339, '19', 'DayMannulStopTime', '当日人工停机时间', 'int(32)', 'Long', 'daymannulstoptime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 27, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (340, '19', 'DayWetherStopTime', '当日天气原因停机时间', 'int(32)', 'Long', 'daywetherstoptime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 28, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (341, '19', 'DayGridFaultStopTime', '当日电网故障停机时间', 'int(32)', 'Long', 'daygridfaultstoptime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 29, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (342, '19', 'DayTurbineFaultStopTime', '当日风机故障停机时间', 'int(32)', 'Long', 'dayturbinefaultstoptime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 30, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (343, '19', 'DayStatTime', '当日统计时间', 'int(32)', 'Long', 'daystattime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 31, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (344, '19', 'DayAvailability', '当日可利用率', 'int(32)', 'Long', 'dayavailability', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 32, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (345, '19', 'CWYawCount', 'CW偏航次数', 'int(32)', 'Long', 'cwyawcount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 33, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (346, '19', 'CWYawTime', 'CW偏航时间', 'int(32)', 'Long', 'cwyawtime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 34, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (347, '19', 'CCWYawCount', 'CCW偏航次数', 'int(32)', 'Long', 'ccwyawcount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 35, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (348, '19', 'CCWYawTime', 'CCW偏航时间', 'int(32)', 'Long', 'ccwyawtime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 36, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (349, '19', 'BrakeCount', '刹车抱闸次数', 'int(32)', 'Long', 'brakecount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 37, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (350, '19', 'BrakeTime', '刹车抱闸时间', 'int(32)', 'Long', 'braketime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 38, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (351, '19', 'GeneratorHeaterOnCount', '发电机加热器开启次数', 'int(32)', 'Long', 'generatorheateroncount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 39, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (352, '19', 'GeneratorHeaterOnTime', '发电机加热器开启时间', 'int(32)', 'Long', 'generatorheaterontime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 40, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (353, '19', 'GeneratorFan1OnCount', '发电机风扇1开启次数', 'int(32)', 'Long', 'generatorfan1oncount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 41, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (354, '19', 'GeneratorFan1OnTime', '发电机风扇1开启时间', 'int(32)', 'Long', 'generatorfan1ontime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 42, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (355, '19', 'GeneratorFan2OnCount', '发电机风扇2开启次数', 'int(32)', 'Long', 'generatorfan2oncount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 43, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (356, '19', 'GeneratorFan2OnTime', '发电机风扇2开启时间', 'int(32)', 'Long', 'generatorfan2ontime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 44, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (357, '19', 'GbxHeaterOnCount', '齿轮箱加热器开启次数', 'int(32)', 'Long', 'gbxheateroncount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 45, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (358, '19', 'GbxHeaterOnTime', '齿轮箱加热器开启时间', 'int(32)', 'Long', 'gbxheaterontime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 46, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (359, '19', 'GbxFanOnCount', '齿轮箱风扇开启次数', 'int(32)', 'Long', 'gbxfanoncount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 47, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (360, '19', 'GbxFanOnTime', '齿轮箱风扇开启时间', 'int(32)', 'Long', 'gbxfanontime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 48, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (361, '19', 'GbxPumpOnCount', '齿轮箱油泵开启次数', 'int(32)', 'Long', 'gbxpumponcount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 49, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (362, '19', 'GbxPumpOnTime', '齿轮箱油泵开启时间', 'int(32)', 'Long', 'gbxpumpontime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 50, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (363, '19', 'RotorLubOnCount', '主轴润滑泵开启次数', 'int(32)', 'Long', 'rotorluboncount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 51, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (364, '19', 'RotorLubOnTime', '主轴润滑泵开启时间', 'int(32)', 'Long', 'rotorlubontime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 52, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (365, '19', 'HydPumpOnCount', '液压站油泵开启次数', 'int(32)', 'Long', 'hydpumponcount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 53, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (366, '19', 'HydPumpOnTime', '液压站油泵开启时间', 'int(32)', 'Long', 'hydpumpontime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 54, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (367, '19', 'WindMeterHeaterOnCount', '测风仪加热器开启次数', 'int(32)', 'Long', 'windmeterheateroncount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 55, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (368, '19', 'WindMeterHeaterOnTime', '测风仪加热器开启时间', 'int(32)', 'Long', 'windmeterheaterontime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 56, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (369, '20', 'ID', 'ID', 'int(32)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (370, '20', 'TurbineID', '机组ID', 'int(16)', 'Long', 'turbineid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (371, '20', 'TimeStamp', '时间', 'datetime', 'Date', 'timestamp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (372, '20', 'YawCtrlMode', '偏航控制模式', 'int(16)', 'Long', 'yawctrlmode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (373, '20', 'YawState', '偏航状态反馈', 'int(16)', 'Long', 'yawstate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (374, '20', 'YawDriveCtrlMode', '偏航驱动控制模式', 'int(16)', 'Long', 'yawdrivectrlmode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (375, '20', 'YawDriveState', '偏航驱动状态', 'int(16)', 'Long', 'yawdrivestate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (376, '20', 'DIYawPauseA', 'DI-偏航脉冲A', 'char(255)', 'String', 'diyawpausea', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (377, '20', 'DIYawPauseB', 'DI-偏航脉冲B', 'char(255)', 'String', 'diyawpauseb', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (378, '20', 'DIYawMotor13Breaker', 'DI-偏航电机13断路器', 'char(255)', 'String', 'diyawmotor13breaker', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (379, '20', 'DIYawMotor24Breaker', 'DI-偏航电机24断路器', 'char(255)', 'String', 'diyawmotor24breaker', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (380, '20', 'DIYawElectricBrakeBreaker', 'DI-偏航电气制动断路器', 'char(255)', 'String', 'diyawelectricbrakebreaker', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (381, '20', 'DOYawMotor13CWConnector', 'DO-偏航电机13_CW接触器', 'char(255)', 'String', 'doyawmotor13cwconnector', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (382, '20', 'DOYawMotor13CCWConnector', 'DO-偏航电机13_CCW接触器', 'char(255)', 'String', 'doyawmotor13ccwconnector', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (383, '20', 'DOYawMotor24CWConnector', 'DO-偏航电机24_CW接触器', 'char(255)', 'String', 'doyawmotor24cwconnector', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (384, '20', 'DOYawMotor24CCWConnector', 'DO-偏航电机24_CCW接触器', 'char(255)', 'String', 'doyawmotor24ccwconnector', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (385, '20', 'D0YawElectricBrake', 'DO-偏航电气刹车', 'char(255)', 'String', 'd0yawelectricbrake', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (386, '20', 'D0YawHydraulicBrake', 'DO-偏航液压刹车阀', 'char(255)', 'String', 'd0yawhydraulicbrake', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (387, '20', 'YawTwistAngle', '偏航扭缆角度', 'float(255,5)', 'Double', 'yawtwistangle', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (388, '20', 'YawErrShort', '相对风向角度(短期)', 'float(255,5)', 'Double', 'yawerrshort', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (389, '20', 'YawErrMedium', '相对风向角度(中期)', 'float(255,5)', 'Double', 'yawerrmedium', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 21, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (390, '20', 'YawErrLong', '相对风向角度(长期)', 'float(255,5)', 'Double', 'yawerrlong', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 22, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (391, '20', 'NacellePositionByNorth', '机舱对北位置', 'float(255,5)', 'Double', 'nacellepositionbynorth', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 23, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (392, '20', 'NorthIsCalibrated', '对北已标定', 'int(16)', 'Long', 'northiscalibrated', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 24, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (393, '20', 'ErrByNorth', '对北偏差', 'float(255,5)', 'Double', 'errbynorth', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 25, 'admin', '2020-03-24 09:04:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (394, '20', 'TwistIsCalibrated', '偏航扭缆已校准', 'int(16)', 'Long', 'twistiscalibrated', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 26, 'admin', '2020-03-24 09:04:51', '', NULL);

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `blob_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'USER-20190419UM1585012970306', 1585124759770, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `int_prop_1` int(11) NULL DEFAULT NULL,
  `int_prop_2` int(11) NULL DEFAULT NULL,
  `long_prop_1` bigint(20) NULL DEFAULT NULL,
  `long_prop_2` bigint(20) NULL DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `next_fire_time` bigint(13) NULL DEFAULT NULL,
  `prev_fire_time` bigint(13) NULL DEFAULT NULL,
  `priority` int(11) NULL DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `misfire_instr` smallint(2) NULL DEFAULT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1585012970000, -1, 5, 'PAUSED', 'CRON', 1585012970000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1585012980000, -1, 5, 'PAUSED', 'CRON', 1585012971000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1585012980000, -1, 5, 'PAUSED', 'CRON', 1585012971000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-19 11:25:28');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-19 11:25:06');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-19 11:25:28');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (1, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-19 11:33:54');
INSERT INTO `sys_logininfor` VALUES (2, 'scada', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-19 11:34:10');
INSERT INTO `sys_logininfor` VALUES (3, 'scada', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-19 11:34:57');
INSERT INTO `sys_logininfor` VALUES (4, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-19 11:35:08');
INSERT INTO `sys_logininfor` VALUES (5, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-19 11:48:34');
INSERT INTO `sys_logininfor` VALUES (6, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-19 11:48:44');
INSERT INTO `sys_logininfor` VALUES (7, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-19 11:50:23');
INSERT INTO `sys_logininfor` VALUES (8, 'scada', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-19 11:50:41');
INSERT INTO `sys_logininfor` VALUES (9, 'scada', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-19 11:51:40');
INSERT INTO `sys_logininfor` VALUES (10, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-03-19 11:51:46');
INSERT INTO `sys_logininfor` VALUES (11, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-19 11:51:57');
INSERT INTO `sys_logininfor` VALUES (12, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-19 11:52:33');
INSERT INTO `sys_logininfor` VALUES (13, 'scada', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-19 11:52:50');
INSERT INTO `sys_logininfor` VALUES (14, 'scada', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-19 12:00:13');
INSERT INTO `sys_logininfor` VALUES (15, 'scada', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-19 12:03:26');
INSERT INTO `sys_logininfor` VALUES (16, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-19 14:07:17');
INSERT INTO `sys_logininfor` VALUES (17, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-19 14:08:54');
INSERT INTO `sys_logininfor` VALUES (18, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-19 14:09:05');
INSERT INTO `sys_logininfor` VALUES (19, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-19 14:21:12');
INSERT INTO `sys_logininfor` VALUES (20, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-19 14:21:20');
INSERT INTO `sys_logininfor` VALUES (21, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-19 14:23:21');
INSERT INTO `sys_logininfor` VALUES (22, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-19 14:23:33');
INSERT INTO `sys_logininfor` VALUES (23, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-19 14:25:59');
INSERT INTO `sys_logininfor` VALUES (24, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-19 14:29:07');
INSERT INTO `sys_logininfor` VALUES (25, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-19 14:29:16');
INSERT INTO `sys_logininfor` VALUES (26, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-19 14:35:17');
INSERT INTO `sys_logininfor` VALUES (27, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-19 14:35:25');
INSERT INTO `sys_logininfor` VALUES (28, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-19 14:38:43');
INSERT INTO `sys_logininfor` VALUES (29, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2020-03-19 14:38:50');
INSERT INTO `sys_logininfor` VALUES (30, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-19 14:38:56');
INSERT INTO `sys_logininfor` VALUES (31, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-19 14:48:47');
INSERT INTO `sys_logininfor` VALUES (32, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-19 14:48:56');
INSERT INTO `sys_logininfor` VALUES (33, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2020-03-19 14:54:00');
INSERT INTO `sys_logininfor` VALUES (34, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-19 14:54:10');
INSERT INTO `sys_logininfor` VALUES (35, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-19 14:55:50');
INSERT INTO `sys_logininfor` VALUES (36, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-19 14:59:42');
INSERT INTO `sys_logininfor` VALUES (37, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-24 09:03:01');
INSERT INTO `sys_logininfor` VALUES (38, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-24 09:23:16');
INSERT INTO `sys_logininfor` VALUES (39, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-24 09:50:51');
INSERT INTO `sys_logininfor` VALUES (40, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-24 09:51:01');
INSERT INTO `sys_logininfor` VALUES (41, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-03-24 10:05:42');
INSERT INTO `sys_logininfor` VALUES (42, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-03-24 10:06:33');
INSERT INTO `sys_logininfor` VALUES (43, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-24 10:06:38');
INSERT INTO `sys_logininfor` VALUES (44, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-03-24 15:42:52');
INSERT INTO `sys_logininfor` VALUES (45, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-03-24 15:42:57');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2125 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 4, '#', 'menuItem', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-19 11:00:08', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 5, '#', 'menuItem', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-19 11:12:03', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 1000, '#', 'menuItem', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'admin', '2020-03-19 11:50:17', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, '/system/dept', '', 'C', '0', 'system:dept:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, '/system/post', '', 'C', '0', 'system:post:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', '', 'C', '0', 'system:config:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', '', 'C', '0', 'system:notice:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', '', 'M', '0', '', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', 'monitor:job:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 3, '/monitor/server', '', 'C', '0', 'monitor:server:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '表单构建', 3, 1, '/tool/build', '', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES (114, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES (115, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', 'tool:swagger:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1046, '账户解锁', 501, 4, '#', '', 'F', '0', 'monitor:logininfor:unlock', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1047, '在线查询', 109, 1, '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1048, '批量强退', 109, 2, '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1049, '单条强退', 109, 3, '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1050, '任务查询', 110, 1, '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1051, '任务新增', 110, 2, '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1052, '任务修改', 110, 3, '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1053, '任务删除', 110, 4, '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1054, '状态修改', 110, 5, '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1055, '任务详细', 110, 6, '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1056, '任务导出', 110, 7, '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1057, '生成查询', 114, 1, '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1058, '生成修改', 114, 2, '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1059, '生成删除', 114, 3, '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1060, '预览代码', 114, 4, '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1061, '生成代码', 114, 5, '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (2018, '机组信息管理', 2030, 1, '/system/turbineinfo', 'menuItem', 'C', '0', 'system:turbineinfo:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-03-19 11:08:34', '机组信息菜单');
INSERT INTO `sys_menu` VALUES (2019, '机组信息查询', 2018, 1, '#', '', 'F', '0', 'system:turbineinfo:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2020, '机组信息新增', 2018, 2, '#', '', 'F', '0', 'system:turbineinfo:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2021, '机组信息修改', 2018, 3, '#', '', 'F', '0', 'system:turbineinfo:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2022, '机组信息删除', 2018, 4, '#', '', 'F', '0', 'system:turbineinfo:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2023, '机组信息导出', 2018, 5, '#', '', 'F', '0', 'system:turbineinfo:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2024, '状态码管理', 2030, 1, '/system/statuscode', 'menuItem', 'C', '0', 'system:statuscode:view', '#', 'admin', '2018-03-01 00:00:00', 'admin', '2020-03-19 11:08:49', '状态码菜单');
INSERT INTO `sys_menu` VALUES (2025, '状态码查询', 2024, 1, '#', '', 'F', '0', 'system:statuscode:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2026, '状态码新增', 2024, 2, '#', '', 'F', '0', 'system:statuscode:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2027, '状态码修改', 2024, 3, '#', '', 'F', '0', 'system:statuscode:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2028, '状态码删除', 2024, 4, '#', '', 'F', '0', 'system:statuscode:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2029, '状态码导出', 2024, 5, '#', '', 'F', '0', 'system:statuscode:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2030, '业务管理', 0, 1, '#', 'menuItem', 'M', '0', '', 'fa fa-university', 'admin', '2020-03-19 10:59:42', 'admin', '2020-03-19 11:00:49', '');
INSERT INTO `sys_menu` VALUES (2033, '实时状态', 0, 2, '#', 'menuItem', 'M', '0', NULL, 'fa fa-clock-o', 'admin', '2020-03-19 11:11:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2034, '统计时序', 2033, 1, '/demo/report/echarts', 'menuItem', 'C', '1', '', 'fa fa-line-chart', 'admin', '2020-03-19 14:08:45', 'admin', '2020-03-24 09:25:45', '');
INSERT INTO `sys_menu` VALUES (2035, '振动', 2033, 1, '/system/accel', '', 'C', '0', 'system:accel:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '振动菜单');
INSERT INTO `sys_menu` VALUES (2036, '振动查询', 2035, 1, '#', '', 'F', '0', 'system:accel:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2037, '振动新增', 2035, 2, '#', '', 'F', '0', 'system:accel:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2038, '振动修改', 2035, 3, '#', '', 'F', '0', 'system:accel:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2039, '振动删除', 2035, 4, '#', '', 'F', '0', 'system:accel:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2040, '振动导出', 2035, 5, '#', '', 'F', '0', 'system:accel:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2041, '机械刹车', 2033, 1, '/system/brake', '', 'C', '0', 'system:brake:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '机械刹车菜单');
INSERT INTO `sys_menu` VALUES (2042, '机械刹车查询', 2041, 1, '#', '', 'F', '0', 'system:brake:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2043, '机械刹车新增', 2041, 2, '#', '', 'F', '0', 'system:brake:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2044, '机械刹车修改', 2041, 3, '#', '', 'F', '0', 'system:brake:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2045, '机械刹车删除', 2041, 4, '#', '', 'F', '0', 'system:brake:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2046, '机械刹车导出', 2041, 5, '#', '', 'F', '0', 'system:brake:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2047, '变流器', 2033, 1, '/system/conveter', '', 'C', '0', 'system:conveter:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '变流器菜单');
INSERT INTO `sys_menu` VALUES (2048, '变流器查询', 2047, 1, '#', '', 'F', '0', 'system:conveter:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2049, '变流器新增', 2047, 2, '#', '', 'F', '0', 'system:conveter:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2050, '变流器修改', 2047, 3, '#', '', 'F', '0', 'system:conveter:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2051, '变流器删除', 2047, 4, '#', '', 'F', '0', 'system:conveter:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2052, '变流器导出', 2047, 5, '#', '', 'F', '0', 'system:conveter:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2053, '传动链', 2033, 1, '/system/drivechain', '', 'C', '0', 'system:drivechain:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '传动链菜单');
INSERT INTO `sys_menu` VALUES (2054, '传动链查询', 2053, 1, '#', '', 'F', '0', 'system:drivechain:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2055, '传动链新增', 2053, 2, '#', '', 'F', '0', 'system:drivechain:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2056, '传动链修改', 2053, 3, '#', '', 'F', '0', 'system:drivechain:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2057, '传动链删除', 2053, 4, '#', '', 'F', '0', 'system:drivechain:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2058, '传动链导出', 2053, 5, '#', '', 'F', '0', 'system:drivechain:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2059, '发电机', 2033, 1, '/system/electricgenerator', '', 'C', '0', 'system:electricgenerator:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '发电机菜单');
INSERT INTO `sys_menu` VALUES (2060, '发电机查询', 2059, 1, '#', '', 'F', '0', 'system:electricgenerator:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2061, '发电机新增', 2059, 2, '#', '', 'F', '0', 'system:electricgenerator:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2062, '发电机修改', 2059, 3, '#', '', 'F', '0', 'system:electricgenerator:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2063, '发电机删除', 2059, 4, '#', '', 'F', '0', 'system:electricgenerator:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2064, '发电机导出', 2059, 5, '#', '', 'F', '0', 'system:electricgenerator:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2065, '电网', 2033, 1, '/system/grid', '', 'C', '0', 'system:grid:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '电网菜单');
INSERT INTO `sys_menu` VALUES (2066, '电网查询', 2065, 1, '#', '', 'F', '0', 'system:grid:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2067, '电网新增', 2065, 2, '#', '', 'F', '0', 'system:grid:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2068, '电网修改', 2065, 3, '#', '', 'F', '0', 'system:grid:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2069, '电网删除', 2065, 4, '#', '', 'F', '0', 'system:grid:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2070, '电网导出', 2065, 5, '#', '', 'F', '0', 'system:grid:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2071, '液压系统', 2033, 1, '/system/hydraulic', '', 'C', '0', 'system:hydraulic:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '液压系统菜单');
INSERT INTO `sys_menu` VALUES (2072, '液压系统查询', 2071, 1, '#', '', 'F', '0', 'system:hydraulic:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2073, '液压系统新增', 2071, 2, '#', '', 'F', '0', 'system:hydraulic:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2074, '液压系统修改', 2071, 3, '#', '', 'F', '0', 'system:hydraulic:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2075, '液压系统删除', 2071, 4, '#', '', 'F', '0', 'system:hydraulic:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2076, '液压系统导出', 2071, 5, '#', '', 'F', '0', 'system:hydraulic:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2077, '风机主状态', 2033, 1, '/system/mainstate', '', 'C', '0', 'system:mainstate:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '风机主状态菜单');
INSERT INTO `sys_menu` VALUES (2078, '风机主状态查询', 2077, 1, '#', '', 'F', '0', 'system:mainstate:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2079, '风机主状态新增', 2077, 2, '#', '', 'F', '0', 'system:mainstate:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2080, '风机主状态修改', 2077, 3, '#', '', 'F', '0', 'system:mainstate:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2081, '风机主状态删除', 2077, 4, '#', '', 'F', '0', 'system:mainstate:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2082, '风机主状态导出', 2077, 5, '#', '', 'F', '0', 'system:mainstate:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2083, '气象', 2033, 1, '/system/meteorological', '', 'C', '0', 'system:meteorological:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '气象菜单');
INSERT INTO `sys_menu` VALUES (2084, '气象查询', 2083, 1, '#', '', 'F', '0', 'system:meteorological:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2085, '气象新增', 2083, 2, '#', '', 'F', '0', 'system:meteorological:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2086, '气象修改', 2083, 3, '#', '', 'F', '0', 'system:meteorological:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2087, '气象删除', 2083, 4, '#', '', 'F', '0', 'system:meteorological:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2088, '气象导出', 2083, 5, '#', '', 'F', '0', 'system:meteorological:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2089, '变桨系统', 2033, 1, '/system/pitsystem', '', 'C', '0', 'system:pitsystem:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '变桨系统菜单');
INSERT INTO `sys_menu` VALUES (2090, '变桨系统查询', 2089, 1, '#', '', 'F', '0', 'system:pitsystem:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2091, '变桨系统新增', 2089, 2, '#', '', 'F', '0', 'system:pitsystem:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2092, '变桨系统修改', 2089, 3, '#', '', 'F', '0', 'system:pitsystem:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2093, '变桨系统删除', 2089, 4, '#', '', 'F', '0', 'system:pitsystem:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2094, '变桨系统导出', 2089, 5, '#', '', 'F', '0', 'system:pitsystem:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2095, '转速', 2033, 1, '/system/rotorrpm', '', 'C', '0', 'system:rotorrpm:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '转速菜单');
INSERT INTO `sys_menu` VALUES (2096, '转速查询', 2095, 1, '#', '', 'F', '0', 'system:rotorrpm:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2097, '转速新增', 2095, 2, '#', '', 'F', '0', 'system:rotorrpm:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2098, '转速修改', 2095, 3, '#', '', 'F', '0', 'system:rotorrpm:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2099, '转速删除', 2095, 4, '#', '', 'F', '0', 'system:rotorrpm:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2100, '转速导出', 2095, 5, '#', '', 'F', '0', 'system:rotorrpm:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2101, '安全链', 2033, 1, '/system/safetychain', '', 'C', '0', 'system:safetychain:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '安全链菜单');
INSERT INTO `sys_menu` VALUES (2102, '安全链查询', 2101, 1, '#', '', 'F', '0', 'system:safetychain:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2103, '安全链新增', 2101, 2, '#', '', 'F', '0', 'system:safetychain:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2104, '安全链修改', 2101, 3, '#', '', 'F', '0', 'system:safetychain:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2105, '安全链删除', 2101, 4, '#', '', 'F', '0', 'system:safetychain:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2106, '安全链导出', 2101, 5, '#', '', 'F', '0', 'system:safetychain:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2107, '状态码', 2033, 1, '/system/statecode', '', 'C', '0', 'system:statecode:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '状态码菜单');
INSERT INTO `sys_menu` VALUES (2108, '状态码查询', 2107, 1, '#', '', 'F', '0', 'system:statecode:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2109, '状态码新增', 2107, 2, '#', '', 'F', '0', 'system:statecode:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2110, '状态码修改', 2107, 3, '#', '', 'F', '0', 'system:statecode:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2111, '状态码删除', 2107, 4, '#', '', 'F', '0', 'system:statecode:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2112, '状态码导出', 2107, 5, '#', '', 'F', '0', 'system:statecode:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2113, '统计', 2033, 1, '/system/statistics', '', 'C', '0', 'system:statistics:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '统计菜单');
INSERT INTO `sys_menu` VALUES (2114, '统计查询', 2113, 1, '#', '', 'F', '0', 'system:statistics:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2115, '统计新增', 2113, 2, '#', '', 'F', '0', 'system:statistics:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2116, '统计修改', 2113, 3, '#', '', 'F', '0', 'system:statistics:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2117, '统计删除', 2113, 4, '#', '', 'F', '0', 'system:statistics:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2118, '统计导出', 2113, 5, '#', '', 'F', '0', 'system:statistics:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2119, '偏航', 2033, 1, '/system/yaw', '', 'C', '0', 'system:yaw:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '偏航菜单');
INSERT INTO `sys_menu` VALUES (2120, '偏航查询', 2119, 1, '#', '', 'F', '0', 'system:yaw:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2121, '偏航新增', 2119, 2, '#', '', 'F', '0', 'system:yaw:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2122, '偏航修改', 2119, 3, '#', '', 'F', '0', 'system:yaw:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2123, '偏航删除', 2119, 4, '#', '', 'F', '0', 'system:yaw:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2124, '偏航导出', 2119, 5, '#', '', 'F', '0', 'system:yaw:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '操作日志', 9, 'com.ruoyi.project.monitor.operlog.controller.OperlogController.clean()', 'POST', 1, 'admin', '研发部门', '/monitor/operlog/clean', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-03-19 11:29:15');
INSERT INTO `sys_oper_log` VALUES (2, '登陆日志', 9, 'com.ruoyi.project.monitor.logininfor.controller.LogininforController.clean()', 'POST', 1, 'admin', '研发部门', '/monitor/logininfor/clean', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-03-19 11:29:20');
INSERT INTO `sys_oper_log` VALUES (3, '通知公告', 3, 'com.ruoyi.project.system.notice.controller.NoticeController.remove()', 'POST', 1, 'admin', '研发部门', '/system/notice/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1,2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-03-19 11:29:37');
INSERT INTO `sys_oper_log` VALUES (4, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"3\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统工具\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1000\"],\"icon\":[\"fa fa-bars\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-03-19 11:50:18');
INSERT INTO `sys_oper_log` VALUES (5, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"业务员\"],\"roleKey\":[\"scada\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2030,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2033,1,108,500,1039,1041,1042,501,1043,1045,2,109,1047,110,1050,1055,1056,112\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-03-19 11:52:30');
INSERT INTO `sys_oper_log` VALUES (6, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2033\"],\"menuType\":[\"C\"],\"menuName\":[\"统计时序\"],\"url\":[\"/demo/report/echarts\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-line-chart\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-03-19 14:08:45');
INSERT INTO `sys_oper_log` VALUES (7, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2034\"],\"parentId\":[\"2033\"],\"menuType\":[\"C\"],\"menuName\":[\"统计时序\"],\"url\":[\"/statistics/pic/echarts\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-line-chart\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-03-19 14:15:21');
INSERT INTO `sys_oper_log` VALUES (8, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2034\"],\"parentId\":[\"2033\"],\"menuType\":[\"C\"],\"menuName\":[\"统计时序\"],\"url\":[\"/demo/reports/echart\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-line-chart\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-03-19 14:22:56');
INSERT INTO `sys_oper_log` VALUES (9, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2034\"],\"parentId\":[\"2033\"],\"menuType\":[\"C\"],\"menuName\":[\"统计时序\"],\"url\":[\"/statistics/pic/echart\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-line-chart\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-03-19 14:24:41');
INSERT INTO `sys_oper_log` VALUES (10, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2034\"],\"parentId\":[\"2033\"],\"menuType\":[\"C\"],\"menuName\":[\"统计时序\"],\"url\":[\"/statistics/pic/echarts\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-line-chart\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-03-19 14:28:59');
INSERT INTO `sys_oper_log` VALUES (11, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2034\"],\"parentId\":[\"2033\"],\"menuType\":[\"C\"],\"menuName\":[\"统计时序\"],\"url\":[\"/demo/report/echarts\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-line-chart\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-03-19 14:35:04');
INSERT INTO `sys_oper_log` VALUES (12, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2034\"],\"parentId\":[\"2033\"],\"menuType\":[\"C\"],\"menuName\":[\"统计时序\"],\"url\":[\"/demo/report/echarts_bak\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-line-chart\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-03-19 14:38:35');
INSERT INTO `sys_oper_log` VALUES (13, '用户管理', 3, 'com.ruoyi.project.system.user.controller.UserController.remove()', 'POST', 1, 'admin', '研发部门', '/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-03-19 14:39:28');
INSERT INTO `sys_oper_log` VALUES (14, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2034\"],\"parentId\":[\"2033\"],\"menuType\":[\"C\"],\"menuName\":[\"统计时序\"],\"url\":[\"/demo/report/echarts\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-line-chart\"],\"visible\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-03-19 14:48:21');
INSERT INTO `sys_oper_log` VALUES (15, '部门管理', 3, 'com.ruoyi.project.system.dept.controller.DeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/106', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-03-19 15:06:25');
INSERT INTO `sys_oper_log` VALUES (16, '部门管理', 3, 'com.ruoyi.project.system.dept.controller.DeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/109', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-03-19 15:06:29');
INSERT INTO `sys_oper_log` VALUES (17, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"b_yaw,b_statistics,b_statecode,b_pitsystem,b_meteorological,b_mainstate,b_hydraulic,b_electricgenerator,b_drivechain,b_conveter,b_brake,b_accel,b_grid,b_rotorrpm,b_safetychain\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-03-24 09:04:51');
INSERT INTO `sys_oper_log` VALUES (18, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"b_accel,b_yaw,b_statistics,b_statecode,b_safetychain,b_rotorrpm,b_pitsystem,b_meteorological,b_mainstate,b_hydraulic,b_grid,b_electricgenerator,b_drivechain,b_conveter,b_brake\"]}', 'null', 0, NULL, '2020-03-24 09:08:11');
INSERT INTO `sys_oper_log` VALUES (19, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2034\"],\"parentId\":[\"2033\"],\"menuType\":[\"C\"],\"menuName\":[\"统计时序\"],\"url\":[\"/demo/report/echarts\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-line-chart\"],\"visible\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-03-24 09:25:45');
INSERT INTO `sys_oper_log` VALUES (20, '传动链', 3, 'com.ruoyi.project.system.drivechain.controller.BDrivechainController.remove()', 'POST', 1, 'admin', '研发部门', '/system/drivechain/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-03-24 09:28:52');
INSERT INTO `sys_oper_log` VALUES (21, '机组信息', 1, 'com.ruoyi.project.system.turbineinfo.controller.BTurbineinfoController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/turbineinfo/add', '127.0.0.1', '内网IP', '{\"turbineid\":[\"1\"],\"capacity\":[\"150\",\"150\"],\"line\":[\"11\"],\"ipaddr\":[\"10.12.100.1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-03-24 10:24:41');
INSERT INTO `sys_oper_log` VALUES (22, '机组信息', 1, 'com.ruoyi.project.system.turbineinfo.controller.BTurbineinfoController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/turbineinfo/add', '127.0.0.1', '内网IP', '{\"turbineid\":[\"2\"],\"capacity\":[\"150\",\"150\"],\"line\":[\"11\"],\"ipaddr\":[\"10.12.100.2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-03-24 10:24:56');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '管理员', 'admin', 1, '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '普通角色');
INSERT INTO `sys_role` VALUES (100, '业务员', 'scada', 1, '1', '0', '0', 'admin', '2020-03-19 11:14:24', 'admin', '2020-03-19 11:52:29', '');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (2, 1061);
INSERT INTO `sys_role_menu` VALUES (100, 1);
INSERT INTO `sys_role_menu` VALUES (100, 2);
INSERT INTO `sys_role_menu` VALUES (100, 108);
INSERT INTO `sys_role_menu` VALUES (100, 109);
INSERT INTO `sys_role_menu` VALUES (100, 110);
INSERT INTO `sys_role_menu` VALUES (100, 112);
INSERT INTO `sys_role_menu` VALUES (100, 500);
INSERT INTO `sys_role_menu` VALUES (100, 501);
INSERT INTO `sys_role_menu` VALUES (100, 1039);
INSERT INTO `sys_role_menu` VALUES (100, 1041);
INSERT INTO `sys_role_menu` VALUES (100, 1042);
INSERT INTO `sys_role_menu` VALUES (100, 1043);
INSERT INTO `sys_role_menu` VALUES (100, 1045);
INSERT INTO `sys_role_menu` VALUES (100, 1047);
INSERT INTO `sys_role_menu` VALUES (100, 1050);
INSERT INTO `sys_role_menu` VALUES (100, 1055);
INSERT INTO `sys_role_menu` VALUES (100, 1056);
INSERT INTO `sys_role_menu` VALUES (100, 2018);
INSERT INTO `sys_role_menu` VALUES (100, 2019);
INSERT INTO `sys_role_menu` VALUES (100, 2020);
INSERT INTO `sys_role_menu` VALUES (100, 2021);
INSERT INTO `sys_role_menu` VALUES (100, 2022);
INSERT INTO `sys_role_menu` VALUES (100, 2023);
INSERT INTO `sys_role_menu` VALUES (100, 2024);
INSERT INTO `sys_role_menu` VALUES (100, 2025);
INSERT INTO `sys_role_menu` VALUES (100, 2026);
INSERT INTO `sys_role_menu` VALUES (100, 2027);
INSERT INTO `sys_role_menu` VALUES (100, 2028);
INSERT INTO `sys_role_menu` VALUES (100, 2029);
INSERT INTO `sys_role_menu` VALUES (100, 2030);
INSERT INTO `sys_role_menu` VALUES (100, 2033);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '张靖', '00', '94024029@qq.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2020-03-24 15:42:58', 'admin', '2018-03-16 11:33:00', 'ry', '2020-03-24 15:42:57', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '张靖', '00', '94024029@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '2', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '测试员');
INSERT INTO `sys_user` VALUES (100, 107, 'scada', 'scada', '00', '94024029@qq.com', '18629284303', '0', '', 'a87085f8516f0558f4c12b30b38007c7', '681bf0', '0', '0', '127.0.0.1', '2020-03-19 12:03:27', 'admin', '2020-03-19 11:15:38', '', '2020-03-19 12:03:26', NULL);

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime(0) NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime(0) NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线用户记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 100);

SET FOREIGN_KEY_CHECKS = 1;
