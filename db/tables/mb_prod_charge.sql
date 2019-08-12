/*
Navicat MySQL Data Transfer

Source Server         : ensemble
Source Server Version : 50516
Source Host           : 127.0.0.1:3306
Source Database       : ensemble

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2018-09-19 14:28:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mb_prod_charge
-- ----------------------------
DROP TABLE IF EXISTS `mb_prod_charge`;
CREATE TABLE `mb_prod_charge` (
  `PROD_TYPE` varchar(50) NOT NULL COMMENT '产品类型 取值于MB_PROD_TYPE.PROD_TYPE',
  `FEE_TYPE` varchar(8) NOT NULL COMMENT '费用类型 IRL_FEE_TYPE.FEE_TYPE',
  `CHARGE_PERIOD_FREQ` varchar(2) NOT NULL COMMENT '收取频率 FM_PERIOD_FREQ.PERIOD_FREQ',
  `CHARGE_DAY` varchar(2) DEFAULT NULL COMMENT '收费日',
  `NEXT_CHARGE_DATE` varchar(8) NOT NULL COMMENT '下一收费日期',
  `TRAN_TIMESTAMP` varchar(17) DEFAULT NULL COMMENT '交易时间戳',
  `TRAN_TIME` decimal(11,0) DEFAULT NULL COMMENT '交易时间',
  PRIMARY KEY (`PROD_TYPE`,`FEE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mb_prod_charge
-- ----------------------------
INSERT INTO `mb_prod_charge` VALUES ('RB102', 'R01', 'D3', null, '20160817', '20170328152959', '1490686199');
INSERT INTO `mb_prod_charge` VALUES ('RB202', 'R03', 'D3', null, '20160817', '20170328152959', '1490686199');
