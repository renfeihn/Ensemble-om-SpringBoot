/*
Navicat MySQL Data Transfer

Source Server         : ensemble
Source Server Version : 50516
Source Host           : 127.0.0.1:3306
Source Database       : ensemble

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2018-12-04 16:06:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cif_client_type
-- ----------------------------
DROP TABLE IF EXISTS `cif_client_type`;
CREATE TABLE `cif_client_type` (
  `CLIENT_TYPE` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `CLIENT_TYPE_DESC` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `IS_INDIVIDUAL` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `COMPANY` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TRAN_TIMESTAMP` varchar(17) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TRAN_TIME` double(11,2) DEFAULT NULL,
  `COLUMN_STATUS` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cif_client_type
-- ----------------------------
INSERT INTO `cif_client_type` VALUES ('10', '个人', 'Y', 'DCITS', null, null, 'Y');
INSERT INTO `cif_client_type` VALUES ('20', '公司', 'N', 'DCITS', null, null, 'Y');
INSERT INTO `cif_client_type` VALUES ('30', '同业', 'N', 'DCITS', null, null, 'Y');
INSERT INTO `cif_client_type` VALUES ('40', '内部', 'N', 'DCITS', null, null, 'Y');
INSERT INTO `cif_client_type` VALUES ('90', '其他', 'N', 'DCITS', null, null, 'Y');
INSERT INTO `cif_client_type` VALUES ('22', '测试', 'Y', 'DCITS', null, null, 'Y');
SET FOREIGN_KEY_CHECKS=1;


/*
Navicat MySQL Data Transfer

Source Server         : ensemble
Source Server Version : 50516
Source Host           : 127.0.0.1:3306
Source Database       : ensemble

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2018-12-04 16:08:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for om_table_list
-- ----------------------------
DROP TABLE IF EXISTS `om_table_list`;
CREATE TABLE `om_table_list` (
  `TABLE_NAME` varchar(30) NOT NULL,
  `TABLE_DESC` varchar(30) DEFAULT NULL,
  `SYSTEM` varchar(10) DEFAULT NULL,
  `PARAMETER` varchar(10) DEFAULT NULL,
  `MODEL_ID` varchar(10) DEFAULT NULL,
  `SEARCH_COLUMN` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`TABLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of om_table_list
-- ----------------------------
INSERT INTO `om_table_list` VALUES ('CIF_CLIENT_TYPE', '客户类型定义', 'ensemble', 'init', 'CIF', '');
SET FOREIGN_KEY_CHECKS=1;

/*
Navicat MySQL Data Transfer

Source Server         : ensemble
Source Server Version : 50516
Source Host           : 127.0.0.1:3306
Source Database       : ensemble

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2018-12-04 20:12:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for om_system_org
-- ----------------------------
DROP TABLE IF EXISTS `om_system_org`;
CREATE TABLE `om_system_org` (
  `SYSTEM_ID` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '目标系统ID',
  `SYSTEM_NAME` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT '目标系统名称',
  `SYSTEM_DESC` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '目标系统描述',
  PRIMARY KEY (`SYSTEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of om_system_org
-- ----------------------------
INSERT INTO `om_system_org` VALUES ('accounting', 'accounting', '核算管理');
INSERT INTO `om_system_org` VALUES ('ensemble', 'ensemble', '核心业务');
INSERT INTO `om_system_org` VALUES ('price', 'price', '统一计价');

-- ----------------------------
-- Table structure for para_module_org
-- ----------------------------
DROP TABLE IF EXISTS `para_module_org`;
CREATE TABLE `om_module_org` (
  `MODULE_ID` varchar(10) NOT NULL COMMENT '模块代码',
  `SYSTEM_ID` varchar(10) NOT NULL COMMENT '目标系统ID',
  `MODULE_NAME` varchar(60) NOT NULL COMMENT '目标模块名称',
  `MODULE_DESC` varchar(100) DEFAULT NULL COMMENT '目标模块描述',
  PRIMARY KEY (`MODULE_ID`,`SYSTEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='目标模块表';

-- ----------------------------
-- Records of para_module_org
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
