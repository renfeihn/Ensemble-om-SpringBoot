/*
Navicat MySQL Data Transfer

Source Server         : 10.7.94.150
Source Server Version : 50722
Source Host           : 10.7.94.150:3306
Source Database       : ensemble_om

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-12-26 09:13:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for IRL_AMT_SPLIT
-- ----------------------------
DROP TABLE IF EXISTS `IRL_AMT_SPLIT`;
CREATE TABLE `IRL_AMT_SPLIT` (
                               `AMT_SPLIT_ID` varchar(10) NOT NULL COMMENT '金额分段ID',
                               `AMT_SEQ_NO` varchar(5) NOT NULL COMMENT '序号',
                               `SPLIT_AMT` decimal(17,2) DEFAULT NULL COMMENT '分段金额',
                               `AMT_SPLIT_MODE` varchar(1) DEFAULT NULL COMMENT '分段模式',
                               `INT_TYPE` varchar(3) DEFAULT NULL COMMENT '利率类型',
                               `PERI_SPLIT_ID` varchar(10) DEFAULT NULL COMMENT '周期分段ID',
                               `RULE_ID` varchar(500) DEFAULT NULL COMMENT '规则ID',
                               `TRAN_TIMESTAMP` varchar(17) DEFAULT NULL COMMENT '交易时间戳',
                               `TRAN_TIME` decimal(11,0) DEFAULT NULL COMMENT '交易时间',
                               PRIMARY KEY (`AMT_SPLIT_ID`,`AMT_SEQ_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='金额分段参数表 undefined';

-- ----------------------------
-- Records of IRL_AMT_SPLIT
-- ----------------------------
INSERT INTO `IRL_AMT_SPLIT` VALUES ('ABAM', '1', '0.00', null, 'BAM', null, null, null, null);
INSERT INTO `IRL_AMT_SPLIT` VALUES ('ABAN', '1', '0.00', null, 'BAN', null, null, null, null);
INSERT INTO `IRL_AMT_SPLIT` VALUES ('AC1', '1', '0.00', null, 'C1', null, null, null, null);
INSERT INTO `IRL_AMT_SPLIT` VALUES ('AC3', '1', '0.00', null, 'C3', null, null, null, null);
INSERT INTO `IRL_AMT_SPLIT` VALUES ('AC5', '1', '0.00', null, 'C5', null, null, null, null);
INSERT INTO `IRL_AMT_SPLIT` VALUES ('AC7', '1', '0.00', null, 'C7', null, null, null, null);
INSERT INTO `IRL_AMT_SPLIT` VALUES ('ACBQ', '1', '0.00', null, 'CBQ', null, null, null, null);
INSERT INTO `IRL_AMT_SPLIT` VALUES ('ACOM', '1', '0.00', null, 'COM', null, null, null, null);
INSERT INTO `IRL_AMT_SPLIT` VALUES ('ACON', '1', '0.00', null, 'CON', null, null, null, null);
INSERT INTO `IRL_AMT_SPLIT` VALUES ('ADHL', '1', '0.00', null, 'DHL', null, null, null, null);
INSERT INTO `IRL_AMT_SPLIT` VALUES ('ADHT', '1', '0.00', null, 'DHT', null, null, null, null);
INSERT INTO `IRL_AMT_SPLIT` VALUES ('ADR1', '1', '0.00', null, 'DR1', null, null, null, null);
INSERT INTO `IRL_AMT_SPLIT` VALUES ('ADZ1', '1', '0.00', null, 'DZ1', null, null, null, null);
INSERT INTO `IRL_AMT_SPLIT` VALUES ('AFLC', '1', '0.00', null, 'FLC', null, null, null, null);
INSERT INTO `IRL_AMT_SPLIT` VALUES ('AFXC', '1', '0.00', null, 'FXC', null, null, null, null);
INSERT INTO `IRL_AMT_SPLIT` VALUES ('AHQI', '1', '0.00', null, 'HQI', null, null, null, null);
INSERT INTO `IRL_AMT_SPLIT` VALUES ('AJYC', '1', '0.00', null, 'JYC', null, null, null, null);
INSERT INTO `IRL_AMT_SPLIT` VALUES ('ALCZ', '1', '0.00', null, 'LCZ', null, null, null, null);
INSERT INTO `IRL_AMT_SPLIT` VALUES ('ARJ1', '1', '0.00', null, 'RJ1', null, null, null, null);
INSERT INTO `IRL_AMT_SPLIT` VALUES ('ARJ2', '1', '0.00', null, 'RJ2', null, null, null, null);
INSERT INTO `IRL_AMT_SPLIT` VALUES ('ARJ3', '1', '0.00', null, 'RJ3', null, null, null, null);
INSERT INTO `IRL_AMT_SPLIT` VALUES ('ATZ1', '1', '0.00', null, 'TZ1', null, null, null, null);
INSERT INTO `IRL_AMT_SPLIT` VALUES ('ATZ7', '1', '0.00', null, 'TZ7', null, null, null, null);
INSERT INTO `IRL_AMT_SPLIT` VALUES ('AXD1', '1', '0.00', null, 'HQI', null, null, null, null);
INSERT INTO `IRL_AMT_SPLIT` VALUES ('AXD1', '2', '300000.00', null, 'XD1', null, null, null, null);
INSERT INTO `IRL_AMT_SPLIT` VALUES ('AXFC', '1', '0.00', 'Q', 'XFC', null, null, null, null);
INSERT INTO `IRL_AMT_SPLIT` VALUES ('AXFK', '1', '0.00', 'Q', 'XFK', null, null, null, null);
INSERT INTO `IRL_AMT_SPLIT` VALUES ('AXY1', '1', '0.00', null, 'XY1', null, null, null, null);
INSERT INTO `IRL_AMT_SPLIT` VALUES ('AZNA', '1', '0.00', null, 'ZNA', null, null, null, null);

-- ----------------------------
-- Table structure for IRL_INT_MATRIX
-- ----------------------------
DROP TABLE IF EXISTS `IRL_INT_MATRIX`;
CREATE TABLE `IRL_INT_MATRIX` (
                                `MATRIX_NO` varchar(50) NOT NULL COMMENT '阶梯序号',
                                `IRL_SEQ_NO` varchar(50) NOT NULL COMMENT '序号',
                                `MATRIX_AMT` decimal(17,2) NOT NULL COMMENT '阶梯金额',
                                `PERIOD_FREQ` varchar(2) DEFAULT NULL COMMENT '频率类型',
                                `DAY_NUM` varchar(5) DEFAULT NULL COMMENT '每期天数 ',
                                `INT_BASIS` varchar(2) DEFAULT NULL COMMENT '基准利率类型',
                                `BASE_RATE` decimal(15,8) DEFAULT NULL COMMENT '基准利率',
                                `SPREAD_RATE` decimal(15,8) DEFAULT NULL COMMENT '浮动点数',
                                `SPREAD_PERCENT` decimal(5,2) DEFAULT NULL COMMENT '利率浮动百分比 ',
                                `ACTUAL_RATE` decimal(15,8) DEFAULT NULL COMMENT '实际利率',
                                `MIN_RATE` decimal(15,8) DEFAULT NULL COMMENT '最小利率',
                                `MAX_RATE` decimal(15,8) DEFAULT NULL COMMENT '最大利率',
                                `SUB_INT_TYPE` varchar(3) DEFAULT NULL COMMENT '子利率类型',
                                `IS_OVER` varchar(1) DEFAULT NULL COMMENT '利率终结标志',
                                `COMPANY` varchar(20) DEFAULT NULL COMMENT '法人代码',
                                `TRAN_TIMESTAMP` varchar(17) DEFAULT NULL COMMENT '交易时间戳',
                                `TRAN_TIME` decimal(11,0) DEFAULT NULL COMMENT '交易时间',
                                PRIMARY KEY (`MATRIX_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='利率税率阶梯表 undefined';

-- ----------------------------
-- Records of IRL_INT_MATRIX
-- ----------------------------
INSERT INTO `IRL_INT_MATRIX` VALUES ('1', '113', '0.00', null, '0', null, null, null, null, '3.30000000', '0.35000000', '6.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('10', '122', '0.00', null, '0', null, null, null, null, '0.00010000', '0.00050000', '3.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('100', '73', '0.00', 'M3', '90', null, null, null, null, '1.43000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('101', '73', '0.00', 'M6', '180', null, null, null, null, '1.69000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('102', '73', '0.00', 'Y1', '360', null, null, null, null, '1.95000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('103', '73', '0.00', 'Y2', '720', null, null, null, null, '2.73000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('104', '73', '0.00', 'Y3', '1080', null, null, null, null, '3.30000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('105', '73', '0.00', 'Y4', '1440', null, null, null, null, '4.50800000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('106', '73', '0.00', 'Y5', '1800', null, null, null, null, '4.80000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('107', '97', '0.00', null, null, null, null, null, null, '0.00000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('108', '98', '0.00', null, null, null, null, null, null, '0.00000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('109', '99', '0.00', null, null, null, null, null, null, '0.00000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('11', '123', '0.00', null, '0', null, null, null, null, '0.10000000', '0.00050000', '3.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('110', '100', '0.00', null, null, null, null, null, null, '0.00000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('111', '101', '0.00', null, null, null, null, null, null, '0.00000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('112', '102', '0.00', null, null, null, null, null, null, '0.00000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('113', '103', '0.00', null, null, null, null, null, null, '0.00000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('114', '104', '0.00', null, null, null, null, null, null, '0.00000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('115', '107', '0.00', 'D0', '0', 'R1', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('116', '107', '0.00', 'M3', '90', null, null, null, null, '1.43000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('117', '107', '0.00', 'M6', '180', null, null, null, null, '1.69000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('118', '107', '0.00', 'Y1', '360', null, null, null, null, '1.95000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('119', '107', '0.00', 'Y2', '720', null, null, null, null, '2.73000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('12', '124', '0.00', null, '0', null, null, null, null, '0.12500000', '0.00050000', '3.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('120', '107', '0.00', 'Y3', '1080', null, null, null, null, '3.30000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('121', '107', '0.00', 'Y4', '1440', null, null, null, null, '4.50800000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('122', '107', '0.00', 'Y5', '1800', null, null, null, null, '4.80000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('123', '108', '0.00', 'D0', '0', null, null, null, null, '0.80000000', '0.10000000', '100.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('124', '108', '0.00', 'D7', '7', null, null, null, null, '1.15000000', '0.10000000', '100.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('125', '108', '0.00', 'M1', '30', null, null, null, null, '1.35000000', '0.10000000', '100.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('126', '108', '0.00', 'M3', '90', null, null, null, null, '1.90000000', '0.10000000', '100.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('127', '108', '0.00', 'M6', '180', null, null, null, null, '2.45000000', '0.10000000', '100.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('128', '145', '0.00', 'Y2', '720', 'R5', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('129', '145', '0.00', 'Y3', '1080', 'R6', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('13', '125', '0.00', null, '0', null, null, null, null, '0.02000000', '0.00050000', '3.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('130', '145', '0.00', 'Y5', '1800', null, null, null, null, '3.75000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('131', '145', '0.00', 'M3', '90', 'R2', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('132', '145', '0.00', 'M6', '180', 'R3', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('133', '145', '0.00', 'Y1', '360', 'R4', null, null, '40.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('134', '145', '0.00', 'D1', '1', 'T1', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('135', '145', '0.00', 'D7', '7', 'T7', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('137', '1', '0.00', null, '0', 'C1', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('138', '2', '0.00', null, '0', 'C3', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('139', '3', '0.00', null, '0', 'C5', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('14', '126', '0.00', null, '0', null, null, null, null, '0.00010000', '0.00050000', '3.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('140', '4', '0.00', null, '0', 'C1', null, null, '50.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('141', '35', '0.00', null, '0', 'C1', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('142', '36', '0.00', null, '0', 'C1', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('143', '37', '0.00', null, '0', 'C1', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('144', '38', '0.00', null, '0', 'C1', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('145', '39', '0.00', null, '0', 'C1', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('146', '40', '0.00', null, '0', 'C1', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('147', '41', '0.00', null, '0', 'C1', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('148', '42', '0.00', null, '0', 'C1', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('149', '43', '0.00', null, '0', 'C1', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('15', '127', '0.00', null, '0', null, null, null, null, '0.10000000', '0.00050000', '3.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('150', '5', '0.00', null, '0', 'C1', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('151', '44', '0.00', null, '0', 'C3', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('152', '45', '0.00', null, '0', 'C3', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('153', '46', '0.00', null, '0', 'C3', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('154', '47', '0.00', null, '0', 'C3', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('155', '48', '0.00', null, '0', 'C3', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('156', '49', '0.00', null, '0', 'C3', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('157', '50', '0.00', null, '0', 'C3', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('158', '51', '0.00', null, '0', 'C3', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('159', '52', '0.00', null, '0', 'C3', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('16', '128', '0.00', null, '0', null, null, null, null, '0.23750000', '0.00050000', '3.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('160', '53', '0.00', null, '0', 'C5', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('161', '95', '0.00', null, '0', 'G1', null, null, '50.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('162', '54', '0.00', null, '0', 'C5', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('163', '55', '0.00', null, '0', 'C5', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('164', '56', '0.00', null, '0', 'C5', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('165', '57', '0.00', null, '0', 'C5', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('166', '58', '0.00', null, '0', 'C5', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('167', '59', '0.00', null, '0', 'C5', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('168', '60', '0.00', null, '0', 'C5', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('169', '61', '0.00', null, '0', 'C5', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('17', '129', '0.00', null, '0', null, null, null, null, '0.01000000', '0.00050000', '3.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('170', '96', '0.00', null, '0', 'G1', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('171', '5', '0.00', null, '0', 'C3', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('172', '93', '0.00', null, '0', 'G1', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('173', '94', '0.00', null, '0', 'G2', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('174', '5', '0.00', null, '0', 'C5', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('175', '75', '0.00', null, '0', null, null, null, null, '7.77450000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('176', '76', '0.00', null, '0', null, null, null, null, '6.41400000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('177', '77', '0.00', null, '0', null, null, null, null, '7.57470000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('178', '78', '0.00', null, '0', null, null, null, null, '5.65600000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('179', '79', '0.00', null, '0', null, null, null, null, '4.85500000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('18', '130', '0.00', null, '0', null, null, null, null, '0.72000000', '0.50000000', '5.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('180', '80', '0.00', null, '0', null, null, null, null, '8.04900000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('181', '81', '0.00', null, '0', null, null, null, null, '4.85500000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('182', '82', '0.00', null, '0', null, null, null, null, '6.56500000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('183', '83', '0.00', null, '0', null, null, null, null, '7.07650000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('184', '84', '0.00', null, '0', null, null, null, null, '7.77450000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('185', '85', '0.00', null, '0', null, null, null, null, '6.41400000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('186', '86', '0.00', null, '0', null, null, null, null, '7.57470000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('187', '87', '0.00', null, '0', null, null, null, null, '5.65600000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('188', '88', '0.00', null, '0', null, null, null, null, '4.85500000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('189', '89', '0.00', null, '0', null, null, null, null, '8.04900000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('19', '71', '0.00', null, '0', null, null, null, null, '0.72000000', '0.10000000', '1.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('190', '90', '0.00', null, '0', null, null, null, null, '4.85500000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('191', '91', '0.00', null, '0', null, null, null, null, '6.56500000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('192', '92', '0.00', null, '0', null, null, null, null, '7.07650000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('193', '105', '0.00', null, '0', null, null, null, null, '7.07650000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('194', '146', '0.00', 'D0', '0', 'R1', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('195', '146', '0.00', 'D7', '7', 'R2', null, null, '20.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('196', '146', '0.00', 'M3', '90', 'R2', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('197', '146', '0.00', 'M6', '180', 'R3', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('198', '146', '0.00', 'Y1', '360', 'R4', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('199', '146', '0.00', 'Y2', '720', 'R5', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('2', '114', '0.00', null, '0', null, null, null, null, '0.00050000', '0.00050000', '5.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('20', '72', '0.00', null, '0', null, null, null, null, '1.62000000', '1.50000000', '2.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('200', '146', '0.00', 'Y3', '1080', 'R6', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('201', '146', '0.00', 'Y5', '1800', null, null, null, null, '4.70000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('202', '108', '500000.00', 'M6', '180', null, null, null, null, '2.70000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('203', '109', '0.00', 'Y1', '360', 'R4', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('204', '131', '0.00', 'D0', '0', 'R1', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('205', '131', '0.00', 'M3', '90', 'R2', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('206', '131', '0.00', 'M6', '180', 'R3', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('207', '131', '0.00', 'Y1', '360', 'R4', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('208', '131', '0.00', 'Y2', '720', 'R5', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('209', '131', '0.00', 'Y3', '1080', 'R6', null, null, '20.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('21', '6', '0.00', null, null, 'R1', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('210', '131', '0.00', 'Y5', '1800', null, null, null, null, '4.50800000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('211', '131', '500000.00', 'Y5', '1800', null, null, null, null, '4.70000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('212', '186', '500000.00', null, null, null, null, null, null, '5.61000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('213', '186', '100000.00', null, null, null, null, null, null, '4.61000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('214', '186', '0.00', null, null, null, null, null, null, '3.20000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('22', '7', '0.00', null, null, 'R1', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('229', '109', '0.00', 'D0', '0', 'R1', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('23', '8', '0.00', null, null, 'R1', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('24', '9', '0.00', null, null, 'R1', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('25', '10', '0.00', null, null, 'R1', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('26', '11', '0.00', null, null, 'R1', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('262', '109', '0.00', 'M3', '90', 'R2', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('263', '109', '0.00', 'M6', '180', 'R3', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('27', '12', '0.00', null, null, 'R1', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('28', '13', '0.00', null, null, 'R1', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('29', '15', '0.00', null, null, 'R1', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('3', '115', '0.00', null, '0', null, null, null, null, '0.37500000', '0.00050000', '5.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('30', '16', '0.00', 'M3', '90', 'R2', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('31', '16', '0.00', 'M6', '180', 'R3', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('310', '158', '0.00', null, '0', null, null, null, null, '0.01290000', '0.00050000', '5.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('311', '159', '0.00', null, '0', null, null, null, null, '0.00050000', '0.00050000', '5.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('312', '160', '0.00', null, '0', null, null, null, null, '0.37500000', '0.00050000', '5.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('313', '161', '0.00', null, '0', null, null, null, null, '0.17500000', '0.00050000', '5.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('314', '162', '0.00', null, '0', null, null, null, null, '0.02000000', '0.00050000', '5.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('315', '163', '0.00', null, '0', null, null, null, null, '0.60000000', '0.00050000', '5.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('316', '164', '0.00', null, '0', null, null, null, null, '0.01000000', '0.00050000', '5.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('317', '165', '0.00', null, '0', null, null, null, null, '0.10000000', '0.00050000', '5.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('318', '166', '0.00', null, '0', null, null, null, null, '0.75000000', '0.00050000', '5.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('319', '167', '0.00', null, '0', null, null, null, null, '0.75000000', '0.00050000', '5.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('32', '16', '0.00', 'Y1', '360', 'R4', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('320', '168', '0.00', null, '0', null, null, null, null, '0.60000000', '0.00050000', '5.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('321', '201', '0.00', 'D1', '1', null, null, null, null, '0.52000000', null, null, null, null, null, null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('322', '201', '0.00', 'D3', '3', null, null, null, null, '0.62000000', null, null, null, null, null, null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('323', '201', '0.00', 'D7', '7', null, null, null, null, '0.72000000', null, null, null, null, null, null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('324', '201', '0.00', 'W2', '14', null, null, null, null, '1.50300000', null, null, null, null, null, null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('325', '201', '0.00', 'M1', '30', null, null, null, null, '1.96200000', null, null, null, null, null, null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('326', '201', '0.00', 'M2', '60', null, null, null, null, '2.20600000', null, null, null, null, null, null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('327', '201', '0.00', 'M3', '90', null, null, null, null, '2.27700000', null, null, null, null, null, null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('328', '201', '0.00', 'M6', '180', null, null, null, null, '2.33100000', null, null, null, null, null, null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('329', '201', '0.00', 'Y1', '360', null, null, null, null, '2.40300000', null, null, null, null, null, null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('33', '16', '0.00', 'Y2', '720', 'R5', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('330', '202', '0.00', 'D1', '1', null, null, null, null, '0.42000000', null, null, null, null, null, null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('331', '202', '0.00', 'D3', '3', null, null, null, null, '0.52000000', null, null, null, null, null, null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('332', '202', '0.00', 'D7', '7', null, null, null, null, '0.62000000', null, null, null, null, null, null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('333', '202', '0.00', 'W2', '14', null, null, null, null, '1.40300000', null, null, null, null, null, null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('334', '202', '0.00', 'M1', '30', null, null, null, null, '1.86200000', null, null, null, null, null, null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('335', '202', '0.00', 'M2', '60', null, null, null, null, '2.10600000', null, null, null, null, null, null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('336', '202', '0.00', 'M3', '90', null, null, null, null, '2.17700000', null, null, null, null, null, null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('337', '202', '0.00', 'M6', '180', null, null, null, null, '2.23100000', null, null, null, null, null, null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('338', '202', '0.00', 'Y1', '360', null, null, null, null, '2.30300000', null, null, null, null, null, null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('34', '16', '0.00', 'Y3', '1080', 'R6', null, null, '20.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('35', '16', '0.00', 'Y5', '1800', null, null, null, null, '4.50800000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('36', '16', '500000.00', 'Y5', '1800', null, null, null, null, '4.70000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('37', '16', '0.00', 'D0', '0', 'R1', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('38', '17', '0.00', 'M1', '30', 'R7', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('39', '17', '0.00', 'M3', '90', 'R2', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('4', '116', '0.00', null, '0', null, null, null, null, '0.17500000', '0.00050000', '5.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('40', '17', '0.00', 'M6', '180', 'R3', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('41', '17', '0.00', 'Y1', '360', 'R4', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('42', '17', '0.00', 'Y2', '720', 'R5', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('43', '18', '0.00', 'M1', '30', 'R7', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('44', '18', '0.00', 'M3', '90', 'R2', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('45', '18', '0.00', 'M6', '180', 'R3', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('46', '18', '0.00', 'Y1', '360', 'R4', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('47', '18', '0.00', 'Y2', '720', 'R5', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('48', '19', '0.00', 'M1', '30', 'R7', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('49', '19', '0.00', 'M3', '90', 'R2', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('5', '117', '0.00', null, '0', null, null, null, null, '0.02000000', '0.00050000', '5.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('50', '19', '0.00', 'M6', '180', 'R3', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('51', '19', '0.00', 'Y1', '360', 'R4', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('52', '19', '0.00', 'Y2', '720', 'R5', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('53', '20', '0.00', 'M1', '30', 'R7', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('54', '20', '0.00', 'M3', '90', 'R2', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('55', '20', '0.00', 'M6', '180', 'R3', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('56', '20', '0.00', 'Y1', '360', 'R4', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('57', '20', '0.00', 'Y2', '720', 'R5', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('58', '21', '0.00', 'M1', '30', 'R7', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('59', '21', '0.00', 'M3', '90', 'R2', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('6', '118', '0.00', null, '0', null, null, null, null, '0.00050000', '0.00050000', '5.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('60', '21', '0.00', 'M6', '180', 'R3', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('601', '595', '0.00', null, '0', null, null, null, null, '3.00000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('602', '604', '0.00', null, '0', null, null, null, null, '0.20000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('603', '637', '0.00', 'M3', '90', null, null, null, null, '1.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('604', '637', '0.00', 'M6', '180', null, null, null, null, '1.50000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('605', '637', '0.00', 'Y1', '360', null, null, null, null, '2.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('606', '637', '0.00', 'Y2', '720', null, null, null, null, '2.50000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('607', '637', '0.00', 'Y3', '1080', null, null, null, null, '3.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('608', '637', '0.00', 'Y4', '1440', null, null, null, null, '4.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('609', '637', '0.00', 'Y5', '1800', null, null, null, null, '5.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('61', '21', '0.00', 'Y1', '360', 'R4', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('610', '587', '0.00', null, null, null, null, null, null, '0.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('611', '588', '0.00', null, null, null, null, null, null, '0.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('612', '589', '0.00', null, null, null, null, null, null, '0.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('613', '605', '0.00', null, '0', null, null, null, null, '0.30000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('614', '590', '0.00', null, null, null, null, null, null, '0.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('615', '591', '0.00', null, null, null, null, null, null, '0.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('616', '592', '0.00', null, null, null, null, null, null, '0.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('617', '593', '0.00', null, null, null, null, null, null, '0.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('618', '594', '0.00', null, null, null, null, null, null, '0.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('619', '632', '0.00', 'D0', '0', 'R1', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('62', '21', '0.00', 'Y2', '720', 'R5', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('620', '632', '0.00', 'M3', '90', null, null, null, null, '1.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('621', '632', '0.00', 'M6', '180', null, null, null, null, '1.50000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('622', '632', '0.00', 'Y1', '360', null, null, null, null, '2.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('623', '632', '0.00', 'Y2', '720', null, null, null, null, '3.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('624', '606', '0.00', null, '0', null, null, null, null, '0.20000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('625', '632', '0.00', 'Y3', '1080', null, null, null, null, '3.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('626', '632', '0.00', 'Y4', '1440', null, null, null, null, '4.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('627', '632', '0.00', 'Y5', '1800', null, null, null, null, '5.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('628', '633', '0.00', 'D0', '0', null, null, null, null, '0.50000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('629', '633', '0.00', 'D7', '7', null, null, null, null, '1.00000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('63', '22', '0.00', 'M1', '30', 'R7', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('630', '633', '0.00', 'M1', '30', null, null, null, null, '1.50000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('631', '633', '0.00', 'M3', '90', null, null, null, null, '2.00000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('632', '633', '0.00', 'M6', '180', null, null, null, null, '2.50000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('633', '626', '0.00', 'Y2', '720', 'R5', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('634', '626', '0.00', 'Y3', '1080', 'R6', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('635', '607', '0.00', null, '0', null, null, null, null, '0.30000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('636', '626', '0.00', 'Y5', '1800', null, null, null, null, '3.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('637', '626', '0.00', 'M3', '90', 'R2', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('638', '626', '0.00', 'M6', '180', 'R3', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('639', '626', '0.00', 'Y1', '360', 'R4', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('64', '22', '0.00', 'M3', '90', 'R2', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('640', '626', '0.00', 'D1', '1', 'T1', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('641', '626', '0.00', 'D7', '7', 'T7', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('642', '501', '0.00', null, '0', 'C1', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('643', '511', '0.00', null, '0', 'C3', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('644', '521', '0.00', null, '0', 'C5', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('645', '608', '0.00', null, '0', null, null, null, null, '0.30000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('646', '531', '0.00', null, '0', 'C1', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('647', '502', '0.00', null, '0', 'C1', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('648', '503', '0.00', null, '0', 'C1', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('649', '504', '0.00', null, '0', 'C1', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('65', '22', '0.00', 'M6', '180', 'R3', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('650', '505', '0.00', null, '0', 'C1', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('651', '506', '0.00', null, '0', 'C1', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('652', '507', '0.00', null, '0', 'C1', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('653', '508', '0.00', null, '0', 'C1', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('654', '509', '0.00', null, '0', 'C1', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('655', '510', '0.00', null, '0', 'C1', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('656', '609', '0.00', null, '0', null, null, null, null, '0.30000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('657', '541', '0.00', null, '0', 'C1', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('658', '512', '0.00', null, '0', 'C3', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('659', '513', '0.00', null, '0', 'C3', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('66', '22', '0.00', 'Y1', '360', 'R4', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('660', '514', '0.00', null, '0', 'C3', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('661', '515', '0.00', null, '0', 'C3', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('662', '516', '0.00', null, '0', 'C3', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('663', '517', '0.00', null, '0', 'C3', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('664', '518', '0.00', null, '0', 'C3', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('665', '519', '0.00', null, '0', 'C3', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('666', '520', '0.00', null, '0', 'C3', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('667', '610', '0.00', null, '0', null, null, null, null, '0.30000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('668', '522', '0.00', null, '0', 'C5', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('669', '629', '0.00', null, '0', 'G1', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('67', '22', '0.00', 'Y2', '720', 'R5', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('670', '523', '0.00', null, '0', 'C5', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('671', '524', '0.00', null, '0', 'C5', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('672', '525', '0.00', null, '0', 'C5', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('673', '526', '0.00', null, '0', 'C5', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('674', '527', '0.00', null, '0', 'C5', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('675', '528', '0.00', null, '0', 'C5', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('676', '529', '0.00', null, '0', 'C5', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('677', '530', '0.00', null, '0', 'C5', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('678', '611', '0.00', null, '0', null, null, null, null, '0.30000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('679', '630', '0.00', null, '0', 'G1', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('68', '23', '0.00', 'M1', '30', 'R7', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('680', '541', '0.00', null, '0', 'C3', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('681', '584', '0.00', null, '0', 'G1', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('682', '585', '0.00', null, '0', 'G2', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('683', '541', '0.00', null, '0', 'C5', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('684', '532', '0.00', null, '0', null, null, null, null, '3.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('685', '533', '0.00', null, '0', null, null, null, null, '3.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('686', '534', '0.00', null, '0', null, null, null, null, '3.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('687', '535', '0.00', null, '0', null, null, null, null, '3.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('688', '536', '0.00', null, '0', null, null, null, null, '3.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('689', '612', '0.00', null, '0', null, null, null, null, '3.00000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('69', '23', '0.00', 'M3', '90', 'R2', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('690', '537', '0.00', null, '0', null, null, null, null, '3.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('691', '538', '0.00', null, '0', null, null, null, null, '3.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('692', '539', '0.00', null, '0', null, null, null, null, '3.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('693', '542', '0.00', null, '0', null, null, null, null, '3.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('694', '543', '0.00', null, '0', null, null, null, null, '3.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('695', '544', '0.00', null, '0', null, null, null, null, '3.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('696', '545', '0.00', null, '0', null, null, null, null, '3.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('697', '546', '0.00', null, '0', null, null, null, null, '3.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('698', '547', '0.00', null, '0', null, null, null, null, '3.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('699', '548', '0.00', null, '0', null, null, null, null, '3.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('7', '119', '0.00', null, '0', null, null, null, null, '0.10000000', '0.00050000', '5.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('70', '23', '0.00', 'M6', '180', 'R3', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('700', '613', '0.00', null, '0', null, null, null, null, '3.00000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('701', '549', '0.00', null, '0', null, null, null, null, '3.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('702', '550', '0.00', null, '0', null, null, null, null, '3.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('703', '540', '0.00', null, '0', null, null, null, null, '3.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('704', '627', '0.00', 'D0', '0', 'R1', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('705', '627', '0.00', 'D7', '7', 'R2', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('706', '627', '0.00', 'M3', '90', 'R2', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('707', '627', '0.00', 'M6', '180', 'R3', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('708', '627', '0.00', 'Y1', '360', 'R4', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('709', '627', '0.00', 'Y2', '720', 'R5', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('71', '23', '0.00', 'Y1', '360', 'R4', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('710', '596', '0.00', null, '0', null, null, null, null, '0.30000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('711', '623', '0.00', null, '0', null, null, null, null, '2.00000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('712', '627', '0.00', 'Y3', '1080', 'R6', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('713', '627', '0.00', 'Y5', '1800', null, null, null, null, '4.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('714', '633', '500000.00', 'M6', '180', null, null, null, null, '2.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('715', '573', '0.00', 'Y1', '360', 'R4', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('716', '561', '0.00', 'D0', '0', 'R1', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('717', '561', '0.00', 'M3', '90', 'R2', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('718', '561', '0.00', 'M6', '180', 'R3', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('719', '561', '0.00', 'Y1', '360', 'R4', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('72', '23', '0.00', 'Y2', '720', 'R5', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('720', '561', '0.00', 'Y2', '720', 'R5', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('721', '561', '0.00', 'Y3', '1080', 'R6', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('722', '551', '0.00', null, null, 'R1', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('723', '561', '0.00', 'Y5', '1800', null, null, null, null, '3.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('724', '561', '500000.00', 'Y5', '1800', null, null, null, null, '3.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('725', '552', '0.00', null, null, 'R1', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('726', '573', '0.00', 'D0', '0', 'R1', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('727', '553', '0.00', null, null, 'R1', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('728', '554', '0.00', null, null, 'R1', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('729', '555', '0.00', null, null, 'R1', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('73', '25', '0.00', 'M1', '30', 'R7', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('730', '556', '0.00', null, null, 'R1', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('731', '573', '0.00', 'M3', '90', 'R2', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('732', '573', '0.00', 'M6', '180', 'R3', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('733', '557', '0.00', null, null, 'R1', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('734', '558', '0.00', null, null, 'R1', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('735', '560', '0.00', null, null, 'R1', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('736', '597', '0.00', null, '0', null, null, null, null, '0.30000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('737', '562', '0.00', 'M3', '90', 'R2', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('738', '562', '0.00', 'M6', '180', 'R3', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('739', '562', '0.00', 'Y1', '360', 'R4', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('74', '25', '0.00', 'M3', '90', 'R2', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('740', '562', '0.00', 'Y2', '720', 'R5', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('741', '562', '0.00', 'Y3', '1080', 'R6', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('742', '562', '0.00', 'Y5', '1800', null, null, null, null, '3.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('743', '562', '500000.00', 'Y5', '1800', null, null, null, null, '4.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('744', '562', '0.00', 'D0', '0', 'R1', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('745', '563', '0.00', 'M1', '30', 'R7', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('746', '563', '0.00', 'M3', '90', 'R2', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('747', '598', '0.00', null, '0', null, null, null, null, '0.30000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('748', '563', '0.00', 'M6', '180', 'R3', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('749', '563', '0.00', 'Y1', '360', 'R4', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('75', '25', '0.00', 'M6', '180', 'R3', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('750', '563', '0.00', 'Y2', '720', 'R5', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('751', '564', '0.00', 'M1', '30', 'R7', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('752', '564', '0.00', 'M3', '90', 'R2', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('753', '564', '0.00', 'M6', '180', 'R3', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('754', '564', '0.00', 'Y1', '360', 'R4', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('755', '564', '0.00', 'Y2', '720', 'R5', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('756', '565', '0.00', 'M1', '30', 'R7', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('757', '565', '0.00', 'M3', '90', 'R2', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('758', '599', '0.00', null, '0', null, null, null, null, '0.30000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('759', '565', '0.00', 'M6', '180', 'R3', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('76', '25', '0.00', 'Y1', '360', 'R4', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('760', '565', '0.00', 'Y1', '360', 'R4', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('761', '565', '0.00', 'Y2', '720', 'R5', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('762', '566', '0.00', 'M1', '30', 'R7', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('763', '566', '0.00', 'M3', '90', 'R2', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('764', '566', '0.00', 'M6', '180', 'R3', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('765', '566', '0.00', 'Y1', '360', 'R4', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('766', '566', '0.00', 'Y2', '720', 'R5', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('767', '567', '0.00', 'M1', '30', 'R7', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('768', '567', '0.00', 'M3', '90', 'R2', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('769', '600', '0.00', null, '0', null, null, null, null, '0.30000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('77', '25', '0.00', 'Y2', '720', 'R5', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('770', '567', '0.00', 'M6', '180', 'R3', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('771', '567', '0.00', 'Y1', '360', 'R4', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('772', '567', '0.00', 'Y2', '720', 'R5', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('773', '568', '0.00', 'M1', '30', 'R7', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('774', '568', '0.00', 'M3', '90', 'R2', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('775', '568', '0.00', 'M6', '180', 'R3', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('776', '568', '0.00', 'Y1', '360', 'R4', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('777', '568', '0.00', 'Y2', '720', 'R5', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('778', '569', '0.00', 'M1', '30', 'R7', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('779', '569', '0.00', 'M3', '90', 'R2', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('78', '27', '0.00', 'Y5', '1800', 'Q3', null, null, '20.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('780', '601', '0.00', null, '0', null, null, null, null, '0.30000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('781', '569', '0.00', 'M6', '180', 'R3', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('782', '569', '0.00', 'Y1', '360', 'R4', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('783', '569', '0.00', 'Y2', '720', 'R5', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('784', '571', '0.00', 'M1', '30', 'R7', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('785', '571', '0.00', 'M3', '90', 'R2', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('786', '571', '0.00', 'M6', '180', 'R3', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('787', '571', '0.00', 'Y1', '360', 'R4', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('788', '571', '0.00', 'Y2', '720', 'R5', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('789', '634', '0.00', 'Y5', '1800', 'Q3', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('79', '26', '0.00', 'D0', '0', null, null, null, null, null, null, null, 'HQI', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('790', '572', '0.00', 'D0', '0', null, null, null, null, null, null, null, 'HQI', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('791', '602', '0.00', null, '0', null, null, null, null, '0.30000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('792', '572', '0.00', 'M3', '90', null, null, null, '20.00', null, null, null, 'DR2', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('793', '634', '0.00', 'Y1', '360', 'Q1', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('794', '634', '0.00', 'Y3', '1080', 'Q2', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('795', '635', '0.00', 'Y1', '360', null, null, null, null, '3.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('796', '635', '0.00', 'Y3', '1080', null, null, null, null, '3.00000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('797', '636', '0.00', 'Y1', '360', 'X1', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('798', '636', '0.00', 'Y3', '1080', 'X2', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('799', '574', '0.00', 'D1', '1', 'T1', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('8', '120', '0.00', null, '0', null, null, null, null, '0.26250000', '0.00050000', '5.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('80', '26', '0.00', 'M3', '90', null, null, null, '60.00', null, null, null, 'DR2', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('800', '575', '0.00', 'D7', '7', 'T7', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('801', '586', '0.00', null, null, null, null, null, null, '0.30000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('802', '603', '0.00', null, '0', null, null, null, null, '0.30000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('803', '628', '0.00', null, null, 'XD', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('804', '576', '0.00', null, null, 'T7', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('805', '577', '0.00', null, null, 'T7', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('806', '578', '0.00', null, null, 'T7', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('807', '579', '0.00', null, null, 'T7', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('808', '580', '0.00', null, null, 'T7', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('809', '581', '0.00', null, null, 'T7', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('81', '27', '0.00', 'Y1', '360', 'Q1', null, null, '20.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('810', '582', '0.00', null, null, 'T7', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('811', '583', '0.00', null, null, 'T7', null, null, null, null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('812', '637', '0.00', 'D0', '0', 'R1', null, null, '20.00', null, null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('813', '614', '0.00', null, '0', null, null, null, null, '0.30000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('814', '615', '0.00', null, '0', null, null, null, null, '0.30000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('815', '616', '0.00', null, '0', null, null, null, null, '0.30000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('816', '617', '0.00', null, '0', null, null, null, null, '0.30000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('817', '618', '0.00', null, '0', null, null, null, null, '0.30000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('818', '619', '0.00', null, '0', null, null, null, null, '0.30000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('819', '620', '0.00', null, '0', null, null, null, null, '0.30000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('82', '27', '0.00', 'Y3', '1080', 'Q2', null, null, '20.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('820', '621', '0.00', null, '0', null, null, null, null, '0.30000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('821', '622', '0.00', null, '0', null, null, null, null, '0.30000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('822', '624', '0.00', null, '0', null, null, null, null, '0.30000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('823', '625', '0.00', null, '0', null, null, null, null, '0.30000000', '0.01000000', '5.00000000', null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('824', '638', '500000.00', null, null, null, null, null, null, '5.61000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('825', '638', '100000.00', null, null, null, null, null, null, '4.61000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('826', '638', '0.00', null, null, null, null, null, null, '3.20000000', null, null, null, null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('83', '28', '0.00', 'Y1', '360', null, null, null, null, '2.82000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('84', '28', '0.00', 'Y3', '1080', null, null, null, null, '3.06000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('85', '29', '0.00', 'Y1', '360', 'X1', null, null, '20.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('86', '29', '0.00', 'Y3', '1080', 'X2', null, null, '20.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('87', '31', '0.00', 'D1', '1', 'T1', null, null, '20.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('88', '32', '0.00', 'D7', '7', 'T7', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('89', '33', '0.00', null, null, null, null, null, null, '5.50000000', null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('9', '121', '0.00', null, '0', null, null, null, null, '0.05000000', '0.00050000', '5.00000000', null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('90', '34', '0.00', null, null, 'XD', null, null, '20.00', null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('91', '62', '0.00', null, null, 'T7', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('92', '63', '0.00', null, null, 'T7', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('93', '64', '0.00', null, null, 'T7', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('94', '65', '0.00', null, null, 'T7', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('95', '66', '0.00', null, null, 'T7', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('96', '67', '0.00', null, null, 'T7', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('97', '68', '0.00', null, null, 'T7', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('98', '69', '0.00', null, null, 'T7', null, null, null, null, null, null, null, null, 'DCITS', null, null);
INSERT INTO `IRL_INT_MATRIX` VALUES ('99', '73', '0.00', 'D0', '0', 'R1', null, null, '30.00', null, null, null, null, null, 'DCITS', null, null);

-- ----------------------------
-- Table structure for IRL_INT_RATE
-- ----------------------------
DROP TABLE IF EXISTS `IRL_INT_RATE`;
CREATE TABLE `IRL_INT_RATE` (
                              `IRL_SEQ_NO` varchar(50) NOT NULL COMMENT '序号',
                              `INT_TYPE` varchar(3) NOT NULL COMMENT '利率类型',
                              `CCY` varchar(3) NOT NULL COMMENT '币种',
                              `EFFECT_DATE` varchar(8) NOT NULL COMMENT '生效日期',
                              `END_DATE` varchar(8) DEFAULT NULL COMMENT '失效日期 ',
                              `YEAR_BASIS` varchar(3) NOT NULL COMMENT '年基准天数',
                              `BRANCH` varchar(20) NOT NULL COMMENT '机构代码',
                              `LAST_CHG_RUN_DATE` varchar(8) DEFAULT NULL COMMENT '最后修改日期',
                              `COMPANY` varchar(20) DEFAULT NULL COMMENT '法人代码',
                              `TRAN_TIMESTAMP` varchar(17) DEFAULT NULL COMMENT '交易时间戳',
                              `TRAN_TIME` decimal(11,0) DEFAULT NULL COMMENT '交易时间',
                              PRIMARY KEY (`IRL_SEQ_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='利率税率信息表 undefined';

-- ----------------------------
-- Records of IRL_INT_RATE
-- ----------------------------
INSERT INTO `IRL_INT_RATE` VALUES ('1', 'C1', 'CNY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('10', 'HQI', 'CAD', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('100', 'XY1', 'CHF', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('101', 'XY1', 'EUR', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('102', 'XY1', 'GBP', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('103', 'XY1', 'HKD', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('104', 'XY1', 'JPY', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('105', 'FXC', 'USD', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('106', 'FT1', 'CNY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('107', 'DHT', 'CNY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('108', 'DZ1', 'CNY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('109', 'DR2', 'CNY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('11', 'HQI', 'CHF', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('113', 'BAM', 'CNY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('114', 'BAM', 'CHF', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('115', 'BAM', 'EUR', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('116', 'BAM', 'GBP', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('117', 'BAM', 'HKD', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('118', 'BAM', 'JPY', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('119', 'BAM', 'USD', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('12', 'HQI', 'GBP', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('120', 'BAM', 'AUD', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('121', 'BAM', 'CAD', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('122', 'BAN', 'CHF', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('123', 'BAN', 'EUR', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('124', 'BAN', 'GBP', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('125', 'BAN', 'HKD', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('126', 'BAN', 'JPY', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('127', 'BAN', 'USD', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('128', 'BAN', 'AUD', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('129', 'BAN', 'CAD', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('13', 'HQI', 'JPY', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('130', 'BAN', 'CNY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('131', 'DR1', 'CNY', '19800101', '20151023', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('14', 'HQI', 'SGD', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('145', 'XFK', 'CNY', '20150101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('146', 'XFC', 'CNY', '20150101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('15', 'HQI', 'USD', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('158', 'COM', 'AUD', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('159', 'COM', 'CAD', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('16', 'DR1', 'CNY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('160', 'COM', 'CHF', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('161', 'COM', 'EUR', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('162', 'COM', 'GBP', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('163', 'COM', 'HKD', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('164', 'COM', 'JPY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('165', 'COM', 'SGD', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('166', 'COM', 'USD', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('167', 'CON', 'USD', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('168', 'CON', 'HKD', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('17', 'DR1', 'EUR', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('18', 'DR1', 'HKD', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('186', 'RJ1', 'CNY', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('19', 'DR1', 'AUD', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('2', 'C3', 'CNY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('20', 'DR1', 'CAD', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('201', 'HNR', 'CNY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('202', 'HNC', 'CNY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('21', 'DR1', 'CHF', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('22', 'DR1', 'GBP', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('23', 'DR1', 'JPY', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('24', 'DR1', 'SGD', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('25', 'DR1', 'USD', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('26', 'DHL', 'CNY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('27', 'LCZ', 'CNY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('28', 'JYC', 'CNY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('29', 'CBQ', 'CNY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('3', 'C5', 'CNY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('31', 'TZ1', 'CNY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('32', 'TZ7', 'CNY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('33', 'XY1', 'CNY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('34', 'XD1', 'CNY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('35', 'C1', 'EUR', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('36', 'C1', 'HKD', '20151024', '29990101', '365', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('37', 'C1', 'AUD', '20151024', '29990101', '365', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('38', 'C1', 'CAD', '20151024', '29990101', '365', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('39', 'C1', 'CHF', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('4', 'FXC', 'CNY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('40', 'C1', 'GBP', '20151024', '29990101', '365', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('41', 'C1', 'JPY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('42', 'C1', 'SGD', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('43', 'C1', 'USD', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('44', 'C3', 'EUR', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('45', 'C3', 'HKD', '20151024', '29990101', '365', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('46', 'C3', 'AUD', '20151024', '29990101', '365', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('47', 'C3', 'CAD', '20151024', '29990101', '365', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('48', 'C3', 'CHF', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('49', 'C3', 'GBP', '20151024', '29990101', '365', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('5', 'FLC', 'CNY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('50', 'C3', 'JPY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('501', 'C1', 'CNY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('502', 'C1', 'EUR', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('503', 'C1', 'HKD', '20151024', '29990101', '365', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('504', 'C1', 'AUD', '20151024', '29990101', '365', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('505', 'C1', 'CAD', '20151024', '29990101', '365', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('506', 'C1', 'CHF', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('507', 'C1', 'GBP', '20151024', '29990101', '365', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('508', 'C1', 'JPY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('509', 'C1', 'SGD', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('51', 'C3', 'SGD', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('510', 'C1', 'USD', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('511', 'C3', 'CNY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('512', 'C3', 'EUR', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('513', 'C3', 'HKD', '20151024', '29990101', '365', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('514', 'C3', 'AUD', '20151024', '29990101', '365', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('515', 'C3', 'CAD', '20151024', '29990101', '365', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('516', 'C3', 'CHF', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('517', 'C3', 'GBP', '20151024', '29990101', '365', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('518', 'C3', 'JPY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('519', 'C3', 'SGD', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('52', 'C3', 'USD', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('520', 'C3', 'USD', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('521', 'C5', 'CNY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('522', 'C5', 'EUR', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('523', 'C5', 'HKD', '20151024', '29990101', '365', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('524', 'C5', 'AUD', '20151024', '29990101', '365', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('525', 'C5', 'CAD', '20151024', '29990101', '365', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('526', 'C5', 'CHF', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('527', 'C5', 'GBP', '20151024', '29990101', '365', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('528', 'C5', 'JPY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('529', 'C5', 'SGD', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('53', 'C5', 'EUR', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('530', 'C5', 'USD', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('531', 'FXC', 'CNY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('532', 'FXC', 'EUR', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('533', 'FXC', 'HKD', '20151024', '29990101', '365', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('534', 'FXC', 'AUD', '20151024', '29990101', '365', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('535', 'FXC', 'CAD', '20151024', '29990101', '365', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('536', 'FXC', 'CHF', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('537', 'FXC', 'GBP', '20151024', '29990101', '365', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('538', 'FXC', 'JPY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('539', 'FXC', 'SGD', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('54', 'C5', 'HKD', '20151024', '29990101', '365', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('540', 'FXC', 'USD', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('541', 'FLC', 'CNY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('542', 'FLC', 'USD', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('543', 'FLC', 'EUR', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('544', 'FLC', 'HKD', '20151024', '29990101', '365', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('545', 'FLC', 'AUD', '20151024', '29990101', '365', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('546', 'FLC', 'CAD', '20151024', '29990101', '365', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('547', 'FLC', 'CHF', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('548', 'FLC', 'GBP', '20151024', '29990101', '365', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('549', 'FLC', 'JPY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('55', 'C5', 'AUD', '20151024', '29990101', '365', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('550', 'FLC', 'SGD', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('551', 'HQI', 'CNY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('552', 'HQI', 'EUR', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('553', 'HQI', 'HKD', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('554', 'HQI', 'AUD', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('555', 'HQI', 'CAD', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('556', 'HQI', 'CHF', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('557', 'HQI', 'GBP', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('558', 'HQI', 'JPY', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('559', 'HQI', 'SGD', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('56', 'C5', 'CAD', '20151024', '29990101', '365', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('560', 'HQI', 'USD', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('561', 'DR1', 'CNY', '19800101', '20151023', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('562', 'DR1', 'CNY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('563', 'DR1', 'EUR', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('564', 'DR1', 'HKD', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('565', 'DR1', 'AUD', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('566', 'DR1', 'CAD', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('567', 'DR1', 'CHF', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('568', 'DR1', 'GBP', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('569', 'DR1', 'JPY', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('57', 'C5', 'CHF', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('570', 'DR1', 'SGD', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('571', 'DR1', 'USD', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('572', 'DHL', 'CNY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('573', 'DR2', 'CNY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('574', 'TZ1', 'CNY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('575', 'TZ7', 'CNY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('576', 'TZ7', 'EUR', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('577', 'TZ7', 'HKD', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('578', 'TZ7', 'AUD', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('579', 'TZ7', 'CAD', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('58', 'C5', 'GBP', '20151024', '29990101', '365', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('580', 'TZ7', 'CHF', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('581', 'TZ7', 'GBP', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('582', 'TZ7', 'JPY', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('583', 'TZ7', 'USD', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('584', 'G1', 'CNY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('585', 'G2', 'CNY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('586', 'XY1', 'CNY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('587', 'XY1', 'USD', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('588', 'XY1', 'AUD', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('589', 'XY1', 'CAD', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('59', 'C5', 'JPY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('590', 'XY1', 'CHF', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('591', 'XY1', 'EUR', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('592', 'XY1', 'GBP', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('593', 'XY1', 'HKD', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('594', 'XY1', 'JPY', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('595', 'BAM', 'CNY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('596', 'BAM', 'CHF', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('597', 'BAM', 'EUR', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('598', 'BAM', 'GBP', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('599', 'BAM', 'HKD', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('6', 'HQI', 'CNY', '20151024', '29990101', '360', '9999', null, null, '20180209135453', '1518155693');
INSERT INTO `IRL_INT_RATE` VALUES ('60', 'C5', 'SGD', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('600', 'BAM', 'JPY', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('601', 'BAM', 'USD', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('602', 'BAM', 'AUD', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('603', 'BAM', 'CAD', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('604', 'BAN', 'CHF', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('605', 'BAN', 'EUR', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('606', 'BAN', 'GBP', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('607', 'BAN', 'HKD', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('608', 'BAN', 'JPY', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('609', 'BAN', 'USD', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('61', 'C5', 'USD', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('610', 'BAN', 'AUD', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('611', 'BAN', 'CAD', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('612', 'BAN', 'CNY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('613', 'COM', 'CNY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('614', 'COM', 'AUD', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('615', 'COM', 'CAD', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('616', 'COM', 'CHF', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('617', 'COM', 'EUR', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('618', 'COM', 'GBP', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('619', 'COM', 'HKD', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('62', 'TZ7', 'EUR', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('620', 'COM', 'JPY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('621', 'COM', 'SGD', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('622', 'COM', 'USD', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('623', 'CON', 'CNY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('624', 'CON', 'USD', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('625', 'CON', 'HKD', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('626', 'XFK', 'CNY', '20150101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('627', 'XFC', 'CNY', '20150101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('628', 'XD1', 'CNY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('629', 'FXG', 'CNY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('63', 'TZ7', 'HKD', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('630', 'FLG', 'CNY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('631', 'FT1', 'CNY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('632', 'DHT', 'CNY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('633', 'DZ1', 'CNY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('634', 'LCZ', 'CNY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('635', 'JYC', 'CNY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('636', 'CBQ', 'CNY', '20151024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('637', 'ZNA', 'CNY', '20101024', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('638', 'RJ1', 'CNY', '19800101', '29990101', '360', '6000', null, 'DCBANK', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('64', 'TZ7', 'AUD', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('65', 'TZ7', 'CAD', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('66', 'TZ7', 'CHF', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('67', 'TZ7', 'GBP', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('68', 'TZ7', 'JPY', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('69', 'TZ7', 'USD', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('7', 'HQI', 'EUR', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('71', 'COM', 'CNY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('72', 'CON', 'CNY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('73', 'ZNA', 'CNY', '20101024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('75', 'FXC', 'EUR', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('76', 'FXC', 'HKD', '20151024', '29990101', '365', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('77', 'FXC', 'AUD', '20151024', '29990101', '365', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('78', 'FXC', 'CAD', '20151024', '29990101', '365', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('79', 'FXC', 'CHF', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('8', 'HQI', 'HKD', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('80', 'FXC', 'GBP', '20151024', '29990101', '365', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('81', 'FXC', 'JPY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('82', 'FXC', 'SGD', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('83', 'FLC', 'USD', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('84', 'FLC', 'EUR', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('85', 'FLC', 'HKD', '20151024', '29990101', '365', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('86', 'FLC', 'AUD', '20151024', '29990101', '365', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('87', 'FLC', 'CAD', '20151024', '29990101', '365', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('88', 'FLC', 'CHF', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('89', 'FLC', 'GBP', '20151024', '29990101', '365', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('9', 'HQI', 'AUD', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('90', 'FLC', 'JPY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('91', 'FLC', 'SGD', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('92', 'FLC', 'USD', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('93', 'G1', 'CNY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('94', 'G2', 'CNY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('95', 'FXG', 'CNY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('96', 'FLG', 'CNY', '20151024', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('97', 'XY1', 'USD', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('98', 'XY1', 'AUD', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);
INSERT INTO `IRL_INT_RATE` VALUES ('99', 'XY1', 'CAD', '19800101', '29990101', '360', '9999', null, 'DCITS', null, null);

-- ----------------------------
-- Table structure for IRL_INT_TYPE
-- ----------------------------
DROP TABLE IF EXISTS `IRL_INT_TYPE`;
CREATE TABLE `IRL_INT_TYPE` (
                              `INT_TAX_TYPE` varchar(3) NOT NULL COMMENT '利率税率类型',
                              `INT_TAX_TYPE_DESC` varchar(50) NOT NULL COMMENT '利率税率类型描述',
                              `PROD_GRP` varchar(20) NOT NULL COMMENT '产品组',
                              `RATE_LADDER` varchar(1) NOT NULL COMMENT '利息计算模型',
                              `COMPANY` varchar(20) DEFAULT NULL COMMENT '法人代码',
                              `INT_TAX_FLAG` varchar(3) NOT NULL COMMENT '利率类型税率类型标志 ',
                              `TAX_LADDER` varchar(1) DEFAULT NULL COMMENT '税率计算模型',
                              `TRAN_TIMESTAMP` varchar(17) DEFAULT NULL COMMENT '交易时间戳',
                              `TRAN_TIME` decimal(11,0) DEFAULT NULL COMMENT '交易时间',
                              PRIMARY KEY (`INT_TAX_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='利率税率类型表 undefined';

-- ----------------------------
-- Records of IRL_INT_TYPE
-- ----------------------------
INSERT INTO `IRL_INT_TYPE` VALUES ('BAM', '存放同业定期利率', 'GL', 'F', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('BAN', '存放同业活期利率', 'GL', 'F', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('C1', '中长期贷款1年以上', 'CL', 'F', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('C3', '中长期贷款3年以上', 'CL', 'F', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('C5', '中长期贷款5年以上', 'CL', 'F', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('CBQ', '存本取息(基准利率挂钩)', 'RB', 'M', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('COM', '存放央行超额准备金利率', 'GL', 'F', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('CON', '存放央行法定准备金利率', 'GL', 'F', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('DHL', '定活两便', 'RB', 'H', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('DHT', '定活通整整利率', 'RB', 'M', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('DR1', '整存整取(基准利率挂钩)', 'RB', 'M', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('DR2', '整存整取（定活两便专用）', 'RB', 'M', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('DZ1', '单位智能存款利率1', 'RB', 'M', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('FLC', '复利利率', 'CL', 'F', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('FLG', '公积金复利利率', 'CL', 'F', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('FT1', '法透利率', 'CL', 'M', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('FXC', '罚息利率', 'CL', 'F', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('FXG', '公积金罚息利率', 'CL', 'F', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('G1', '公积金贷款5年以内', 'CL', 'F', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('G2', '公积金贷款5年以上', 'CL', 'F', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('HNC', '行内拆出', 'MM', 'M', null, 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('HNR', '行内拆入', 'MM', 'M', null, 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('HQI', '活期存款(基准利率挂钩)', 'RB', 'F', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('JYC', '教育储蓄', 'RB', 'M', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('LCZ', '零存整取(基准利率挂钩)', 'RB', 'M', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('RJ1', '日均余额利率', 'RB', 'T', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('TZ1', '通知存款(1天)(基准利率挂钩)', 'ALL', 'F', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('TZ7', '通知存款(7天)(基准利率挂钩)', 'ALL', 'F', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('XD1', '协定存款利率', 'RB', 'F', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('XFC', '幸福存款利率', 'RB', 'M', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('XFK', '幸福存款靠档利率', 'RB', 'M', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('XY1', '协议存款利率', 'RB', 'F', 'DCITS', 'INT', null, null, null);
INSERT INTO `IRL_INT_TYPE` VALUES ('ZNA', '智能存款A利率', 'RB', 'M', 'DCITS', 'INT', null, null, null);

-- ----------------------------
-- Table structure for IRL_PERI_SPLIT
-- ----------------------------
DROP TABLE IF EXISTS `IRL_PERI_SPLIT`;
CREATE TABLE `IRL_PERI_SPLIT` (
                                `PERI_SPLIT_ID` varchar(10) NOT NULL COMMENT '周期分段ID',
                                `PERI_SEQ_NO` varchar(5) NOT NULL COMMENT '序号',
                                `PERIOD` varchar(50) DEFAULT NULL COMMENT '分段周期',
                                `PERIOD_TYPE` varchar(1) DEFAULT NULL COMMENT '分段周期类型',
                                `PERI_SPLIT_MODE` varchar(1) DEFAULT NULL COMMENT '分段模式  ',
                                `RECAL_DAYS` varchar(5) DEFAULT NULL COMMENT '重算天数',
                                `RECAL_METHOD` varchar(1) DEFAULT NULL COMMENT '重算过去利息',
                                `INT_TYPE` varchar(3) DEFAULT NULL COMMENT '利率类型',
                                `AMT_SPLIT_ID` varchar(10) DEFAULT NULL COMMENT '金额分段ID',
                                `RULE_ID` varchar(500) DEFAULT NULL COMMENT '规则ID',
                                `TRAN_TIMESTAMP` varchar(17) DEFAULT NULL COMMENT '交易时间戳',
                                `TRAN_TIME` decimal(11,0) DEFAULT NULL COMMENT '交易时间',
                                PRIMARY KEY (`PERI_SPLIT_ID`,`PERI_SEQ_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='周期分段参数表 undefined';

-- ----------------------------
-- Records of IRL_PERI_SPLIT
-- ----------------------------
INSERT INTO `IRL_PERI_SPLIT` VALUES ('PBAM', '1', '0', 'D', 'Q', null, null, null, 'ABAM', null, null, null);
INSERT INTO `IRL_PERI_SPLIT` VALUES ('PBAN', '1', '0', 'D', 'Q', null, null, null, 'ABAN', null, null, null);
INSERT INTO `IRL_PERI_SPLIT` VALUES ('PC1', '1', '0', 'D', 'Q', null, null, null, 'AC1', null, null, null);
INSERT INTO `IRL_PERI_SPLIT` VALUES ('PC3', '1', '0', 'D', 'Q', null, null, null, 'AC3', null, null, null);
INSERT INTO `IRL_PERI_SPLIT` VALUES ('PC5', '1', '0', 'D', 'Q', null, null, null, 'AC5', null, null, null);
INSERT INTO `IRL_PERI_SPLIT` VALUES ('PC7', '1', '0', 'D', 'Q', null, null, null, 'AC7', null, null, null);
INSERT INTO `IRL_PERI_SPLIT` VALUES ('PCBQ', '1', '0', 'D', 'Q', null, null, null, 'ACBQ', null, null, null);
INSERT INTO `IRL_PERI_SPLIT` VALUES ('PCOM', '1', '0', 'D', 'Q', null, null, null, 'ACOM', null, null, null);
INSERT INTO `IRL_PERI_SPLIT` VALUES ('PCON', '1', '0', 'D', 'Q', null, null, null, 'ACON', null, null, null);
INSERT INTO `IRL_PERI_SPLIT` VALUES ('PDHL', '1', '0', 'D', 'Q', null, null, null, 'ADHL', null, null, null);
INSERT INTO `IRL_PERI_SPLIT` VALUES ('PDHT', '1', '0', 'D', 'Q', null, null, null, 'ADHT', null, null, null);
INSERT INTO `IRL_PERI_SPLIT` VALUES ('PDR1', '1', '0', 'D', 'Q', null, null, null, 'ADR1', null, null, null);
INSERT INTO `IRL_PERI_SPLIT` VALUES ('PDZ1', '1', '0', 'D', 'Q', null, null, null, 'ADZ1', null, null, null);
INSERT INTO `IRL_PERI_SPLIT` VALUES ('PFLC', '1', '0', 'D', 'Q', null, null, null, 'AFLC', null, null, null);
INSERT INTO `IRL_PERI_SPLIT` VALUES ('PFXC', '1', '0', 'D', 'Q', null, null, null, 'AFXC', null, null, null);
INSERT INTO `IRL_PERI_SPLIT` VALUES ('PHQI', '1', '0', 'D', 'Q', null, null, null, 'AHQI', null, null, null);
INSERT INTO `IRL_PERI_SPLIT` VALUES ('PJYC', '1', '0', 'D', 'Q', null, null, null, 'AJYC', null, null, null);
INSERT INTO `IRL_PERI_SPLIT` VALUES ('PLCZ', '1', '0', 'D', 'Q', null, null, null, 'ALCZ', null, null, null);
INSERT INTO `IRL_PERI_SPLIT` VALUES ('PRJ1', '1', '0', 'D', 'Q', null, null, null, 'ARJ1', null, null, null);
INSERT INTO `IRL_PERI_SPLIT` VALUES ('PRJ2', '1', '0', 'D', 'Q', null, null, null, 'ARJ2', null, null, null);
INSERT INTO `IRL_PERI_SPLIT` VALUES ('PRJ3', '1', '0', 'D', 'Q', null, null, null, 'ARJ3', null, null, null);
INSERT INTO `IRL_PERI_SPLIT` VALUES ('PTZ1', '1', '0', 'D', 'Q', null, null, null, 'ATZ1', null, null, null);
INSERT INTO `IRL_PERI_SPLIT` VALUES ('PTZ7', '1', '0', 'D', 'Q', null, null, null, 'ATZ7', null, null, null);
INSERT INTO `IRL_PERI_SPLIT` VALUES ('PXD1', '1', '0', 'D', 'Q', null, null, null, 'AXD1', null, null, null);
INSERT INTO `IRL_PERI_SPLIT` VALUES ('PXFC', '1', '0', 'D', 'Q', null, null, null, 'AXFC', null, null, null);
INSERT INTO `IRL_PERI_SPLIT` VALUES ('PXFK', '1', '0', 'D', 'Q', null, null, null, 'AXFK', null, null, null);
INSERT INTO `IRL_PERI_SPLIT` VALUES ('PXY1', '1', '0', 'D', 'Q', null, null, null, 'AXY1', null, null, null);
INSERT INTO `IRL_PERI_SPLIT` VALUES ('PZNA', '1', '0', 'D', 'Q', null, null, null, 'AZNA', null, null, null);

-- ----------------------------
-- Table structure for IRL_PROD_INT
-- ----------------------------
DROP TABLE IF EXISTS `IRL_PROD_INT`;
CREATE TABLE `IRL_PROD_INT` (
                              `PROD_TYPE` varchar(50) NOT NULL COMMENT '产品类型 ',
                              `EVENT_TYPE` varchar(50) NOT NULL COMMENT '事件类型',
                              `INT_TYPE` varchar(3) DEFAULT NULL COMMENT '利率类型 ',
                              `INT_CLASS` varchar(20) NOT NULL COMMENT '利息分类',
                              `TAX_TYPE` varchar(3) DEFAULT NULL COMMENT '税率类型 ',
                              `RATE_AMT_ID` varchar(30) NOT NULL COMMENT '利率计算金额编码',
                              `INT_AMT_ID` varchar(30) NOT NULL COMMENT '利息计算金额编码',
                              `RECAL_METHOD` varchar(1) NOT NULL COMMENT '重算利息方法',
                              `COMPANY` varchar(20) DEFAULT NULL COMMENT '法人代码',
                              `INT_START` varchar(1) DEFAULT '0' COMMENT '计息起始日期取值方法 ',
                              `INT_DAYS_TYPE` varchar(1) DEFAULT NULL COMMENT '靠档天数计算方式 ',
                              `INT_CALC_BAL` varchar(3) DEFAULT NULL COMMENT '利息计算方法',
                              `INT_APPL_TYPE` varchar(1) DEFAULT NULL COMMENT '利率启用方式 ',
                              `ROLL_FREQ` varchar(2) DEFAULT NULL COMMENT '利率变更周期 ',
                              `ROLL_DAY` varchar(2) DEFAULT NULL COMMENT '利率变更日',
                              `MIN_RATE` decimal(15,8) DEFAULT NULL COMMENT '最小利率',
                              `MAX_RATE` decimal(15,8) DEFAULT NULL COMMENT '最大利率',
                              `INT_RATE_IND` varchar(1) DEFAULT NULL COMMENT '利率靠档标志',
                              `MONTH_BASIS` varchar(3) DEFAULT NULL COMMENT '月基准',
                              `GROUP_RULE_TYPE` varchar(2) NOT NULL DEFAULT '02' COMMENT '分组规则关系',
                              `SPLIT_ID` varchar(10) NOT NULL COMMENT '首个分段ID',
                              `SPLIT_TYPE` varchar(3) DEFAULT NULL COMMENT '分段类型',
                              `RULEID` varchar(50) NOT NULL COMMENT '规则ID',
                              `TRAN_TIMESTAMP` varchar(17) DEFAULT NULL COMMENT '交易时间戳',
                              `TRAN_TIME` decimal(11,0) DEFAULT NULL COMMENT '交易时间',
                              `ACCT_RATE_EFFECT` varchar(1) DEFAULT 'N' COMMENT '使用分户利率标志',
                              `ROUND_DOWN` varchar(1) DEFAULT NULL COMMENT '是否截位标志 Y-截位 N-不截位',
                              `INT_TYPE_DESC` varchar(10) DEFAULT NULL,
                              PRIMARY KEY (`PROD_TYPE`,`EVENT_TYPE`,`INT_CLASS`,`SPLIT_ID`,`RULEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品利率信息表 undefined';

-- ----------------------------
-- Records of IRL_PROD_INT
-- ----------------------------
INSERT INTO `IRL_PROD_INT` VALUES ('MM001', 'ACR', 'HNR', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, null, '02', 'PHNR', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('MM001', 'ACR', 'HQI', 'PDUE', null, '500', '500', 'N', null, 'M', 'B', 'AB', 'N', null, null, null, null, null, 'ACT', '02', 'PHQI', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('MM001', 'MRT', 'HNR', 'INT', null, '200', '200', 'I', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, null, '02', 'PHNR', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('MM001', 'OPEN', 'HNR', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, null, '02', 'PHNR', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('MM001', 'PRE', 'HQI', 'INT', null, '410', '504', 'N', null, 'O', 'B', 'AB', 'N', null, null, null, null, null, 'ACT', '02', 'PHQI', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('MM001', 'PSD', 'HQI', 'PDUE', null, '410', '504', 'I', null, 'M', 'B', 'AB', 'N', null, null, null, null, null, 'ACT', '02', 'PHQI', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('MM002', 'ACR', 'HNC', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, null, '02', 'PHNC', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('MM002', 'ACR', 'HQI', 'PDUE', null, '500', '500', 'N', null, 'M', 'B', 'AB', 'N', null, null, null, null, null, 'ACT', '02', 'PHQI', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('MM002', 'MRT', 'HNC', 'INT', null, '200', '200', 'I', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, null, '02', 'PHNC', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('MM002', 'OPEN', 'HNC', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, null, '02', 'PHNC', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('MM002', 'PRE', 'HQI', 'INT', null, '410', '504', 'N', null, 'O', 'B', 'AB', 'N', null, null, null, null, null, 'ACT', '02', 'PHQI', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('MM002', 'PSD', 'HQI', 'PDUE', null, '410', '504', 'I', null, 'M', 'B', 'AB', 'N', null, null, null, null, null, 'ACT', '02', 'PHQI', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB001', 'ACR', 'HQI', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', 'PHQI', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB001', 'CLOSE', 'HQI', 'INT', null, '200', '502', 'I', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', 'PHQI', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB001', 'OPEN', 'HQI', 'INT', null, '200', '502', 'N', null, 'O', 'B', 'AB', 'F', null, null, null, null, null, 'ACT', '02', 'PHQI', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB002', 'ACR', 'HQI', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'EB', 'A', null, null, null, null, null, 'ACT', '02', 'PHQI', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB002', 'CLOSE', 'HQI', 'INT', null, '200', '200', 'I', null, 'O', 'B', 'EB', 'A', null, null, null, null, null, 'ACT', '02', 'PHQI', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB002', 'OPEN', 'HQI', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'EB', 'A', null, null, null, null, null, 'ACT', '02', 'PHQI', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB003', 'ACR', 'DR1', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, '30', '02', 'PDR1', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB003', 'ACR', 'HQI', 'PDUE', null, '500', '500', 'N', null, 'M', 'B', 'AB', 'A', null, null, null, null, null, '30', '02', 'PHQI', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB003', 'MRT', 'DR1', 'INT', null, '200', '200', 'I', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, '30', '02', 'PDR1', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB003', 'OPEN', 'DR1', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'EB', 'F', null, null, null, null, null, '30', '02', 'PDR1', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB003', 'PRE', 'HQI', 'INT', null, '410', '504', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, '30', '02', 'PHQI', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB003', 'PSD', 'HQI', 'PDUE', null, '410', '504', 'I', null, 'M', 'B', 'AB', 'A', null, null, null, null, null, '30', '02', 'PHQI', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB004', 'ACR', 'LCZ', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'AB', 'N', null, null, null, null, null, 'ACT', '02', 'PLCZ', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB004', 'ACR', 'HQI', 'PDUE', null, '500', '500', 'N', null, 'M', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', 'PHQI', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB004', 'MRT', 'LCZ', 'INT', null, '200', '503', 'I', null, 'O', 'A', 'AB', 'N', null, null, null, null, null, 'ACT', '02', 'PLCZ', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB004', 'OPEN', 'LCZ', 'INT', null, '200', '503', 'N', null, 'O', 'A', 'AB', 'N', null, null, null, null, null, 'ACT', '02', 'PLCZ', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB004', 'PRE', 'HQI', 'INT', null, '410', '400', 'N', null, 'M', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', 'PHQI', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB005', 'ACR', 'TZ1', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', 'PTZ1', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB005', 'FAD', 'HQI', 'INT', null, '410', '504', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', 'PHQI', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB005', 'MRT', 'TZ1', 'INT', null, '410', '504', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', 'PTZ1', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB005', 'OPEN', 'TZ1', 'INT', null, '200', '502', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', 'PTZ1', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB006', 'ACR', 'DHL', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'BS', 'A', null, null, null, null, null, 'ACT', '02', 'PDHL', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB006', 'CLOSE', 'DHL', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'BS', 'A', null, null, null, null, null, 'ACT', '02', 'PDHL', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB006', 'OPEN', 'DHL', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'BS', 'A', null, null, null, null, null, 'ACT', '02', 'PDHL', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB008', 'ACR', 'DR1', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, 'ACT', '02', 'PDR1', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB008', 'ACR', 'HQI', 'PDUE', null, '500', '500', 'N', null, 'M', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', 'PHQI', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB008', 'MRT', 'DR1', 'INT', null, '200', '200', 'I', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, 'ACT', '02', 'PDR1', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB008', 'OPEN', 'DR1', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'EB', 'F', null, null, null, null, null, 'ACT', '02', 'PDR1', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB008', 'PRE', 'HQI', 'INT', null, '410', '504', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', 'PHQI', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB008', 'PSD', 'HQI', 'PDUE', null, '410', '504', 'I', null, 'M', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', 'PHQI', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB011', 'ACR', 'DR1', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, '30', '02', 'PDR1', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB011', 'MRT', 'DR1', 'INT', null, '200', '200', 'I', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, '30', '02', 'PDR1', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB011', 'OPEN', 'DR1', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'EB', 'F', null, null, null, null, null, '30', '02', 'PDR1', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB011', 'OPEN', 'HQI', 'INTPRE', null, '200', '502', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, '30', '02', 'PHQI', 'PA', 'NO', null, null, null, null, null);
INSERT INTO `IRL_PROD_INT` VALUES ('RB011', 'PRE', 'HQI', 'INT', null, '410', '504', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', 'PHQI', 'PA', 'NO', null, null, null, null, null);

