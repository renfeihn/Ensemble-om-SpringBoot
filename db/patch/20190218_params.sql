/*
Navicat MySQL Data Transfer

Source Server         : EnsembleOm
Source Server Version : 50516
Source Host           : 127.0.0.1:3306
Source Database       : ensemble

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2019-02-18 15:32:29
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
INSERT INTO `om_menu` VALUES ('6', '3', '', '', '1', 'A', '', null, '产品工厂');
INSERT INTO `om_menu` VALUES ('7', '30', '', '3', '2', 'A', 'account_balance', null, '存款产品');
INSERT INTO `om_menu` VALUES ('8', '301', '111001', '30', '3', 'A', null, 'RbSoldProds', '个人人民币活期存款');
INSERT INTO `om_menu` VALUES ('9', '302', 'RB101', '30', '3', 'A', null, 'RbSoldProds', '个人人民币活期基础产品');
INSERT INTO `om_menu` VALUES ('10', '303', '111002', '30', '3', 'A', null, 'RbSoldProds', '个人活期存款-多币种(钞)');
INSERT INTO `om_menu` VALUES ('11', '304', '111003', '30', '3', 'A', '', 'RbSoldProds', '个人活期存款-多币种(汇)');
INSERT INTO `om_menu` VALUES ('12', '305', '111004', '30', '3', 'A', '', 'RbSoldProds', '个人整存整取储蓄存款');
INSERT INTO `om_menu` VALUES ('13', '306', '111005', '30', '3', 'A', null, 'RbSoldProds', '个人一天通知存款');
INSERT INTO `om_menu` VALUES ('14', '307', '111006', '30', '3', 'A', '', 'RbSoldProds', '个人七天通知存款');
INSERT INTO `om_menu` VALUES ('15', '308', '111007', '30', '3', 'A', '', 'RbSoldProds', '个人存本取息存款');
INSERT INTO `om_menu` VALUES ('16', '31', '', '3', '2', 'A', 'account_balance', '', '贷款产品');
INSERT INTO `om_menu` VALUES ('17', '311', 'CL001', '31', '3', 'A', null, 'ClBaseProds', '个人贷款基础产品');
INSERT INTO `om_menu` VALUES ('18', '312', 'CL002', '31', '3', 'A', null, 'ClBaseProds', '公司贷款基础产品');
INSERT INTO `om_menu` VALUES ('19', '313', 'CL003', '31', '3', 'A', null, 'ClBaseProds', '委托贷款基础产品');
INSERT INTO `om_menu` VALUES ('20', '32', ' ', '3', '2', 'A', 'account_balance', null, '内部帐产品');
INSERT INTO `om_menu` VALUES ('21', '33', ' ', '3', '2', 'A', 'account_balance', null, '组合产品');
INSERT INTO `om_menu` VALUES ('22', '34', ' ', '3', '2', 'A', 'account_balance', null, '协议产品');
INSERT INTO `om_menu` VALUES ('23', '4', '', '', '1', 'A', 'account_balance', null, '参数工厂');
INSERT INTO `om_menu` VALUES ('24', '40', '', '4', '2', 'A', 'view_list', null, '参数管理');
INSERT INTO `om_menu` VALUES ('25', '401', '', '40', '3', 'A', null, 'paramManage', '参数管理入口');
INSERT INTO `om_menu` VALUES ('26', '402', '', '40', '3', 'A', null, 'transManage', '交易管理入口');
INSERT INTO `om_menu` VALUES ('27', '14', '', '3', '2', 'A', 'widgets', 'prodWindow', '产品展示');

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
INSERT INTO `om_menu_role` VALUES ('1', '14');
INSERT INTO `om_menu_role` VALUES ('1', '15');
INSERT INTO `om_menu_role` VALUES ('1', '2');
INSERT INTO `om_menu_role` VALUES ('1', '20');
INSERT INTO `om_menu_role` VALUES ('1', '201');
INSERT INTO `om_menu_role` VALUES ('1', '202');
INSERT INTO `om_menu_role` VALUES ('1', '3');
INSERT INTO `om_menu_role` VALUES ('1', '30');
INSERT INTO `om_menu_role` VALUES ('1', '301');
INSERT INTO `om_menu_role` VALUES ('1', '302');
INSERT INTO `om_menu_role` VALUES ('1', '303');
INSERT INTO `om_menu_role` VALUES ('1', '304');
INSERT INTO `om_menu_role` VALUES ('1', '305');
INSERT INTO `om_menu_role` VALUES ('1', '306');
INSERT INTO `om_menu_role` VALUES ('1', '307');
INSERT INTO `om_menu_role` VALUES ('1', '308');
INSERT INTO `om_menu_role` VALUES ('1', '31');
INSERT INTO `om_menu_role` VALUES ('1', '311');
INSERT INTO `om_menu_role` VALUES ('1', '312');
INSERT INTO `om_menu_role` VALUES ('1', '313');
INSERT INTO `om_menu_role` VALUES ('1', '32');
INSERT INTO `om_menu_role` VALUES ('1', '33');
INSERT INTO `om_menu_role` VALUES ('1', '34');
INSERT INTO `om_menu_role` VALUES ('1', '4');
INSERT INTO `om_menu_role` VALUES ('1', '40');
INSERT INTO `om_menu_role` VALUES ('1', '401');
INSERT INTO `om_menu_role` VALUES ('1', '402');
INSERT INTO `om_menu_role` VALUES ('2', '1');
INSERT INTO `om_menu_role` VALUES ('2', '10');
INSERT INTO `om_menu_role` VALUES ('2', '11');
INSERT INTO `om_menu_role` VALUES ('2', '12');
INSERT INTO `om_menu_role` VALUES ('2', '2');
INSERT INTO `om_menu_role` VALUES ('2', '3');
INSERT INTO `om_menu_role` VALUES ('3', '1');
INSERT INTO `om_menu_role` VALUES ('3', '10');
INSERT INTO `om_menu_role` VALUES ('3', '11');
INSERT INTO `om_menu_role` VALUES ('4', '10');
INSERT INTO `om_menu_role` VALUES ('4', '11');
INSERT INTO `om_menu_role` VALUES ('5', '12');
INSERT INTO `om_menu_role` VALUES ('5', '13');
INSERT INTO `om_menu_role` VALUES ('7', '7');
