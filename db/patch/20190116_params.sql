/*
Navicat MySQL Data Transfer

Source Server         : EnsembleOm
Source Server Version : 50516
Source Host           : 127.0.0.1:3306
Source Database       : ensemble

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2019-01-16 10:29:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for om_menu
-- ----------------------------
DROP TABLE IF EXISTS `om_menu`;
CREATE TABLE `om_menu` (
  `menu_seq_no` int(10) NOT NULL COMMENT '菜单编号',
  `menu_id` varchar(30) NOT NULL COMMENT '菜单id',
  `menu_params` varchar(100) NOT NULL COMMENT '菜单名称',
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
INSERT INTO `om_menu` VALUES ('1', '1', '', null, '1', 'A', '', null, 'Apps');
INSERT INTO `om_menu` VALUES ('2', '10', '', '1', '2', 'A', 'home', 'Dashboard', '首页');
INSERT INTO `om_menu` VALUES ('3', '11', '', '1', '2', 'A', 'assistant', 'userIndexFlow', '我的工作台');
INSERT INTO `om_menu` VALUES ('4', '12', '', '1', '2', 'A', 'widgets', 'prodCmbs', '产品目录');
INSERT INTO `om_menu` VALUES ('5', '13', '', '1', '2', 'A', 'favorite_border', 'MyProd', '我收藏的产品');
INSERT INTO `om_menu` VALUES ('6', '2', '', null, '1', 'A', '', null, '网贷管理端');
INSERT INTO `om_menu` VALUES ('7', '20', '', '2', '2', 'A', 'account_balance', null, '合作方信息管理');
INSERT INTO `om_menu` VALUES ('8', '201', '', '20', '3', 'A', null, 'partner/partnerMain', '合作方签约');
INSERT INTO `om_menu` VALUES ('9', '202', '', '20', '3', 'A', null, 'prod/rbPublicProd', '合作方解约');
INSERT INTO `om_menu` VALUES ('10', '203', '', '20', '3', 'A', null, 'prod/rbHorizontalrod', '合作方信息维护');
INSERT INTO `om_menu` VALUES ('11', '3', '', '', '1', 'A', '', null, '产品工厂');
INSERT INTO `om_menu` VALUES ('12', '30', '', '3', '2', 'A', 'account_balance', null, '存款产品');
INSERT INTO `om_menu` VALUES ('13', '301', '10001001', '30', '3', 'A', null, 'RbSoldProds', '存款可售产品');
INSERT INTO `om_menu` VALUES ('14', '302', '10001', '30', '3', 'A', null, 'RbBaseProds', '存款基础产品');
INSERT INTO `om_menu` VALUES ('15', '31', '', '3', '2', 'A', 'account_balance', '', '贷款产品');
INSERT INTO `om_menu` VALUES ('16', '311', 'CL999', '31', '3', 'A', null, 'ClBaseProds', '贷款基础产品');
INSERT INTO `om_menu` VALUES ('17', '312', 'CL9901', '31', '3', 'A', null, 'ClSoldProds', '贷款可售产品');
INSERT INTO `om_menu` VALUES ('18', '4', '', '', '1', 'A', 'account_balance', null, null);
INSERT INTO `om_menu` VALUES ('19', '40', '', '4', '2', 'A', 'view_list', null, '参数管理');
INSERT INTO `om_menu` VALUES ('20', '401', '', '40', '3', 'A', null, 'paramManage', '参数管理入口');
INSERT INTO `om_menu` VALUES ('21', '402', '', '40', '3', 'A', null, 'transManage', '交易管理入口');
INSERT INTO `om_menu` VALUES ('22', '14', '', '3', '2', 'A', 'widgets', 'prodWindow', '产品展示');
