/*
 Navicat Premium Data Transfer

 Source Server         : zjymysql5.7
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : ruoyi

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 08/05/2020 21:33:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_availability_day_statistics
-- ----------------------------
DROP TABLE IF EXISTS `t_availability_day_statistics`;
CREATE TABLE `t_availability_day_statistics`  (
  `id` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `wind_field_id` int(11) NULL DEFAULT NULL COMMENT '风场ID',
  `wind_field_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '风场名称',
  `line_id` int(11) NULL DEFAULT NULL COMMENT '线路ID',
  `line_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '线路名称',
  `turbine_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机组ID',
  `turbine_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机组名称',
  `availiable_time_length` float NULL DEFAULT NULL COMMENT '可利用时长',
  `statistical_time_length` float NULL DEFAULT NULL COMMENT '统计时长',
  `availablity` float NULL DEFAULT NULL COMMENT '可利用率',
  `statistical_time` datetime(0) NULL DEFAULT NULL COMMENT '统计时间',
  `computing_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '计算时间',
  `alternate_field1` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段1',
  `alternate_field2` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段2',
  `alternate_field3` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '可利用率按天统计表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_availability_month_statistics
-- ----------------------------
DROP TABLE IF EXISTS `t_availability_month_statistics`;
CREATE TABLE `t_availability_month_statistics`  (
  `id` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `wind_field_id` int(11) NULL DEFAULT NULL COMMENT '风场ID',
  `wind_field_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '风场名称',
  `line_id` int(11) NULL DEFAULT NULL COMMENT '线路ID',
  `line_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '线路名称',
  `turbine_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机组ID',
  `turbine_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机组名称',
  `availiable_time_length` float NULL DEFAULT NULL COMMENT '可利用时长',
  `statistical_time_length` float NULL DEFAULT NULL COMMENT '统计时长',
  `availablity` float NULL DEFAULT NULL COMMENT '可利用率',
  `statistical_time` datetime(0) NULL DEFAULT NULL COMMENT '统计时间',
  `computing_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '计算时间',
  `alternate_field1` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段1',
  `alternate_field2` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段2',
  `alternate_field3` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '可利用率统计按月统计表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_availability_year_statistics
-- ----------------------------
DROP TABLE IF EXISTS `t_availability_year_statistics`;
CREATE TABLE `t_availability_year_statistics`  (
  `id` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `wind_field_id` int(11) NULL DEFAULT NULL COMMENT '风场ID',
  `wind_field_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '风场名称',
  `line_id` int(11) NULL DEFAULT NULL COMMENT '线路ID',
  `line_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '线路名称',
  `turbine_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机组ID',
  `turbine_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机组名称',
  `availiable_time_length` float NULL DEFAULT NULL COMMENT '可利用时长',
  `statistical_time_length` float NULL DEFAULT NULL COMMENT '统计时长',
  `availablity` float NULL DEFAULT NULL COMMENT '可利用率',
  `statistical_time` datetime(0) NULL DEFAULT NULL COMMENT '统计时间',
  `computing_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '计算时间',
  `alternate_field1` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段1',
  `alternate_field2` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段2',
  `alternate_field3` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '可利用率统计按年统计表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_component_day_statistics
-- ----------------------------
DROP TABLE IF EXISTS `t_component_day_statistics`;
CREATE TABLE `t_component_day_statistics`  (
  `id` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `wind_field_id` int(11) NULL DEFAULT NULL COMMENT '风场ID',
  `wind_field_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '风场名称',
  `line_id` int(11) NULL DEFAULT NULL COMMENT '线路ID',
  `line_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '线路名称',
  `turbine_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机组ID',
  `turbine_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机组名称',
  `clockwise_yaw_activation_time_length` float NULL DEFAULT NULL COMMENT '顺时针偏航激活时长',
  `clockwise_yaw_activation_count` int(11) NULL DEFAULT NULL COMMENT '顺时针偏航激活次数',
  `coutterclockwise_yaw_activation_time_length` float NULL DEFAULT NULL COMMENT '逆时针偏航激活时长',
  `coutterclockwise_yaw_activation_count` int(11) NULL DEFAULT NULL COMMENT '逆时针偏航激活次数',
  `brake_offer_time_length` float NULL DEFAULT NULL COMMENT '刹车盘抱闸时长',
  `brake_offer_count` int(11) NULL DEFAULT NULL COMMENT '刹车盘抱闸次数',
  `generator_heater_work_time_length` float NULL DEFAULT NULL COMMENT '发电机加热器工作时长',
  `generator_heater_work_count` int(11) NULL DEFAULT NULL COMMENT '发电机加热器工作次数',
  `generator_frame1_work_time_length` float NULL DEFAULT NULL COMMENT '发电机风扇1工作时长',
  `generator_frame1_work_count` int(11) NULL DEFAULT NULL COMMENT '发电机风扇1工作次数',
  `generator_frame2_work_time_length` float NULL DEFAULT NULL COMMENT '发电机风扇2工作时长',
  `generator_frame2_work_count` int(11) NULL DEFAULT NULL COMMENT '发电机风扇2工作次数',
  `gearbox_lubrication_heat_time` float NULL DEFAULT NULL COMMENT '齿轮箱润滑油加热时长',
  `gearbox_lubrication_heat_count` int(11) NULL DEFAULT NULL COMMENT '齿轮箱润滑油加热次数',
  `gearbox_frame_work_time_length` float NULL DEFAULT NULL COMMENT '齿轮箱风扇工作时长',
  `gearbox_frame_work_time_cout` int(11) NULL DEFAULT NULL COMMENT '齿轮箱风扇工作次数',
  `gearbox_pump_work_time_length` float NULL DEFAULT NULL COMMENT '齿轮箱油泵工作时长',
  `gearbox_pump_work_count` int(11) NULL DEFAULT NULL COMMENT '齿轮箱油泵工作次数',
  `hydraulic_pump_work_time_length` float NULL DEFAULT NULL COMMENT '液压站泵工作时长',
  `hydraulic_pump_work_count` int(11) NULL DEFAULT NULL COMMENT '液压站泵工作次数',
  `anemometer_heater_work_time_length` float NULL DEFAULT NULL COMMENT '风速仪加热器工作时长',
  `anemometer_heater_work_count` int(11) NULL DEFAULT NULL COMMENT '风速仪加热器工作次数',
  `statistical_time` datetime(0) NULL DEFAULT NULL COMMENT '统计时间',
  `statistical_time_length` float(11, 0) NULL DEFAULT NULL COMMENT '统计时长',
  `computing_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '计算时间',
  `alternate_field1` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段1',
  `alternate_field2` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段2',
  `alternate_field3` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部件统计按天统计表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_fault_day_statistics
-- ----------------------------
DROP TABLE IF EXISTS `t_fault_day_statistics`;
CREATE TABLE `t_fault_day_statistics`  (
  `id` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `wind_field_id` int(11) NULL DEFAULT NULL COMMENT '风场ID',
  `wind_field_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '风场名称',
  `line_id` int(11) NULL DEFAULT NULL COMMENT '线路ID',
  `line_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '线路名称',
  `turbine_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机组ID',
  `turbine_id_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机组名称',
  `down_count` int(11) NULL DEFAULT NULL COMMENT '停机次数',
  `down_time_length` float NULL DEFAULT NULL COMMENT '停机时长',
  `down_category` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '停机类别',
  `down_state_code` int(11) NULL DEFAULT NULL COMMENT '停机状态码',
  `down_state_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '停机状态名称',
  `statistical_time_length` float NULL DEFAULT NULL COMMENT '统计时长',
  `statistical_time` datetime(0) NULL DEFAULT NULL COMMENT '统计时间',
  `computing_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '计算时间',
  `alternate_field1` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段1',
  `alternate_field2` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段2',
  `alternate_field3` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '故障统计按天统计表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_main_state_log
-- ----------------------------
DROP TABLE IF EXISTS `t_main_state_log`;
CREATE TABLE `t_main_state_log`  (
  `ID` int(11) NOT NULL COMMENT '索引',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '日期时间',
  `time_nano_sec` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '纳秒时间\r\n',
  `turbine_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机组号\r\n',
  `main_state` int(11) NULL DEFAULT NULL COMMENT '主状态',
  `sub_state` int(11) NULL DEFAULT NULL COMMENT '子状态',
  `active_code` int(11) NULL DEFAULT NULL COMMENT '当前激活的状态码',
  `availbility` float NULL DEFAULT NULL COMMENT '风机可利用率',
  `act_power_production` float NULL DEFAULT NULL COMMENT '风机有功发电量',
  `act_power_consumption` float NULL DEFAULT NULL COMMENT '风机有功耗电量',
  `react_power_production` float NULL DEFAULT NULL COMMENT '风机无功发电量',
  `react_power_consumption` float NULL DEFAULT NULL COMMENT '风机无功耗电量',
  `total_production_time_length` float NULL DEFAULT NULL COMMENT '总发电时长',
  `total_runing_time_length` float NULL DEFAULT NULL COMMENT '总运行时长',
  `total_mannul_stop_time_length` float NULL DEFAULT NULL COMMENT '总人工停机时长',
  `total_wether_stop_time_length` float NULL DEFAULT NULL COMMENT '总天气原因停机时长',
  `total_grid_fault_stop_time_length` float NULL DEFAULT NULL COMMENT '总电网故障停机时长',
  `total_turbine_fault_stop_time_length` float NULL DEFAULT NULL COMMENT '总风机故障停机时长',
  `total_time_length` float NULL DEFAULT NULL COMMENT '总时长',
  `total_availability` float NULL DEFAULT NULL COMMENT '总可利用率',
  `stat_reset_time` float NULL DEFAULT NULL COMMENT '复位总数据时间戳',
  `wind_spd` float NULL DEFAULT NULL COMMENT '风速',
  `yaw_err` float NULL DEFAULT NULL COMMENT '相对风向',
  `active_power` float NULL DEFAULT NULL COMMENT '有功功率',
  `reactive_power` float NULL DEFAULT NULL COMMENT '无功功率',
  `pit_angle_ave` float NULL DEFAULT NULL COMMENT '平均桨角',
  `rotor_spd` float NULL DEFAULT NULL COMMENT '主轴转速',
  `gen_spd` float NULL DEFAULT NULL COMMENT '发电机转速',
  `converter_spd` float NULL DEFAULT NULL COMMENT '交流器转速',
  `twist_angle` float NULL DEFAULT NULL COMMENT '牛栏角度',
  `gero_wind_vane` float NULL DEFAULT NULL COMMENT '地理风向',
  `backup1` float NULL DEFAULT NULL COMMENT '备用字段1',
  `backup2` float NULL DEFAULT NULL COMMENT '备用字段2',
  `backup3` float NULL DEFAULT NULL COMMENT '备用字段3',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '主状态日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_power_curve_day_statistics
-- ----------------------------
DROP TABLE IF EXISTS `t_power_curve_day_statistics`;
CREATE TABLE `t_power_curve_day_statistics`  (
  `id` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `wind_field_id` int(11) NULL DEFAULT NULL COMMENT '风场ID',
  `wind_field_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '风场名称',
  `line_id` int(11) NULL DEFAULT NULL COMMENT '线路ID',
  `line_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '线路名称',
  `turbine_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机组ID',
  `turbine_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机组名称',
  `wind_speed` float NULL DEFAULT NULL COMMENT '风速',
  `pover` float NULL DEFAULT NULL COMMENT '功率',
  `count` int(11) NULL DEFAULT NULL COMMENT '统计值',
  `statistical_time_length` float NULL DEFAULT NULL COMMENT '统计时长',
  `statistical_time` datetime(0) NULL DEFAULT NULL COMMENT '统计时间',
  `computing_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '计算时长',
  `alternate_field1` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段1',
  `alternate_field2` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段2',
  `alternate_field3` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '功率统计按天统计表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_state_code_log
-- ----------------------------
DROP TABLE IF EXISTS `t_state_code_log`;
CREATE TABLE `t_state_code_log`  (
  `ID` int(11) NOT NULL COMMENT '主键ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '状态码日志产生时间',
  `turbine_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机组ID',
  `status_code` int(11) NULL DEFAULT NULL COMMENT '状态码',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态名称',
  `state` int(11) NULL DEFAULT NULL COMMENT '状态',
  `cata_log` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别',
  `backup1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段1',
  `backup2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段1',
  `backup3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段1',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '状态码日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_ten_minute_log
-- ----------------------------
DROP TABLE IF EXISTS `t_ten_minute_log`;
CREATE TABLE `t_ten_minute_log`  (
  `ID` int(11) NOT NULL COMMENT '主键ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '日期时间',
  `turbine_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机组号',
  `status_bit_mask` float NULL DEFAULT NULL COMMENT '机组状态\r\n',
  `active_power_avg` float NULL DEFAULT NULL COMMENT 'TML有功功率平均值\r\n',
  `active_power_min` float NULL DEFAULT NULL COMMENT 'TML有功功率最小值',
  `active_power_max` float NULL DEFAULT NULL COMMENT 'TML有功功率最大值',
  `wind_spd_avg` float NULL DEFAULT NULL COMMENT 'TML风速平均值',
  `wind_spd_min` float NULL DEFAULT NULL COMMENT 'TML风速最小值',
  `wind_spd_max` float NULL DEFAULT NULL COMMENT 'TML风速最大值',
  `wind_turbulence` float NULL DEFAULT NULL COMMENT 'TML风速湍流',
  `stand_wind_spd` float NULL DEFAULT NULL COMMENT 'TML标准风速',
  `air_temp_avg` float NULL DEFAULT NULL COMMENT 'TML平均气温',
  `air_density_avg` float NULL DEFAULT NULL COMMENT 'TML平均空气密度',
  `geo_wind_direction_avg` float NULL DEFAULT NULL COMMENT 'TML地理风向平均值',
  `geo_wind_direction_min` float NULL DEFAULT NULL COMMENT 'TML地理风向最小值',
  `geo_wind_direction_max` float NULL DEFAULT NULL COMMENT 'TML地理风向最大值',
  `rotor_rpm_max` float NULL DEFAULT NULL COMMENT 'TML主轴转速最大值',
  `gen_rpm_max` float NULL DEFAULT NULL COMMENT 'TML发电机组转速最大值',
  `cable_twist_angle_max` float NULL DEFAULT NULL COMMENT 'TML扭缆角度最大值',
  `tower_side_by_side_vib_max` float NULL DEFAULT NULL COMMENT 'TML塔筒振动左右最大值',
  `tower_fore_after_vib_max` float NULL DEFAULT NULL COMMENT 'TML塔筒振动前后最大值',
  `drive_train_hoz_vib_max` float NULL DEFAULT NULL COMMENT 'TML传动链振动水平最大值',
  `drive_train_vert_vib_max` float NULL DEFAULT NULL COMMENT 'TML传动链振动垂直最大值',
  `pitch_motor1_temp_max` float NULL DEFAULT NULL COMMENT 'TML变桨电机1温度最大值',
  `pitch_motor2_temp_max` float NULL DEFAULT NULL COMMENT 'TML变桨电机2温度最大值',
  `pitch_motor3_temp_max` float NULL DEFAULT NULL COMMENT 'TML变桨电机3温度最大值',
  `gen_stator_wind_temp_max` float NULL DEFAULT NULL COMMENT 'TML发电机定子绕组温度最大值',
  `gen_drive_gear_temp_max` float NULL DEFAULT NULL COMMENT 'TML发电机驱动端轴承温度最大值',
  `gen_ndrive_gear_temp_max` float NULL DEFAULT NULL COMMENT 'TML发电机非驱动端轴承温度最大值',
  `ul1l2_min` float NULL DEFAULT NULL COMMENT 'TML电压L1L2最小值',
  `ul1l2_max` float NULL DEFAULT NULL COMMENT 'TML电压L1L2最大值\r\n',
  `ul2l3_min` float NULL DEFAULT NULL COMMENT 'TML电压L2L3最小值',
  `ul2l3_max` float NULL DEFAULT NULL COMMENT 'TML电压L2L3最大值',
  `ul3l1_min` float NULL DEFAULT NULL COMMENT 'TML电压L3L1最小值',
  `ul3l1_max` float NULL DEFAULT NULL COMMENT 'TML电压L3L1最大值',
  `freq_min` float NULL DEFAULT NULL COMMENT 'TML电网频率最小值',
  `freq_max` float NULL DEFAULT NULL COMMENT 'TML电网频率最大值',
  `yaw_err_avg` float NULL DEFAULT NULL COMMENT 'TML相对风向平均值',
  `backup1` float NULL DEFAULT NULL COMMENT '备用字段1',
  `backup2` float NULL DEFAULT NULL COMMENT '备用字段2',
  `backup3` float NULL DEFAULT NULL COMMENT '备用字段3',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '十分钟日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_turbine_info
-- ----------------------------
DROP TABLE IF EXISTS `t_turbine_info`;
CREATE TABLE `t_turbine_info`  (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '索引',
  `turbine_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机组ID',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `capacity` int(16) NULL DEFAULT NULL COMMENT '容量',
  `line_id` int(11) NULL DEFAULT NULL COMMENT '线路ID',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `line_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '线路名称',
  `wind_field_id` int(11) NULL DEFAULT NULL COMMENT '风场ID',
  `wind_field_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '风场ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '机组信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_wind_regime_statistics
-- ----------------------------
DROP TABLE IF EXISTS `t_wind_regime_statistics`;
CREATE TABLE `t_wind_regime_statistics`  (
  `id` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `wind_field_id` int(11) NULL DEFAULT NULL COMMENT '风场Id',
  `wind_field_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '风场名称',
  `line_id` int(11) NULL DEFAULT NULL COMMENT '线路Id',
  `line_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '线路名称',
  `turbine_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机组ID',
  `turbine_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机组名称',
  `frequency` float NULL DEFAULT NULL COMMENT '频率',
  `avg_wind_speed` float NULL DEFAULT NULL COMMENT '平均风速',
  `power` float NULL DEFAULT NULL COMMENT '功率',
  `avg_overfall` float NULL DEFAULT NULL COMMENT '平均湍流',
  `statistical_time` datetime(0) NULL DEFAULT NULL COMMENT '统计时间',
  `statistical_time_length` float NULL DEFAULT NULL COMMENT '统计时长',
  `computing_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '计算时间',
  `alternate_field1` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段1',
  `alternate_field2` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段2',
  `alternate_field3` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '风况统计按天统计表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
