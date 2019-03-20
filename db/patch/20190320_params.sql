/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50516
Source Host           : 127.0.0.1:3306
Source Database       : ensemble

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2019-03-20 18:11:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for om_user_collect
-- ----------------------------
DROP TABLE IF EXISTS `om_user_collect`;
CREATE TABLE `om_user_collect` (
  `USER_ID` varchar(20) NOT NULL COMMENT '用户ID',
  `PROD_TYPE` varchar(20) NOT NULL,
  `PROD_DESC` varchar(255) DEFAULT NULL,
  `PROD_RANGE` varchar(1) DEFAULT NULL,
  `SOURCE_MODULE` varchar(10) DEFAULT NULL,
  `COLLECT_DATE` varchar(30) DEFAULT NULL,
  `COLLECT_STATUS` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`,`PROD_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET FOREIGN_KEY_CHECKS=1;
