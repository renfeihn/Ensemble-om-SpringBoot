/*
Navicat MySQL Data Transfer

Source Server         : EnsembleOm
Source Server Version : 50516
Source Host           : 127.0.0.1:3306
Source Database       : ensemble

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2018-11-22 16:32:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for om_menu
-- ----------------------------
DROP TABLE IF EXISTS `om_menu`;
CREATE TABLE `om_menu` (
  `menu_seq_no` int(10) NOT NULL COMMENT '菜单编号',
  `menu_id` varchar(30) NOT NULL COMMENT '菜单id',
  `menu_name` varchar(100) NOT NULL COMMENT '菜单名称',
  `menu_parent_id` varchar(30) DEFAULT NULL COMMENT '父级菜单',
  `menu_level` int(1) DEFAULT NULL COMMENT '菜单等级 ',
  `menu_status` varchar(1) DEFAULT NULL COMMENT '菜单状态',
  `menu_icon` varchar(50) DEFAULT NULL COMMENT '菜单图标id',
  `menu_component` varchar(100) DEFAULT NULL COMMENT '菜单url',
  `menu_title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`menu_seq_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单信息定义表';

-- ----------------------------
-- Records of om_menu
-- ----------------------------
INSERT INTO `om_menu` VALUES ('1', '1', 'Apps', null, '1', 'A', '', null, 'Apps');
INSERT INTO `om_menu` VALUES ('2', '10', 'Dashboard', '1', '2', 'A', 'home', 'Dashboard', '首页');
INSERT INTO `om_menu` VALUES ('3', '11', 'userIndexFlow', '1', '2', 'A', 'assistant', 'userIndexFlow', '我的工作台');
INSERT INTO `om_menu` VALUES ('4', '12', 'prodCmbs', '1', '2', 'A', 'widgets', 'prodCmbs', '产品目录');
INSERT INTO `om_menu` VALUES ('5', '13', 'MyProd', '1', '2', 'A', 'favorite_border', 'MyProd', '我收藏的产品');
INSERT INTO `om_menu` VALUES ('6', '2', '网贷管理端', null, '1', 'A', '', null, '网贷管理端');
INSERT INTO `om_menu` VALUES ('7', '20', '合作方信息管理', '2', '2', 'A', 'account_balance', null, '合作方信息管理');
INSERT INTO `om_menu` VALUES ('8', '201', 'partner', '20', '3', 'A', null, 'partner/partnerMain', '合作方签约');
INSERT INTO `om_menu` VALUES ('9', '202', '合作方解约', '20', '3', 'A', null, 'prod/rbPublicProd', '合作方解约');
INSERT INTO `om_menu` VALUES ('10', '203', '合作方信息维护', '20', '3', 'A', null, 'prod/rbHorizontalrod', '合作方信息维护');
INSERT INTO `om_menu` VALUES ('11', '3', '产品工厂', '', '1', 'A', '', null, '产品工厂');
INSERT INTO `om_menu` VALUES ('12', '30', '存款产品', '3', '2', 'A', 'account_balance', null, '存款产品');
INSERT INTO `om_menu` VALUES ('13', '301', '10001001', '30', '3', 'A', null, 'RbSoldProds', '存款可售产品');
INSERT INTO `om_menu` VALUES ('14', '302', '10001', '30', '3', 'A', null, 'RbBaseProds', '存款基础产品');

-- ----------------------------
-- Table structure for om_menu_role
-- ----------------------------
DROP TABLE IF EXISTS `om_menu_role`;
CREATE TABLE `om_menu_role` (
  `role_id` varchar(30) NOT NULL COMMENT '角色id',
  `menu_id` varchar(30) NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色菜单关系表';

-- ----------------------------
-- Records of om_menu_role
-- ----------------------------
INSERT INTO `om_menu_role` VALUES ('1', '1');
INSERT INTO `om_menu_role` VALUES ('1', '10');
INSERT INTO `om_menu_role` VALUES ('1', '11');
INSERT INTO `om_menu_role` VALUES ('1', '12');
INSERT INTO `om_menu_role` VALUES ('1', '13');
INSERT INTO `om_menu_role` VALUES ('1', '2');
INSERT INTO `om_menu_role` VALUES ('1', '20');
INSERT INTO `om_menu_role` VALUES ('1', '201');
INSERT INTO `om_menu_role` VALUES ('1', '202');
INSERT INTO `om_menu_role` VALUES ('1', '3');
INSERT INTO `om_menu_role` VALUES ('1', '30');
INSERT INTO `om_menu_role` VALUES ('1', '301');
INSERT INTO `om_menu_role` VALUES ('1', '302');

-- ----------------------------
-- Table structure for om_role
-- ----------------------------
DROP TABLE IF EXISTS `om_role`;
CREATE TABLE `om_role` (
  `role_id` varchar(10) NOT NULL COMMENT '角色id',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_desc` varchar(100) NOT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色信息定义表';

-- ----------------------------
-- Records of om_role
-- ----------------------------

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
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息定义表';

-- ----------------------------
-- Records of om_user
-- ----------------------------
INSERT INTO `om_user` VALUES ('admin', '管理员', '123456', null, null, '1', null);
INSERT INTO `om_user` VALUES ('para', '参数管理员', '123456', null, null, '2', 'admin');

-- ----------------------------
-- Table structure for om_user_role
-- ----------------------------
DROP TABLE IF EXISTS `om_user_role`;
CREATE TABLE `om_user_role` (
  `user_id` varchar(10) NOT NULL COMMENT '用户id',
  `role_id` varchar(30) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色关系表';

-- ----------------------------
-- Records of om_user_role
-- ----------------------------
INSERT INTO `om_user_role` VALUES ('admin', '1');
