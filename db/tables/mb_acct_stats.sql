/*
Navicat MySQL Data Transfer

Source Server         : ensemble
Source Server Version : 50516
Source Host           : 127.0.0.1:3306
Source Database       : ensemble

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2018-09-19 14:27:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mb_acct_stats
-- ----------------------------
DROP TABLE IF EXISTS `mb_acct_stats`;
CREATE TABLE `mb_acct_stats` (
  `INTERNAL_KEY` decimal(15,0) NOT NULL COMMENT '帐户主键',
  `CTRL_DATE` varchar(8) NOT NULL COMMENT '统计日期',
  `ACTUAL_BAL` decimal(17,2) DEFAULT NULL COMMENT '实际余额',
  `AGG_BAL_CTD` decimal(17,2) DEFAULT NULL COMMENT '当前累计余额',
  `AGG_BAL_MTD` decimal(17,2) DEFAULT NULL COMMENT '月累计余额',
  `AGG_BAL_QTD` decimal(17,2) DEFAULT NULL COMMENT '季初至今累计积数',
  `AGG_BAL_STD` decimal(17,2) DEFAULT NULL COMMENT '半年初至今累计积数',
  `AGG_BAL_YTD` decimal(17,2) DEFAULT NULL COMMENT '年初至今累计积数',
  `CTD_DAYS` varchar(5) DEFAULT NULL COMMENT '开户至今累计天数',
  `MTD_DAYS` varchar(5) DEFAULT NULL COMMENT '月累计天数',
  `QTD_DAYS` varchar(5) DEFAULT NULL COMMENT '(自然日)当季累计天数',
  `STD_DAYS` varchar(5) DEFAULT NULL COMMENT '(自然日)半年累计天数',
  `YTD_DAYS` varchar(5) DEFAULT NULL COMMENT '(自然日)当年累计天数',
  `ACT_MTD_DAYS` varchar(5) DEFAULT NULL COMMENT '(账户实际)当月累计天数',
  `ACT_QTD_DAYS` varchar(5) DEFAULT NULL COMMENT '(账户实际)当季累计天数',
  `ACT_STD_DAYS` varchar(5) DEFAULT NULL COMMENT '(账户实际)半年累计天数',
  `ACT_YTD_DAYS` varchar(5) DEFAULT NULL COMMENT '(账户实际)当年累计天数',
  `COMPANY` varchar(20) DEFAULT NULL COMMENT '法人代码 FM_COMPANY.COMPANY',
  `TRAN_TIMESTAMP` varchar(17) DEFAULT NULL COMMENT '交易时间戳',
  `TRAN_TIME` decimal(11,0) DEFAULT NULL COMMENT '交易时间',
  `ROUTER_KEY` varchar(100) DEFAULT NULL COMMENT '分库路由关键字'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='账户积数统计表';

-- ----------------------------
-- Records of mb_acct_stats
-- ----------------------------
