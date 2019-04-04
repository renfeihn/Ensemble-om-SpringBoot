/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50516
Source Host           : 127.0.0.1:3306
Source Database       : ensemble

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2019-04-04 17:51:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for om_env_org
-- ----------------------------
DROP TABLE IF EXISTS `om_env_org`;
CREATE TABLE `om_env_org` (
  `env_id` varchar(20) NOT NULL COMMENT '环境ID',
  `env_desc` varchar(200) NOT NULL COMMENT '环境描述',
  `system_id` varchar(20) NOT NULL COMMENT '系统ID',
  `module` varchar(20) NOT NULL COMMENT '模块',
  `url` varchar(200) NOT NULL COMMENT 'HTTP接入URL',
  `service_code` varchar(50) NOT NULL COMMENT '服务代码',
  `message_code` varchar(50) NOT NULL COMMENT '报文代码',
  `message_type` varchar(50) NOT NULL COMMENT '报文类型',
  `operator` varchar(50) DEFAULT NULL COMMENT '最新修改人ID',
  `time` varchar(8) DEFAULT NULL COMMENT '最新修改时间',
  PRIMARY KEY (`env_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='环境信息定义表';

-- ----------------------------
-- Records of om_env_org
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
