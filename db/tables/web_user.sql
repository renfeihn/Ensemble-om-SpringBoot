/*
Navicat MySQL Data Transfer

Source Server         : ensemble
Source Server Version : 50516
Source Host           : 127.0.0.1:3306
Source Database       : ensemble

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2018-09-19 14:29:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for web_user
-- ----------------------------
DROP TABLE IF EXISTS `web_user`;
CREATE TABLE `web_user` (
  `USER_ID` varchar(20) NOT NULL COMMENT '用户ID',
  `USER_NAME` varchar(20) NOT NULL COMMENT '用户名称',
  `PASSWORD` varchar(20) NOT NULL COMMENT '用户密码',
  `MESSAGE` varchar(255) DEFAULT '' COMMENT '机构',
  `ORGANIZATION` varchar(100) DEFAULT '' COMMENT '法人',
  `LEGALENTITY` varchar(100) DEFAULT '' COMMENT '用户信息',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_user
-- ----------------------------
INSERT INTO `web_user` VALUES ('admin', '管理员', '123456', '', '', '');
INSERT INTO `web_user` VALUES ('para', '数据录入员', '123456', '', '', '');
