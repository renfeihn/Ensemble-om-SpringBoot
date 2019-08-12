/*
Navicat MySQL Data Transfer

Source Server         : zhou
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : ensemble-om

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2019-01-07 13:22:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for om_user
-- ----------------------------
DROP TABLE IF EXISTS `om_user`;
CREATE TABLE `om_user` (
  `user_id` varchar(10) NOT NULL COMMENT '用户id',
  `user_name` varchar(30) NOT NULL COMMENT '用户名称',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `branch` varchar(20) DEFAULT NULL COMMENT '机构',
  `company` varchar(100) DEFAULT NULL COMMENT '法人',
  `user_level` varchar(100) NOT NULL COMMENT '用户等级',
  `parent_user_id` varchar(30) DEFAULT NULL COMMENT '父级用户',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(11) DEFAULT NULL COMMENT '电话号码',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息定义表';

-- ----------------------------
-- Records of om_user
-- ----------------------------
INSERT INTO `om_user` VALUES ('admin', '管理员', '123456', null, null, '1', null, null, null);
INSERT INTO `om_user` VALUES ('para', '参数管理员', '123456', null, null, '2', 'admin', null, null);
