/*
 Navicat Premium Data Transfer

 Source Server         : zjymysql5.7
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : scada_statistics

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 15/05/2020 23:46:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 't_availability_day_statistics', '可利用率按天统计表', 'AvailabilityDayStatistics', 'crud', 'com.scada.project', 'statistics', 'statistics', '可利用率按天统计', '张继勇', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-05-15 23:33:33', '', '2020-05-15 23:35:08', '');
INSERT INTO `gen_table` VALUES (2, 't_availability_month_statistics', '可利用率统计按月统计表', 'AvailabilityMonthStatistics', 'crud', 'com.scada.project', 'statistics', 'statistics', '可利用率统计按月统计', '张继勇', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-05-15 23:33:33', '', '2020-05-15 23:35:26', '');
INSERT INTO `gen_table` VALUES (3, 't_availability_year_statistics', '可利用率统计按年统计表', 'AvailabilityYearStatistics', 'crud', 'com.scada.project', 'statistics', 'statistics', '可利用率统计按年统计', '张继勇', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-05-15 23:33:33', '', '2020-05-15 23:36:12', '');
INSERT INTO `gen_table` VALUES (4, 't_component_day_statistics', '部件统计按天统计表', 'ComponentDayStatistics', 'crud', 'com.scada.project', 'statistics', 'statistics', '部件统计按天统计', '张继勇', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-05-15 23:33:33', '', '2020-05-15 23:37:01', '');
INSERT INTO `gen_table` VALUES (5, 't_fault_day_statistics', '故障统计按天统计表', 'FaultDayStatistics', 'crud', 'com.scada.project', 'statistics', 'statistics', '故障统计按天统计', '张继勇', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-05-15 23:33:33', '', '2020-05-15 23:37:26', '');
INSERT INTO `gen_table` VALUES (6, 't_main_state_log', '主状态日志', 'MainStateLog', 'crud', 'com.scada.project', 'statistics', 'statistics', '主状态日志', '张继勇', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-05-15 23:33:33', '', '2020-05-15 23:43:44', '');
INSERT INTO `gen_table` VALUES (7, 't_power_curve_day_statistics', '功率统计按天统计表', 'PowerCurveDayStatistics', 'crud', 'com.scada.project', 'statistics', 'statistics', '功率统计按天统计', '张继勇', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-05-15 23:33:33', '', '2020-05-15 23:39:22', '');
INSERT INTO `gen_table` VALUES (8, 't_state_code_log', '状态码日志', 'StateCodeLog', 'crud', 'com.scada.project', 'statistics', 'statistics', '状态码日志', '张继勇', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-05-15 23:33:33', '', '2020-05-15 23:39:43', '');
INSERT INTO `gen_table` VALUES (10, 't_turbine_info', '机组信息表', 'TurbineInfo', 'crud', 'com.scada.project', 'statistics', 'statistics', '机组信息', '张继勇', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-05-15 23:33:33', '', '2020-05-15 23:40:25', '');
INSERT INTO `gen_table` VALUES (11, 't_wind_regime_statistics', '风况统计按天统计表', 'WindRegimeStatistics', 'crud', 'com.scada.project', 'statistics', 'statistics', '风况统计按天统计', '张继勇', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-05-15 23:33:33', '', '2020-05-15 23:41:03', '');
INSERT INTO `gen_table` VALUES (12, 't_ten_minute_log', '十分钟日志', 'TenMinuteLog', 'crud', 'com.scada.project', 'statistics', 'statistics', '十分钟日志', '张继勇', '{\"treeName\":\"\",\"treeParentCode\":\"\",\"treeCode\":\"\"}', 'admin', '2020-05-15 23:41:56', '', '2020-05-15 23:43:33', '');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 277 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, '1', 'id', '主键ID', 'varchar(8)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:08');
INSERT INTO `gen_table_column` VALUES (2, '1', 'wind_field_id', '风场ID', 'int(11)', 'Long', 'windFieldId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:08');
INSERT INTO `gen_table_column` VALUES (3, '1', 'wind_field_name', '风场名称', 'varchar(50)', 'String', 'windFieldName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:08');
INSERT INTO `gen_table_column` VALUES (4, '1', 'line_id', '线路ID', 'int(11)', 'Long', 'lineId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:08');
INSERT INTO `gen_table_column` VALUES (5, '1', 'line_name', '线路名称', 'varchar(50)', 'String', 'lineName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:08');
INSERT INTO `gen_table_column` VALUES (6, '1', 'turbine_id', '机组ID', 'varchar(50)', 'String', 'turbineId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:08');
INSERT INTO `gen_table_column` VALUES (7, '1', 'turbine_name', '机组名称', 'varchar(50)', 'String', 'turbineName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 7, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:08');
INSERT INTO `gen_table_column` VALUES (8, '1', 'availiable_time_length', '可利用时长', 'float', 'Double', 'availiableTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:08');
INSERT INTO `gen_table_column` VALUES (9, '1', 'statistical_time_length', '统计时长', 'float', 'Double', 'statisticalTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:08');
INSERT INTO `gen_table_column` VALUES (10, '1', 'availablity', '可利用率', 'float', 'Double', 'availablity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:08');
INSERT INTO `gen_table_column` VALUES (11, '1', 'statistical_time', '统计时间', 'datetime', 'Date', 'statisticalTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 11, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:08');
INSERT INTO `gen_table_column` VALUES (12, '1', 'computing_time', '计算时间', 'datetime', 'Date', 'computingTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 12, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:08');
INSERT INTO `gen_table_column` VALUES (13, '1', 'alternate_field1', '备用字段1', 'varchar(30)', 'String', 'alternateField1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:08');
INSERT INTO `gen_table_column` VALUES (14, '1', 'alternate_field2', '备用字段2', 'varchar(30)', 'String', 'alternateField2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:08');
INSERT INTO `gen_table_column` VALUES (15, '1', 'alternate_field3', '备用字段3', 'varchar(30)', 'String', 'alternateField3', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:08');
INSERT INTO `gen_table_column` VALUES (16, '2', 'id', '主键ID', 'varchar(8)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:26');
INSERT INTO `gen_table_column` VALUES (17, '2', 'wind_field_id', '风场ID', 'int(11)', 'Long', 'windFieldId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:26');
INSERT INTO `gen_table_column` VALUES (18, '2', 'wind_field_name', '风场名称', 'varchar(50)', 'String', 'windFieldName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:26');
INSERT INTO `gen_table_column` VALUES (19, '2', 'line_id', '线路ID', 'int(11)', 'Long', 'lineId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:26');
INSERT INTO `gen_table_column` VALUES (20, '2', 'line_name', '线路名称', 'varchar(50)', 'String', 'lineName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:26');
INSERT INTO `gen_table_column` VALUES (21, '2', 'turbine_id', '机组ID', 'varchar(50)', 'String', 'turbineId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:26');
INSERT INTO `gen_table_column` VALUES (22, '2', 'turbine_name', '机组名称', 'varchar(50)', 'String', 'turbineName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 7, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:26');
INSERT INTO `gen_table_column` VALUES (23, '2', 'availiable_time_length', '可利用时长', 'float', 'Double', 'availiableTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:26');
INSERT INTO `gen_table_column` VALUES (24, '2', 'statistical_time_length', '统计时长', 'float', 'Double', 'statisticalTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:26');
INSERT INTO `gen_table_column` VALUES (25, '2', 'availablity', '可利用率', 'float', 'Double', 'availablity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:26');
INSERT INTO `gen_table_column` VALUES (26, '2', 'statistical_time', '统计时间', 'datetime', 'Date', 'statisticalTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 11, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:26');
INSERT INTO `gen_table_column` VALUES (27, '2', 'computing_time', '计算时间', 'datetime', 'Date', 'computingTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 12, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:26');
INSERT INTO `gen_table_column` VALUES (28, '2', 'alternate_field1', '备用字段1', 'varchar(30)', 'String', 'alternateField1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:26');
INSERT INTO `gen_table_column` VALUES (29, '2', 'alternate_field2', '备用字段2', 'varchar(30)', 'String', 'alternateField2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:26');
INSERT INTO `gen_table_column` VALUES (30, '2', 'alternate_field3', '备用字段3', 'varchar(30)', 'String', 'alternateField3', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:35:26');
INSERT INTO `gen_table_column` VALUES (31, '3', 'id', '主键ID', 'varchar(8)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:36:12');
INSERT INTO `gen_table_column` VALUES (32, '3', 'wind_field_id', '风场ID', 'int(11)', 'Long', 'windFieldId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:36:12');
INSERT INTO `gen_table_column` VALUES (33, '3', 'wind_field_name', '风场名称', 'varchar(50)', 'String', 'windFieldName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:36:12');
INSERT INTO `gen_table_column` VALUES (34, '3', 'line_id', '线路ID', 'int(11)', 'Long', 'lineId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:36:12');
INSERT INTO `gen_table_column` VALUES (35, '3', 'line_name', '线路名称', 'varchar(50)', 'String', 'lineName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:36:12');
INSERT INTO `gen_table_column` VALUES (36, '3', 'turbine_id', '机组ID', 'varchar(50)', 'String', 'turbineId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:36:12');
INSERT INTO `gen_table_column` VALUES (37, '3', 'turbine_name', '机组名称', 'varchar(50)', 'String', 'turbineName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 7, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:36:12');
INSERT INTO `gen_table_column` VALUES (38, '3', 'availiable_time_length', '可利用时长', 'float', 'Double', 'availiableTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:36:12');
INSERT INTO `gen_table_column` VALUES (39, '3', 'statistical_time_length', '统计时长', 'float', 'Double', 'statisticalTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:36:12');
INSERT INTO `gen_table_column` VALUES (40, '3', 'availablity', '可利用率', 'float', 'Double', 'availablity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:36:12');
INSERT INTO `gen_table_column` VALUES (41, '3', 'statistical_time', '统计时间', 'datetime', 'Date', 'statisticalTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 11, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:36:12');
INSERT INTO `gen_table_column` VALUES (42, '3', 'computing_time', '计算时间', 'datetime', 'Date', 'computingTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 12, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:36:12');
INSERT INTO `gen_table_column` VALUES (43, '3', 'alternate_field1', '备用字段1', 'varchar(30)', 'String', 'alternateField1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:36:12');
INSERT INTO `gen_table_column` VALUES (44, '3', 'alternate_field2', '备用字段2', 'varchar(30)', 'String', 'alternateField2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:36:12');
INSERT INTO `gen_table_column` VALUES (45, '3', 'alternate_field3', '备用字段3', 'varchar(30)', 'String', 'alternateField3', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:36:12');
INSERT INTO `gen_table_column` VALUES (46, '4', 'id', '主键ID', 'varchar(8)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (47, '4', 'wind_field_id', '风场ID', 'int(11)', 'Long', 'windFieldId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (48, '4', 'wind_field_name', '风场名称', 'varchar(50)', 'String', 'windFieldName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (49, '4', 'line_id', '线路ID', 'int(11)', 'Long', 'lineId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (50, '4', 'line_name', '线路名称', 'varchar(50)', 'String', 'lineName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (51, '4', 'turbine_id', '机组ID', 'varchar(50)', 'String', 'turbineId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (52, '4', 'turbine_name', '机组名称', 'varchar(50)', 'String', 'turbineName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 7, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (53, '4', 'clockwise_yaw_activation_time_length', '顺时针偏航激活时长', 'float', 'Double', 'clockwiseYawActivationTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (54, '4', 'clockwise_yaw_activation_count', '顺时针偏航激活次数', 'int(11)', 'Long', 'clockwiseYawActivationCount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (55, '4', 'coutterclockwise_yaw_activation_time_length', '逆时针偏航激活时长', 'float', 'Double', 'coutterclockwiseYawActivationTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (56, '4', 'coutterclockwise_yaw_activation_count', '逆时针偏航激活次数', 'int(11)', 'Long', 'coutterclockwiseYawActivationCount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (57, '4', 'brake_offer_time_length', '刹车盘抱闸时长', 'float', 'Double', 'brakeOfferTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (58, '4', 'brake_offer_count', '刹车盘抱闸次数', 'int(11)', 'Long', 'brakeOfferCount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (59, '4', 'generator_heater_work_time_length', '发电机加热器工作时长', 'float', 'Double', 'generatorHeaterWorkTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (60, '4', 'generator_heater_work_count', '发电机加热器工作次数', 'int(11)', 'Long', 'generatorHeaterWorkCount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (61, '4', 'generator_frame1_work_time_length', '发电机风扇1工作时长', 'float', 'Double', 'generatorFrame1WorkTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (62, '4', 'generator_frame1_work_count', '发电机风扇1工作次数', 'int(11)', 'Long', 'generatorFrame1WorkCount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (63, '4', 'generator_frame2_work_time_length', '发电机风扇2工作时长', 'float', 'Double', 'generatorFrame2WorkTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (64, '4', 'generator_frame2_work_count', '发电机风扇2工作次数', 'int(11)', 'Long', 'generatorFrame2WorkCount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (65, '4', 'gearbox_lubrication_heat_time', '齿轮箱润滑油加热时长', 'float', 'Double', 'gearboxLubricationHeatTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (66, '4', 'gearbox_lubrication_heat_count', '齿轮箱润滑油加热次数', 'int(11)', 'Long', 'gearboxLubricationHeatCount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 21, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (67, '4', 'gearbox_frame_work_time_length', '齿轮箱风扇工作时长', 'float', 'Double', 'gearboxFrameWorkTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 22, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (68, '4', 'gearbox_frame_work_time_cout', '齿轮箱风扇工作次数', 'int(11)', 'Long', 'gearboxFrameWorkTimeCout', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 23, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (69, '4', 'gearbox_pump_work_time_length', '齿轮箱油泵工作时长', 'float', 'Double', 'gearboxPumpWorkTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 24, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (70, '4', 'gearbox_pump_work_count', '齿轮箱油泵工作次数', 'int(11)', 'Long', 'gearboxPumpWorkCount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 25, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (71, '4', 'hydraulic_pump_work_time_length', '液压站泵工作时长', 'float', 'Double', 'hydraulicPumpWorkTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 26, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (72, '4', 'hydraulic_pump_work_count', '液压站泵工作次数', 'int(11)', 'Long', 'hydraulicPumpWorkCount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 27, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (73, '4', 'anemometer_heater_work_time_length', '风速仪加热器工作时长', 'float', 'Double', 'anemometerHeaterWorkTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 28, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (74, '4', 'anemometer_heater_work_count', '风速仪加热器工作次数', 'int(11)', 'Long', 'anemometerHeaterWorkCount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 29, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (75, '4', 'statistical_time', '统计时间', 'datetime', 'Date', 'statisticalTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 30, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (76, '4', 'statistical_time_length', '统计时长', 'float(11,0)', 'Double', 'statisticalTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 31, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (77, '4', 'computing_time', '计算时间', 'datetime', 'Date', 'computingTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 32, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (78, '4', 'alternate_field1', '备用字段1', 'varchar(30)', 'String', 'alternateField1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 33, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (79, '4', 'alternate_field2', '备用字段2', 'varchar(30)', 'String', 'alternateField2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 34, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (80, '4', 'alternate_field3', '备用字段3', 'varchar(30)', 'String', 'alternateField3', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 35, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:01');
INSERT INTO `gen_table_column` VALUES (81, '5', 'id', '主键ID', 'varchar(8)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:26');
INSERT INTO `gen_table_column` VALUES (82, '5', 'wind_field_id', '风场ID', 'int(11)', 'Long', 'windFieldId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:26');
INSERT INTO `gen_table_column` VALUES (83, '5', 'wind_field_name', '风场名称', 'varchar(50)', 'String', 'windFieldName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:26');
INSERT INTO `gen_table_column` VALUES (84, '5', 'line_id', '线路ID', 'int(11)', 'Long', 'lineId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:26');
INSERT INTO `gen_table_column` VALUES (85, '5', 'line_name', '线路名称', 'varchar(50)', 'String', 'lineName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:27');
INSERT INTO `gen_table_column` VALUES (86, '5', 'turbine_id', '机组ID', 'varchar(50)', 'String', 'turbineId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:27');
INSERT INTO `gen_table_column` VALUES (87, '5', 'turbine_id_name', '机组名称', 'varchar(50)', 'String', 'turbineIdName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 7, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:27');
INSERT INTO `gen_table_column` VALUES (88, '5', 'down_count', '停机次数', 'int(11)', 'Long', 'downCount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:27');
INSERT INTO `gen_table_column` VALUES (89, '5', 'down_time_length', '停机时长', 'float', 'Long', 'downTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:27');
INSERT INTO `gen_table_column` VALUES (90, '5', 'down_category', '停机类别', 'varchar(50)', 'String', 'downCategory', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:27');
INSERT INTO `gen_table_column` VALUES (91, '5', 'down_state_code', '停机状态码', 'int(11)', 'Long', 'downStateCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:27');
INSERT INTO `gen_table_column` VALUES (92, '5', 'down_state_name', '停机状态名称', 'varchar(20)', 'String', 'downStateName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 12, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:27');
INSERT INTO `gen_table_column` VALUES (93, '5', 'statistical_time_length', '统计时长', 'float', 'Double', 'statisticalTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:27');
INSERT INTO `gen_table_column` VALUES (94, '5', 'statistical_time', '统计时间', 'datetime', 'Date', 'statisticalTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 14, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:27');
INSERT INTO `gen_table_column` VALUES (95, '5', 'computing_time', '计算时间', 'datetime', 'Date', 'computingTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 15, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:27');
INSERT INTO `gen_table_column` VALUES (96, '5', 'alternate_field1', '备用字段1', 'varchar(30)', 'String', 'alternateField1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:27');
INSERT INTO `gen_table_column` VALUES (97, '5', 'alternate_field2', '备用字段2', 'varchar(30)', 'String', 'alternateField2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:27');
INSERT INTO `gen_table_column` VALUES (98, '5', 'alternate_field3', '备用字段3', 'varchar(30)', 'String', 'alternateField3', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:37:27');
INSERT INTO `gen_table_column` VALUES (99, '6', 'ID', '索引', 'int(11)', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (100, '6', 'create_time', '日期时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 2, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (101, '6', 'time_nano_sec', '纳秒时间', 'timestamp', 'Date', 'timeNanoSec', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (102, '6', 'turbine_id', '机组号', 'varchar(50)', 'String', 'turbineId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (103, '6', 'main_state', '主状态', 'int(11)', 'Long', 'mainState', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (104, '6', 'sub_state', '子状态', 'int(11)', 'Long', 'subState', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (105, '6', 'active_code', '当前激活的状态码', 'int(11)', 'Long', 'activeCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (106, '6', 'availbility_status', '风机可利用率', 'varchar(50)', 'String', 'availbilityStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 8, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (107, '6', 'act_power_production', '风机有功发电量', 'float', 'Double', 'actPowerProduction', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (108, '6', 'act_power_consumption', '风机有功耗电量', 'float', 'Double', 'actPowerConsumption', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (109, '6', 'react_power_production', '风机无功发电量', 'float', 'Double', 'reactPowerProduction', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (110, '6', 'react_power_consumption', '风机无功耗电量', 'float', 'Double', 'reactPowerConsumption', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (111, '6', 'total_production_time_length', '总发电时长', 'float', 'Double', 'totalProductionTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (112, '6', 'total_runing_time_length', '总运行时长', 'float', 'Double', 'totalRuningTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (113, '6', 'total_mannul_stop_time_length', '总人工停机时长', 'float', 'Double', 'totalMannulStopTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (114, '6', 'total_wether_stop_time_length', '总天气原因停机时长', 'float', 'Double', 'totalWetherStopTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (115, '6', 'total_grid_fault_stop_time_length', '总电网故障停机时长', 'float', 'Double', 'totalGridFaultStopTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (116, '6', 'total_full_performance_time_length', '总自由发电时长', 'float', 'Double', 'totalFullPerformanceTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (117, '6', 'total_partial_porformance_time_length', '总限功率发电时长', 'float', 'Double', 'totalPartialPorformanceTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (118, '6', 'total_technical_standby_time_length', '总待机时长', 'float', 'Double', 'totalTechnicalStandbyTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (119, '6', 'total_shceduled_maintenance_time_length', '总计划维护时长', 'float', 'Double', 'totalShceduledMaintenanceTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 21, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (120, '6', 'total_planned_corrective_action_time_length', '总计划故障检修时长', 'float', 'Double', 'totalPlannedCorrectiveActionTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 22, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (121, '6', 'total_force_majeure_time_length', '总不可抗原因停机时长', 'float', 'Double', 'totalForceMajeureTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 23, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (122, '6', 'total_information_unavailable_time_length', '总无法获取我信息-通讯故障时长', 'float', 'Double', 'totalInformationUnavailableTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 24, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (123, '6', 'total_suspended_time_length', '总挂起时长', 'float', 'Double', 'totalSuspendedTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 25, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (124, '6', 'total_turbine_fault_stop_time_length', '总风机故障停机时长', 'float', 'Double', 'totalTurbineFaultStopTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 26, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (125, '6', 'total_time_length', '总时长', 'float', 'Double', 'totalTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 27, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (126, '6', 'total_availability', '总可利用率', 'float', 'Double', 'totalAvailability', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 28, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (127, '6', 'stat_reset_time', '复位总数据时间戳', 'float', 'Double', 'statResetTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 29, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (128, '6', 'wind_spd', '风速', 'float', 'Double', 'windSpd', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 30, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (129, '6', 'yaw_err', '相对风向', 'float', 'Double', 'yawErr', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 31, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (130, '6', 'active_power', '有功功率', 'float', 'Double', 'activePower', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 32, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (131, '6', 'reactive_power', '无功功率', 'float', 'Double', 'reactivePower', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 33, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (132, '6', 'pit_angle_ave', '平均桨角', 'float', 'Double', 'pitAngleAve', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 34, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (133, '6', 'rotor_spd', '主轴转速', 'float', 'Double', 'rotorSpd', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 35, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (134, '6', 'gen_spd', '发电机转速', 'float', 'Double', 'genSpd', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 36, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (135, '6', 'converter_spd', '交流器转速', 'float', 'Double', 'converterSpd', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 37, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (136, '6', 'twist_angle', '牛栏角度', 'float', 'Double', 'twistAngle', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 38, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (137, '6', 'gero_wind_vane', '地理风向', 'float', 'Double', 'geroWindVane', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 39, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (138, '6', 'backup1', '备用字段1', 'float', 'Double', 'backup1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 40, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (139, '6', 'backup2', '备用字段2', 'float', 'Double', 'backup2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 41, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (140, '6', 'backup3', '备用字段3', 'float', 'Double', 'backup3', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 42, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:43:44');
INSERT INTO `gen_table_column` VALUES (141, '7', 'id', '主键ID', 'varchar(8)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:39:22');
INSERT INTO `gen_table_column` VALUES (142, '7', 'wind_field_id', '风场ID', 'int(11)', 'Long', 'windFieldId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:39:22');
INSERT INTO `gen_table_column` VALUES (143, '7', 'wind_field_name', '风场名称', 'varchar(50)', 'String', 'windFieldName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:39:22');
INSERT INTO `gen_table_column` VALUES (144, '7', 'line_id', '线路ID', 'int(11)', 'Long', 'lineId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:39:22');
INSERT INTO `gen_table_column` VALUES (145, '7', 'line_name', '线路名称', 'varchar(50)', 'String', 'lineName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:39:22');
INSERT INTO `gen_table_column` VALUES (146, '7', 'turbine_id', '机组ID', 'varchar(50)', 'String', 'turbineId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:39:22');
INSERT INTO `gen_table_column` VALUES (147, '7', 'turbine_name', '机组名称', 'varchar(50)', 'String', 'turbineName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 7, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:39:22');
INSERT INTO `gen_table_column` VALUES (148, '7', 'wind_speed', '风速', 'float', 'Double', 'windSpeed', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:39:22');
INSERT INTO `gen_table_column` VALUES (149, '7', 'pover', '功率', 'float', 'Double', 'pover', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:39:22');
INSERT INTO `gen_table_column` VALUES (150, '7', 'count', '统计值', 'int(11)', 'Long', 'count', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:39:22');
INSERT INTO `gen_table_column` VALUES (151, '7', 'statistical_time_length', '统计时长', 'float', 'Double', 'statisticalTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:39:22');
INSERT INTO `gen_table_column` VALUES (152, '7', 'statistical_time', '统计时间', 'datetime', 'Date', 'statisticalTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 12, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:39:22');
INSERT INTO `gen_table_column` VALUES (153, '7', 'computing_time', '计算时长', 'datetime', 'Date', 'computingTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 13, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:39:22');
INSERT INTO `gen_table_column` VALUES (154, '7', 'alternate_field1', '备用字段1', 'varchar(30)', 'String', 'alternateField1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:39:22');
INSERT INTO `gen_table_column` VALUES (155, '7', 'alternate_field2', '备用字段2', 'varchar(30)', 'String', 'alternateField2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:39:22');
INSERT INTO `gen_table_column` VALUES (156, '7', 'alternate_field3', '备用字段3', 'varchar(30)', 'String', 'alternateField3', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:39:22');
INSERT INTO `gen_table_column` VALUES (157, '8', 'ID', '主键ID', 'int(11)', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:39:43');
INSERT INTO `gen_table_column` VALUES (158, '8', 'create_time', '状态码日志产生时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 2, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:39:43');
INSERT INTO `gen_table_column` VALUES (159, '8', 'turbine_id', '机组ID', 'varchar(50)', 'String', 'turbineId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:39:43');
INSERT INTO `gen_table_column` VALUES (160, '8', 'status_code', '状态码', 'int(11)', 'Long', 'statusCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:39:43');
INSERT INTO `gen_table_column` VALUES (161, '8', 'name', '状态名称', 'varchar(50)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:39:43');
INSERT INTO `gen_table_column` VALUES (162, '8', 'state', '状态', 'int(11)', 'Long', 'state', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:39:43');
INSERT INTO `gen_table_column` VALUES (163, '8', 'cata_log', '类别', 'varchar(50)', 'String', 'cataLog', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:39:43');
INSERT INTO `gen_table_column` VALUES (164, '8', 'backup1', '备用字段1', 'varchar(50)', 'String', 'backup1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:39:43');
INSERT INTO `gen_table_column` VALUES (165, '8', 'backup2', '备用字段1', 'varchar(50)', 'String', 'backup2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:39:43');
INSERT INTO `gen_table_column` VALUES (166, '8', 'backup3', '备用字段1', 'varchar(50)', 'String', 'backup3', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:39:43');
INSERT INTO `gen_table_column` VALUES (209, '10', 'id', '索引', 'int(32)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:40:25');
INSERT INTO `gen_table_column` VALUES (210, '10', 'turbine_id', '机组ID', 'varchar(50)', 'String', 'turbineId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:40:25');
INSERT INTO `gen_table_column` VALUES (211, '10', 'type', '类型', 'varchar(255)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:40:25');
INSERT INTO `gen_table_column` VALUES (212, '10', 'capacity', '容量', 'int(16)', 'Long', 'capacity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:40:25');
INSERT INTO `gen_table_column` VALUES (213, '10', 'line_id', '线路ID', 'int(11)', 'Long', 'lineId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:40:25');
INSERT INTO `gen_table_column` VALUES (214, '10', 'ip', 'IP地址', 'varchar(255)', 'String', 'ip', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:40:25');
INSERT INTO `gen_table_column` VALUES (215, '10', 'line_name', '线路名称', 'varchar(50)', 'String', 'lineName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 7, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:40:25');
INSERT INTO `gen_table_column` VALUES (216, '10', 'wind_field_id', '风场ID', 'int(11)', 'Long', 'windFieldId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:40:25');
INSERT INTO `gen_table_column` VALUES (217, '10', 'wind_field_name', '风场ID', 'varchar(50)', 'String', 'windFieldName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 9, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:40:25');
INSERT INTO `gen_table_column` VALUES (218, '11', 'id', '主键ID', 'varchar(8)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:41:03');
INSERT INTO `gen_table_column` VALUES (219, '11', 'wind_field_id', '风场Id', 'int(11)', 'Long', 'windFieldId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:41:03');
INSERT INTO `gen_table_column` VALUES (220, '11', 'wind_field_name', '风场名称', 'varchar(50)', 'String', 'windFieldName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:41:03');
INSERT INTO `gen_table_column` VALUES (221, '11', 'line_id', '线路Id', 'int(11)', 'Long', 'lineId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:41:03');
INSERT INTO `gen_table_column` VALUES (222, '11', 'line_name', '线路名称', 'varchar(50)', 'String', 'lineName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:41:03');
INSERT INTO `gen_table_column` VALUES (223, '11', 'turbine_id', '机组ID', 'varchar(50)', 'String', 'turbineId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:41:03');
INSERT INTO `gen_table_column` VALUES (224, '11', 'turbine_name', '机组名称', 'varchar(50)', 'String', 'turbineName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 7, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:41:03');
INSERT INTO `gen_table_column` VALUES (225, '11', 'frequency', '频率', 'float', 'Double', 'frequency', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:41:03');
INSERT INTO `gen_table_column` VALUES (226, '11', 'avg_wind_speed', '平均风速', 'float', 'Double', 'avgWindSpeed', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:41:03');
INSERT INTO `gen_table_column` VALUES (227, '11', 'power', '功率', 'float', 'Double', 'power', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:41:03');
INSERT INTO `gen_table_column` VALUES (228, '11', 'avg_overfall', '平均湍流', 'float', 'Double', 'avgOverfall', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:41:03');
INSERT INTO `gen_table_column` VALUES (229, '11', 'statistical_time', '统计时间', 'datetime', 'Date', 'statisticalTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 12, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:41:03');
INSERT INTO `gen_table_column` VALUES (230, '11', 'statistical_time_length', '统计时长', 'float', 'Double', 'statisticalTimeLength', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:41:03');
INSERT INTO `gen_table_column` VALUES (231, '11', 'computing_time', '计算时间', 'datetime', 'Date', 'computingTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 14, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:41:03');
INSERT INTO `gen_table_column` VALUES (232, '11', 'alternate_field1', '备用字段1', 'varchar(30)', 'String', 'alternateField1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:41:03');
INSERT INTO `gen_table_column` VALUES (233, '11', 'alternate_field2', '备用字段2', 'varchar(30)', 'String', 'alternateField2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:41:03');
INSERT INTO `gen_table_column` VALUES (234, '11', 'alternate_field3', '备用字段3', 'varchar(30)', 'String', 'alternateField3', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2020-05-15 23:33:33', NULL, '2020-05-15 23:41:03');
INSERT INTO `gen_table_column` VALUES (235, '12', 'ID', '主键ID', 'int(11)', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (236, '12', 'create_time', '日期时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 2, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (237, '12', 'turbine_id', '机组号', 'varchar(50)', 'String', 'turbineId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (238, '12', 'status_bit_mask', '机组状态', 'int(11)', 'Long', 'statusBitMask', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (239, '12', 'active_power_avg', 'TML有功功率平均值', 'float', 'Double', 'activePowerAvg', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (240, '12', 'active_power_min', 'TML有功功率最小值', 'float', 'Double', 'activePowerMin', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (241, '12', 'active_power_max', 'TML有功功率最大值', 'float', 'Double', 'activePowerMax', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (242, '12', 'wind_spd_avg', 'TML风速平均值', 'float', 'Double', 'windSpdAvg', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (243, '12', 'wind_spd_min', 'TML风速最小值', 'float', 'Double', 'windSpdMin', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (244, '12', 'wind_spd_max', 'TML风速最大值', 'float', 'Double', 'windSpdMax', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (245, '12', 'wind_turbulence', 'TML风速湍流', 'float', 'Double', 'windTurbulence', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (246, '12', 'stand_wind_spd', 'TML标准风速', 'float', 'Double', 'standWindSpd', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (247, '12', 'air_temp_avg', 'TML平均气温', 'float', 'Double', 'airTempAvg', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (248, '12', 'air_density_avg', 'TML平均空气密度', 'float', 'Double', 'airDensityAvg', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (249, '12', 'geo_wind_direction_avg', 'TML地理风向平均值', 'float', 'Double', 'geoWindDirectionAvg', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (250, '12', 'geo_wind_direction_min', 'TML地理风向最小值', 'float', 'Double', 'geoWindDirectionMin', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (251, '12', 'geo_wind_direction_max', 'TML地理风向最大值', 'float', 'Double', 'geoWindDirectionMax', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (252, '12', 'rotor_rpm_max', 'TML主轴转速最大值', 'float', 'Double', 'rotorRpmMax', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (253, '12', 'gen_rpm_max', 'TML发电机组转速最大值', 'float', 'Double', 'genRpmMax', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (254, '12', 'cable_twist_angle_max', 'TML扭缆角度最大值', 'float', 'Double', 'cableTwistAngleMax', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (255, '12', 'tower_side_by_side_vib_max', 'TML塔筒振动左右最大值', 'float', 'Double', 'towerSideBySideVibMax', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 21, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (256, '12', 'tower_fore_after_vib_max', 'TML塔筒振动前后最大值', 'float', 'Double', 'towerForeAfterVibMax', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 22, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (257, '12', 'drive_train_hoz_vib_max', 'TML传动链振动水平最大值', 'float', 'Double', 'driveTrainHozVibMax', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 23, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (258, '12', 'drive_train_vert_vib_max', 'TML传动链振动垂直最大值', 'float', 'Double', 'driveTrainVertVibMax', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 24, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (259, '12', 'pitch_motor1_temp_max', 'TML变桨电机1温度最大值', 'float', 'Double', 'pitchMotor1TempMax', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 25, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (260, '12', 'pitch_motor2_temp_max', 'TML变桨电机2温度最大值', 'float', 'Double', 'pitchMotor2TempMax', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 26, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (261, '12', 'pitch_motor3_temp_max', 'TML变桨电机3温度最大值', 'float', 'Double', 'pitchMotor3TempMax', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 27, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (262, '12', 'gen_stator_wind_temp_max', 'TML发电机定子绕组温度最大值', 'float', 'Double', 'genStatorWindTempMax', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 28, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (263, '12', 'gen_drive_gear_temp_max', 'TML发电机驱动端轴承温度最大值', 'float', 'Double', 'genDriveGearTempMax', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 29, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (264, '12', 'gen_ndrive_gear_temp_max', 'TML发电机非驱动端轴承温度最大值', 'float', 'Double', 'genNdriveGearTempMax', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 30, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (265, '12', 'ul1l2_min', 'TML电压L1L2最小值', 'float', 'Double', 'ul1l2Min', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 31, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (266, '12', 'ul1l2_max', 'TML电压L1L2最大值', 'float', 'Double', 'ul1l2Max', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 32, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (267, '12', 'ul2l3_min', 'TML电压L2L3最小值', 'float', 'Double', 'ul2l3Min', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 33, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (268, '12', 'ul2l3_max', 'TML电压L2L3最大值', 'float', 'Double', 'ul2l3Max', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 34, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (269, '12', 'ul3l1_min', 'TML电压L3L1最小值', 'float', 'Double', 'ul3l1Min', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 35, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (270, '12', 'ul3l1_max', 'TML电压L3L1最大值', 'float', 'Double', 'ul3l1Max', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 36, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (271, '12', 'freq_min', 'TML电网频率最小值', 'float', 'Double', 'freqMin', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 37, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (272, '12', 'freq_max', 'TML电网频率最大值', 'float', 'Double', 'freqMax', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 38, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (273, '12', 'yaw_err_avg', 'TML相对风向平均值', 'float', 'Double', 'yawErrAvg', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 39, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (274, '12', 'backup1', '备用字段1', 'float', 'Double', 'backup1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 40, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (275, '12', 'backup2', '备用字段2', 'float', 'Double', 'backup2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 41, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');
INSERT INTO `gen_table_column` VALUES (276, '12', 'backup3', '备用字段3', 'float', 'Double', 'backup3', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 42, 'admin', '2020-05-15 23:41:56', NULL, '2020-05-15 23:43:33');

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
INSERT INTO `qrtz_cron_triggers` VALUES ('ScadaStatisticsScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('ScadaStatisticsScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('ScadaStatisticsScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

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
INSERT INTO `qrtz_job_details` VALUES ('ScadaStatisticsScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.scada.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E73636164612E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E73636164612E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('ScadaStatisticsScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.scada.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E73636164612E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E73636164612E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('ScadaStatisticsScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.scada.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E73636164612E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E73636164612E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

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
INSERT INTO `qrtz_locks` VALUES ('ScadaStatisticsScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('ScadaStatisticsScheduler', 'TRIGGER_ACCESS');

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
INSERT INTO `qrtz_scheduler_state` VALUES ('ScadaStatisticsScheduler', 'zjy-pc1589555285269', 1589557584205, 15000);

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
INSERT INTO `qrtz_triggers` VALUES ('ScadaStatisticsScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1589555290000, -1, 5, 'PAUSED', 'CRON', 1589555285000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('ScadaStatisticsScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1589555295000, -1, 5, 'PAUSED', 'CRON', 1589555285000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('ScadaStatisticsScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1589555300000, -1, 5, 'PAUSED', 'CRON', 1589555285000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES (4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '是否开启注册用户功能');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

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
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

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
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

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
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', '0', '登录成功', '2020-05-15 23:14:40');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2000 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, '#', '', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, '#', '', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, '#', '', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统工具目录');
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

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 117 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '代码生成', 6, 'com.scada.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_availability_day_statistics,t_availability_month_statistics,t_component_day_statistics,t_fault_day_statistics,t_availability_year_statistics,t_power_curve_day_statistics,t_state_code_log,t_wind_regime_statistics,t_ten_minute_log,t_turbine_info,t_main_state_log\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-05-15 23:33:33');
INSERT INTO `sys_oper_log` VALUES (101, '代码生成', 2, 'com.scada.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"t_availability_day_statistics\"],\"tableComment\":[\"可利用率按天统计表\"],\"className\":[\"AvailabilityDayStatistics\"],\"functionAuthor\":[\"张继勇\"],\"remark\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.scada.project\"],\"moduleName\":[\"statistics\"],\"businessName\":[\"statistics\"],\"functionName\":[\"可利用率按天统计\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', 'null', 1, '', '2020-05-15 23:34:13');
INSERT INTO `sys_oper_log` VALUES (102, '代码生成', 2, 'com.scada.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"t_availability_day_statistics\"],\"tableComment\":[\"可利用率按天统计表\"],\"className\":[\"AvailabilityDayStatistics\"],\"functionAuthor\":[\"张继勇\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"风场ID\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"windFieldId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"风场名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"windFieldName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"线路ID\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"lineId\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"线路名称\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"lineName\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"机组ID\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaFiel', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-05-15 23:35:08');
INSERT INTO `sys_oper_log` VALUES (103, '代码生成', 2, 'com.scada.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"2\"],\"tableName\":[\"t_availability_month_statistics\"],\"tableComment\":[\"可利用率统计按月统计表\"],\"className\":[\"AvailabilityMonthStatistics\"],\"functionAuthor\":[\"张继勇\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"16\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"17\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"风场ID\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"windFieldId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"18\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"风场名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"windFieldName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"19\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"线路ID\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"lineId\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"20\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"线路名称\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"lineName\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"21\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"机组ID\"],\"columns[5].javaType\":[\"String\"],\"columns', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-05-15 23:35:26');
INSERT INTO `sys_oper_log` VALUES (104, '代码生成', 2, 'com.scada.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"t_availability_year_statistics\"],\"tableComment\":[\"可利用率统计按年统计表\"],\"className\":[\"AvailabilityYearStatistics\"],\"functionAuthor\":[\"张继勇\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"31\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"32\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"风场ID\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"windFieldId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"33\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"风场名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"windFieldName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"34\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"线路ID\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"lineId\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"35\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"线路名称\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"lineName\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"36\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"机组ID\"],\"columns[5].javaType\":[\"String\"],\"columns[5', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-05-15 23:36:13');
INSERT INTO `sys_oper_log` VALUES (105, '代码生成', 2, 'com.scada.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"t_component_day_statistics\"],\"tableComment\":[\"部件统计按天统计表\"],\"className\":[\"ComponentDayStatistics\"],\"functionAuthor\":[\"张继勇\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"46\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"47\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"风场ID\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"windFieldId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"48\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"风场名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"windFieldName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"49\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"线路ID\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"lineId\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"50\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"线路名称\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"lineName\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"51\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"机组ID\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaFiel', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-05-15 23:37:01');
INSERT INTO `sys_oper_log` VALUES (106, '代码生成', 2, 'com.scada.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"t_fault_day_statistics\"],\"tableComment\":[\"故障统计按天统计表\"],\"className\":[\"FaultDayStatistics\"],\"functionAuthor\":[\"张继勇\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"81\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"82\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"风场ID\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"windFieldId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"83\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"风场名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"windFieldName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"84\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"线路ID\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"lineId\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"85\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"线路名称\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"lineName\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"86\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"机组ID\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"tur', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-05-15 23:37:27');
INSERT INTO `sys_oper_log` VALUES (107, '代码生成', 2, 'com.scada.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"t_main_state_log\"],\"tableComment\":[\"主状态日志\"],\"className\":[\"MainStateLog\"],\"functionAuthor\":[\"张继勇\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"99\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"索引\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"100\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"日期时间\"],\"columns[1].javaType\":[\"Date\"],\"columns[1].javaField\":[\"createTime\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"datetime\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"101\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"纳秒时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"timeNanoSec\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"102\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"机组号\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"turbineId\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"103\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"主状态\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"mainState\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"104\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"子状态\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"subState\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-05-15 23:39:03');
INSERT INTO `sys_oper_log` VALUES (108, '代码生成', 2, 'com.scada.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"7\"],\"tableName\":[\"t_power_curve_day_statistics\"],\"tableComment\":[\"功率统计按天统计表\"],\"className\":[\"PowerCurveDayStatistics\"],\"functionAuthor\":[\"张继勇\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"141\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"142\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"风场ID\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"windFieldId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"143\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"风场名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"windFieldName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"144\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"线路ID\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"lineId\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"145\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"线路名称\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"lineName\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"146\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"机组ID\"],\"columns[5].javaType\":[\"String\"],\"columns[5]', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-05-15 23:39:22');
INSERT INTO `sys_oper_log` VALUES (109, '代码生成', 2, 'com.scada.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"8\"],\"tableName\":[\"t_state_code_log\"],\"tableComment\":[\"状态码日志\"],\"className\":[\"StateCodeLog\"],\"functionAuthor\":[\"张继勇\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"157\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"158\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"状态码日志产生时间\"],\"columns[1].javaType\":[\"Date\"],\"columns[1].javaField\":[\"createTime\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"datetime\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"159\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"机组ID\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"turbineId\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"160\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"状态码\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"statusCode\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"161\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"状态名称\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"name\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"162\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"状态\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"state\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-05-15 23:39:43');
INSERT INTO `sys_oper_log` VALUES (110, '代码生成', 2, 'com.scada.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"10\"],\"tableName\":[\"t_turbine_info\"],\"tableComment\":[\"机组信息表\"],\"className\":[\"TurbineInfo\"],\"functionAuthor\":[\"张继勇\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"209\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"索引\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"210\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"机组ID\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"turbineId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"211\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"类型\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"type\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"212\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"容量\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"capacity\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"213\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"线路ID\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"lineId\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"214\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"IP地址\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"ip\"],\"columns[5].isInsert\":[\"1\"],\"col', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-05-15 23:40:25');
INSERT INTO `sys_oper_log` VALUES (111, '代码生成', 2, 'com.scada.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"11\"],\"tableName\":[\"t_wind_regime_statistics\"],\"tableComment\":[\"风况统计按天统计表\"],\"className\":[\"WindRegimeStatistics\"],\"functionAuthor\":[\"张继勇\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"218\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"String\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"219\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"风场Id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"windFieldId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"220\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"风场名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"windFieldName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"221\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"线路Id\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"lineId\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"222\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"线路名称\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"lineName\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"LIKE\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"223\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"机组ID\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaF', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-05-15 23:41:03');
INSERT INTO `sys_oper_log` VALUES (112, '代码生成', 3, 'com.scada.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"9\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-05-15 23:41:46');
INSERT INTO `sys_oper_log` VALUES (113, '代码生成', 6, 'com.scada.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"t_ten_minute_log\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-05-15 23:41:56');
INSERT INTO `sys_oper_log` VALUES (114, '代码生成', 2, 'com.scada.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"12\"],\"tableName\":[\"t_ten_minute_log\"],\"tableComment\":[\"十分钟日志\"],\"className\":[\"TenMinuteLog\"],\"functionAuthor\":[\"张继勇\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"235\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键ID\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"236\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"日期时间\"],\"columns[1].javaType\":[\"Date\"],\"columns[1].javaField\":[\"createTime\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"datetime\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"237\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"机组号\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"turbineId\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"238\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"机组状态\"],\"columns[3].javaType\":[\"Long\"],\"columns[3].javaField\":[\"statusBitMask\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"239\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"TML有功功率平均值\"],\"columns[4].javaType\":[\"Double\"],\"columns[4].javaField\":[\"activePowerAvg\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"240\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"TML有功功率最小值\"],\"columns[5].javaType\":[\"Double\"],\"columns[5].javaField\":[\"activePowerMin\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"col', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-05-15 23:43:33');
INSERT INTO `sys_oper_log` VALUES (115, '代码生成', 2, 'com.scada.project.tool.gen.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"t_main_state_log\"],\"tableComment\":[\"主状态日志\"],\"className\":[\"MainStateLog\"],\"functionAuthor\":[\"张继勇\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"99\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"索引\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"100\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"日期时间\"],\"columns[1].javaType\":[\"Date\"],\"columns[1].javaField\":[\"createTime\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"datetime\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"101\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"纳秒时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"timeNanoSec\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"102\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"机组号\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"turbineId\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"103\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"主状态\"],\"columns[4].javaType\":[\"Long\"],\"columns[4].javaField\":[\"mainState\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"104\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"子状态\"],\"columns[5].javaType\":[\"Long\"],\"columns[5].javaField\":[\"subState\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2020-05-15 23:43:44');
INSERT INTO `sys_oper_log` VALUES (116, '代码生成', 8, 'com.scada.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"t_ten_minute_log,t_availability_day_statistics,t_availability_month_statistics,t_availability_year_statistics,t_component_day_statistics,t_fault_day_statistics,t_main_state_log,t_power_curve_day_statistics,t_state_code_log,t_turbine_info,t_wind_regime_statistics\"]}', 'null', 0, NULL, '2020-05-15 23:44:30');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

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
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '管理员', 'admin', 1, '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

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

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2020-05-15 23:14:40', 'admin', '2018-03-16 11:33:00', 'ry', '2020-05-15 23:14:40', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '测试员');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime(0) NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime(0) NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '在线用户记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('c80f3593-da5b-4f3b-94f3-8e01fd1b0ff9', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 7', 'on_line', '2020-05-15 23:14:27', '2020-05-15 23:43:34', 1800000);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

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
  `availbility_status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '风机可利用率',
  `act_power_production` float NULL DEFAULT NULL COMMENT '风机有功发电量',
  `act_power_consumption` float NULL DEFAULT NULL COMMENT '风机有功耗电量',
  `react_power_production` float NULL DEFAULT NULL COMMENT '风机无功发电量',
  `react_power_consumption` float NULL DEFAULT NULL COMMENT '风机无功耗电量',
  `total_production_time_length` float NULL DEFAULT NULL COMMENT '总发电时长',
  `total_runing_time_length` float NULL DEFAULT NULL COMMENT '总运行时长',
  `total_mannul_stop_time_length` float NULL DEFAULT NULL COMMENT '总人工停机时长',
  `total_wether_stop_time_length` float NULL DEFAULT NULL COMMENT '总天气原因停机时长',
  `total_grid_fault_stop_time_length` float NULL DEFAULT NULL COMMENT '总电网故障停机时长',
  `total_full_performance_time_length` float NULL DEFAULT NULL COMMENT '总自由发电时长',
  `total_partial_porformance_time_length` float NULL DEFAULT NULL COMMENT '总限功率发电时长',
  `total_technical_standby_time_length` float NULL DEFAULT NULL COMMENT '总待机时长',
  `total_shceduled_maintenance_time_length` float NULL DEFAULT NULL COMMENT '总计划维护时长',
  `total_planned_corrective_action_time_length` float NULL DEFAULT NULL COMMENT '总计划故障检修时长',
  `total_force_majeure_time_length` float NULL DEFAULT NULL COMMENT '总不可抗原因停机时长',
  `total_information_unavailable_time_length` float NULL DEFAULT NULL COMMENT '总无法获取我信息-通讯故障时长',
  `total_suspended_time_length` float NULL DEFAULT NULL COMMENT '总挂起时长',
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
  `status_bit_mask` int(11) NULL DEFAULT NULL COMMENT '机组状态\r\n',
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
