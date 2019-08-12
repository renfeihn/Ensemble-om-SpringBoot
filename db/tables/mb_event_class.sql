/*
Navicat MySQL Data Transfer

Source Server         : ensemble
Source Server Version : 50516
Source Host           : 127.0.0.1:3306
Source Database       : ensemble

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2018-09-19 14:27:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mb_event_class
-- ----------------------------
DROP TABLE IF EXISTS `mb_event_class`;
CREATE TABLE `mb_event_class` (
  `EVENT_CLASS` varchar(20) NOT NULL COMMENT '事件分类',
  `EVENT_CLASS_DESC` varchar(100) NOT NULL COMMENT '事件分类描述',
  `EVENT_CLASS_LEVEL` varchar(10) DEFAULT NULL COMMENT '事件分类层级 1：1级  2： 2级',
  `PARENT_EVENT_CLASS` varchar(20) DEFAULT NULL COMMENT '上级事件分类，取值于MB_EVENT_CLASS.EVENT_CLASS',
  PRIMARY KEY (`EVENT_CLASS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='事件分类定义表：描述产品工厂使用事件的分类';

-- ----------------------------
-- Records of mb_event_class
-- ----------------------------
INSERT INTO `mb_event_class` VALUES ('CL', '贷款类', '1', '0');
INSERT INTO `mb_event_class` VALUES ('CLOSE', '销户', '2', 'RB,CL,GL');
INSERT INTO `mb_event_class` VALUES ('CRET', '贷记', '2', 'GL');
INSERT INTO `mb_event_class` VALUES ('CYCLE', '结息', '2', 'RB,CL,GL');
INSERT INTO `mb_event_class` VALUES ('DEBT', '借记', '2', 'GL');
INSERT INTO `mb_event_class` VALUES ('DEP', '存入', '2', 'RB');
INSERT INTO `mb_event_class` VALUES ('DRW', '放款', '2', 'CL');
INSERT INTO `mb_event_class` VALUES ('DUE', '到期', '2', 'CL');
INSERT INTO `mb_event_class` VALUES ('GL', '内部账类', '1', '0');
INSERT INTO `mb_event_class` VALUES ('OPEN', '开户', '2', 'RB,CL,GL');
INSERT INTO `mb_event_class` VALUES ('RB', '存款类', '1', '0');
INSERT INTO `mb_event_class` VALUES ('REC', '回收', '2', 'CL');
INSERT INTO `mb_event_class` VALUES ('RENEW', '转存', '2', 'RB');
INSERT INTO `mb_event_class` VALUES ('WTD', '支取', '2', 'RB');
