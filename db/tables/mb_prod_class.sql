/*
Navicat MySQL Data Transfer

Source Server         : ensemble
Source Server Version : 50516
Source Host           : 127.0.0.1:3306
Source Database       : ensemble

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2018-09-19 14:28:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mb_prod_class
-- ----------------------------
DROP TABLE IF EXISTS `mb_prod_class`;
CREATE TABLE `mb_prod_class` (
  `PROD_CLASS` varchar(20) NOT NULL COMMENT '产品分类',
  `PROD_CLASS_DESC` varchar(100) NOT NULL COMMENT '产品分类描述',
  `PROD_CLASS_LEVEL` varchar(10) DEFAULT NULL COMMENT '产品分类层级  1：1级  2： 2级',
  `PARENT_PROD_CLASS` varchar(20) DEFAULT NULL COMMENT '上级产品分类 取值于MB_PROD_CLASS.PROD_CLASS',
  PRIMARY KEY (`PROD_CLASS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品分类定义表：描述产品工厂产品的分类';

-- ----------------------------
-- Records of mb_prod_class
-- ----------------------------
INSERT INTO `mb_prod_class` VALUES ('CL', '贷款类', '1', '');
INSERT INTO `mb_prod_class` VALUES ('CL100', '对私贷款组', '2', 'CL');
INSERT INTO `mb_prod_class` VALUES ('CL200', '对公贷款组', '2', 'CL');
INSERT INTO `mb_prod_class` VALUES ('CL300', '贴现组', '2', 'CL');
INSERT INTO `mb_prod_class` VALUES ('CL400', '垫款组', '2', 'CL');
INSERT INTO `mb_prod_class` VALUES ('CL500', '委托贷款组', '2', 'CL');
INSERT INTO `mb_prod_class` VALUES ('CL600', '银团贷款组', '2', 'CL');
INSERT INTO `mb_prod_class` VALUES ('CLBASE', '贷款基础产品组', '2', 'CL');
INSERT INTO `mb_prod_class` VALUES ('GL', '内部账类', '1', '');
INSERT INTO `mb_prod_class` VALUES ('GL100', '内部账组', '2', 'GL');
INSERT INTO `mb_prod_class` VALUES ('GL200', '存放同业组', '2', 'GL');
INSERT INTO `mb_prod_class` VALUES ('GL300', '同业存放组', '2', 'GL');
INSERT INTO `mb_prod_class` VALUES ('GLBASE', '内部账基础产品组', '2', 'GL');
INSERT INTO `mb_prod_class` VALUES ('MM', '货币市场类', '1', '');
INSERT INTO `mb_prod_class` VALUES ('MM100', '货币市场组', '2', 'MM');
INSERT INTO `mb_prod_class` VALUES ('MMBASE', 'MM基础产品组', '2', 'MM');
INSERT INTO `mb_prod_class` VALUES ('RB', '存款类', '1', '');
INSERT INTO `mb_prod_class` VALUES ('RB100', '活期产品组', '2', 'RB');
INSERT INTO `mb_prod_class` VALUES ('RB200', '对公存款组', '2', 'RB');
INSERT INTO `mb_prod_class` VALUES ('RB300', '同业存款组', '2', 'RB');
INSERT INTO `mb_prod_class` VALUES ('RB400', '个人存款组', '2', 'RB');
INSERT INTO `mb_prod_class` VALUES ('RBBASE', '存款基础产品组', '2', 'RB');
