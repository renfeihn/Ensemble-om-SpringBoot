/*
Navicat MySQL Data Transfer

Source Server         : ensemble
Source Server Version : 50516
Source Host           : 127.0.0.1:3306
Source Database       : ensemble

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2018-09-19 14:29:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mb_prod_type
-- ----------------------------
DROP TABLE IF EXISTS `mb_prod_type`;
CREATE TABLE `mb_prod_type` (
  `PROD_TYPE` varchar(50) NOT NULL COMMENT '产品类型',
  `PROD_DESC` varchar(100) NOT NULL COMMENT '产品类型描述',
  `PROD_CLASS` varchar(20) NOT NULL COMMENT '产品分类 取值为MB_PROD_CLASS.PROD_CLASS',
  `PROD_GROUP` varchar(1) DEFAULT NULL COMMENT '是否产品组 Y：组合产品 N：单一产品',
  `PROD_RANGE` varchar(1) DEFAULT NULL COMMENT '产品作用范围 B：基础产品 S：可售产品',
  `BASE_PROD_TYPE` varchar(50) DEFAULT NULL COMMENT '基础产品',
  `STATUS` varchar(1) NOT NULL COMMENT '状态 A：有效 F：无效',
  PRIMARY KEY (`PROD_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品类型定义表：描述产品工厂所有的产品类型';

-- ----------------------------
-- Records of mb_prod_type
-- ----------------------------
INSERT INTO `mb_prod_type` VALUES ('CD601', '普卡', 'RB100', 'Y', 'S', 'RBA01', 'A');
INSERT INTO `mb_prod_type` VALUES ('CL001', '普通贷款基础产品', 'CLBASE', 'N', 'B', '', 'A');
INSERT INTO `mb_prod_type` VALUES ('CL002', '银团贷款基础产品', 'CLBASE', 'N', 'B', null, 'A');
INSERT INTO `mb_prod_type` VALUES ('CL101', '个人住房贷款', 'CL100', 'N', 'S', 'CL001', 'A');
INSERT INTO `mb_prod_type` VALUES ('CL102', '个人循环贷款', 'CL100', 'N', 'S', 'CL001', 'A');
INSERT INTO `mb_prod_type` VALUES ('CL201', '流动资金贷款', 'CL200', 'N', 'S', 'CL001', 'A');
INSERT INTO `mb_prod_type` VALUES ('CL202', '保函', 'CL200', 'N', 'S', '', 'A');
INSERT INTO `mb_prod_type` VALUES ('CL301', '银团贷款', 'CL300', 'N', 'S', 'CL002', 'A');
INSERT INTO `mb_prod_type` VALUES ('CL401', '垫款', 'CL400', 'N', 'S', 'CL001', 'A');
INSERT INTO `mb_prod_type` VALUES ('CL501', '贴现贷款', 'CL500', 'N', 'S', 'CL002', 'A');
INSERT INTO `mb_prod_type` VALUES ('CL601', '个人委托贷款', 'CL600', 'N', 'S', 'CL001', 'A');
INSERT INTO `mb_prod_type` VALUES ('CL901', '个人资产转移', 'CL100', 'N', 'S', 'CL001', 'A');
INSERT INTO `mb_prod_type` VALUES ('CL902', '对公资产转移', 'CL200', 'N', 'S', 'CL001', 'A');
INSERT INTO `mb_prod_type` VALUES ('GL001', '内部账基础产品', 'GLBASE', 'N', 'B', '', 'A');
INSERT INTO `mb_prod_type` VALUES ('GL101', '内部账产品示例', 'GL100', 'N', 'S', 'GL001', 'A');
INSERT INTO `mb_prod_type` VALUES ('GL201', '存放同业产品示例', 'GL200', 'N', 'S', 'GL001', 'A');
INSERT INTO `mb_prod_type` VALUES ('GL301', '同业存放产品示例', 'GL300', 'N', 'S', 'GL001', 'A');
INSERT INTO `mb_prod_type` VALUES ('MM001', '货币市场基础产品', 'MMBASE', 'N', 'B', '', 'A');
INSERT INTO `mb_prod_type` VALUES ('MM101', '行内拆入', 'MM100', 'N', 'S', 'MM001', 'A');
INSERT INTO `mb_prod_type` VALUES ('MM102', '行内拆出', 'MM100', 'N', 'S', 'MM001', 'A');
INSERT INTO `mb_prod_type` VALUES ('MM201', '同业拆入', 'MM100', 'N', 'S', 'MM001', 'A');
INSERT INTO `mb_prod_type` VALUES ('MM202', '同业拆出', 'MM100', 'N', 'S', 'MM001', 'A');
INSERT INTO `mb_prod_type` VALUES ('RB101', '个人活期存款', 'RB100', 'Y', 'S', 'RBHQ1', 'A');
INSERT INTO `mb_prod_type` VALUES ('RB103', '个人活期多币种存款', 'RB100', 'N', 'S', 'RBHQ2', 'A');
INSERT INTO `mb_prod_type` VALUES ('RB121', '个人活期联名存款', 'RB100', 'N', 'S', 'RBHQ3', 'A');
INSERT INTO `mb_prod_type` VALUES ('RB151', '个人整存整取', 'RB100', 'N', 'S', 'RBDQ1', 'A');
INSERT INTO `mb_prod_type` VALUES ('RB152', '个人零存整取', 'RB100', 'N', 'S', 'RBDQ1', 'A');
INSERT INTO `mb_prod_type` VALUES ('RB153', '个人协议存款', 'RB100', 'N', 'S', 'RBDQ1', 'A');
INSERT INTO `mb_prod_type` VALUES ('RB154', '个人一天通知存款', 'RB100', 'N', 'S', 'RBDQ1', 'A');
INSERT INTO `mb_prod_type` VALUES ('RB155', '个人七天通知存款', 'RB100', 'N', 'S', 'RBDQ1', 'A');
INSERT INTO `mb_prod_type` VALUES ('RB157', '个人教育储蓄', 'RB100', 'N', 'S', 'RBDQ1', 'A');
INSERT INTO `mb_prod_type` VALUES ('RB159', '个人定活两便', 'RB100', 'N', 'S', 'RBDQ1', 'A');
INSERT INTO `mb_prod_type` VALUES ('RB171', '个人众筹定期存款', 'RB100', 'N', 'S', 'RBDQ3', 'A');
INSERT INTO `mb_prod_type` VALUES ('RB180', '个人定期一本通', 'RB100', 'Y', 'S', 'RBDQ2', 'A');
INSERT INTO `mb_prod_type` VALUES ('RB201', '单位活期一本通', 'RB200', 'N', 'S', 'RBHQ1', 'A');
INSERT INTO `mb_prod_type` VALUES ('RB203', '单位活期多币种存款', 'RB200', 'N', 'S', 'RBHQ2', 'A');
INSERT INTO `mb_prod_type` VALUES ('RB221', '单位活期联名存款', 'RB200', 'N', 'S', 'RBHQ3', 'A');
INSERT INTO `mb_prod_type` VALUES ('RB251', '单位一般定期存款', 'RB200', 'N', 'S', 'RBDQ1', 'A');
INSERT INTO `mb_prod_type` VALUES ('RB253', '单位协议存款', 'RB200', 'N', 'S', 'RBDQ1', 'A');
INSERT INTO `mb_prod_type` VALUES ('RB254', '单位一天通知存款', 'RB200', 'N', 'S', 'RBDQ1', 'A');
INSERT INTO `mb_prod_type` VALUES ('RB255', '单位七天通知存款', 'RB200', 'N', 'S', 'RBDQ1', 'A');
INSERT INTO `mb_prod_type` VALUES ('RB271', '单位定期联名存款', 'RB200', 'N', 'S', 'RBDQ3', 'A');
INSERT INTO `mb_prod_type` VALUES ('RB280', '单位定期一本通', 'RB200', 'Y', 'S', 'RBDQ2', 'A');
INSERT INTO `mb_prod_type` VALUES ('RB301', '同业活期存款', 'RB300', 'N', 'S', 'RBHQ2', 'A');
INSERT INTO `mb_prod_type` VALUES ('RB351', '同业定期存款', 'RB300', 'N', 'S', 'RBDQ1', 'A');
INSERT INTO `mb_prod_type` VALUES ('RB601', '对公AIO', 'RB200', 'Y', 'S', 'RBA01', 'A');
INSERT INTO `mb_prod_type` VALUES ('RB701', 'II类个人活期产品', 'RB100', 'N', 'S', 'RBHQ1', 'A');
INSERT INTO `mb_prod_type` VALUES ('RB702', 'III类个人活期产品', 'RB100', 'N', 'S', 'RBHQ1', 'A');
INSERT INTO `mb_prod_type` VALUES ('RBA01', 'AIO基础产品', 'RBBASE', 'N', 'B', '', 'A');
INSERT INTO `mb_prod_type` VALUES ('RBDQ1', '普通定期基础产品', 'RBBASE', 'N', 'B', null, 'A');
INSERT INTO `mb_prod_type` VALUES ('RBDQ2', '定期一本通基础产品', 'RBBASE', 'N', 'B', null, 'A');
INSERT INTO `mb_prod_type` VALUES ('RBDQ3', '定期联名基础产品', 'RBBASE', 'N', 'B', null, 'A');
INSERT INTO `mb_prod_type` VALUES ('RBHQ1', '普通活期基础产品', 'RBBASE', 'N', 'B', '', 'A');
INSERT INTO `mb_prod_type` VALUES ('RBHQ2', '多币种活期基础产品', 'RBBASE', 'N', 'B', null, 'A');
INSERT INTO `mb_prod_type` VALUES ('RBHQ3', '活期联名基础产品', 'RBBASE', 'N', 'B', null, 'A');
