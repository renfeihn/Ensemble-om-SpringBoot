/*
Navicat MySQL Data Transfer

Source Server         : ensemble
Source Server Version : 50516
Source Host           : 127.0.0.1:3306
Source Database       : ensemble

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2018-09-19 14:27:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mb_attr_class
-- ----------------------------
DROP TABLE IF EXISTS `mb_attr_class`;
CREATE TABLE `mb_attr_class` (
  `ATTR_CLASS` varchar(20) NOT NULL COMMENT '参数分类',
  `ATTR_CLASS_DESC` varchar(100) NOT NULL COMMENT '参数分类描述',
  `ATTR_CLASS_LEVEL` varchar(10) DEFAULT NULL COMMENT '参数分类层级 1：1级  2：2级',
  `PARENT_ATTR_CLASS` varchar(20) DEFAULT NULL COMMENT '上级参数分类 取值于MB_ATTR_CLASS.ATTR_CLASS',
  PRIMARY KEY (`ATTR_CLASS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='参数分类定义表：描述产品工厂中参数的分类及定义';

-- ----------------------------
-- Records of mb_attr_class
-- ----------------------------
INSERT INTO `mb_attr_class` VALUES ('ACCT', '账户信息', '1', null);
INSERT INTO `mb_attr_class` VALUES ('AGREEMENT', '协议信息', '1', null);
INSERT INTO `mb_attr_class` VALUES ('BALANCE', '余额信息', '1', null);
INSERT INTO `mb_attr_class` VALUES ('CLIENT', '客户信息', '1', null);
INSERT INTO `mb_attr_class` VALUES ('FREQUCY', '期限信息', '1', null);
INSERT INTO `mb_attr_class` VALUES ('MEDIA', '介质信息', '1', null);
INSERT INTO `mb_attr_class` VALUES ('PRICE', '定价信息', '1', null);
INSERT INTO `mb_attr_class` VALUES ('RISK', '风险信息', '1', null);
