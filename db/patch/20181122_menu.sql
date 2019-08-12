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
  `menu_seq_no` int(10) NOT NULL COMMENT '�˵����',
  `menu_id` varchar(30) NOT NULL COMMENT '�˵�id',
  `menu_name` varchar(100) NOT NULL COMMENT '�˵�����',
  `menu_parent_id` varchar(30) DEFAULT NULL COMMENT '�����˵�',
  `menu_level` int(1) DEFAULT NULL COMMENT '�˵��ȼ� ',
  `menu_status` varchar(1) DEFAULT NULL COMMENT '�˵�״̬',
  `menu_icon` varchar(50) DEFAULT NULL COMMENT '�˵�ͼ��id',
  `menu_component` varchar(100) DEFAULT NULL COMMENT '�˵�url',
  `menu_title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`menu_seq_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�˵���Ϣ�����';

-- ----------------------------
-- Records of om_menu
-- ----------------------------
INSERT INTO `om_menu` VALUES ('1', '1', 'Apps', null, '1', 'A', '', null, 'Apps');
INSERT INTO `om_menu` VALUES ('2', '10', 'Dashboard', '1', '2', 'A', 'home', 'Dashboard', '��ҳ');
INSERT INTO `om_menu` VALUES ('3', '11', 'userIndexFlow', '1', '2', 'A', 'assistant', 'userIndexFlow', '�ҵĹ���̨');
INSERT INTO `om_menu` VALUES ('4', '12', 'prodCmbs', '1', '2', 'A', 'widgets', 'prodCmbs', '��ƷĿ¼');
INSERT INTO `om_menu` VALUES ('5', '13', 'MyProd', '1', '2', 'A', 'favorite_border', 'MyProd', '���ղصĲ�Ʒ');
INSERT INTO `om_menu` VALUES ('6', '2', '���������', null, '1', 'A', '', null, '���������');
INSERT INTO `om_menu` VALUES ('7', '20', '��������Ϣ����', '2', '2', 'A', 'account_balance', null, '��������Ϣ����');
INSERT INTO `om_menu` VALUES ('8', '201', 'partner', '20', '3', 'A', null, 'partner/partnerMain', '������ǩԼ');
INSERT INTO `om_menu` VALUES ('9', '202', '��������Լ', '20', '3', 'A', null, 'prod/rbPublicProd', '��������Լ');
INSERT INTO `om_menu` VALUES ('10', '203', '��������Ϣά��', '20', '3', 'A', null, 'prod/rbHorizontalrod', '��������Ϣά��');
INSERT INTO `om_menu` VALUES ('11', '3', '��Ʒ����', '', '1', 'A', '', null, '��Ʒ����');
INSERT INTO `om_menu` VALUES ('12', '30', '����Ʒ', '3', '2', 'A', 'account_balance', null, '����Ʒ');
INSERT INTO `om_menu` VALUES ('13', '301', '10001001', '30', '3', 'A', null, 'RbSoldProds', '�����۲�Ʒ');
INSERT INTO `om_menu` VALUES ('14', '302', '10001', '30', '3', 'A', null, 'RbBaseProds', '��������Ʒ');

-- ----------------------------
-- Table structure for om_menu_role
-- ----------------------------
DROP TABLE IF EXISTS `om_menu_role`;
CREATE TABLE `om_menu_role` (
  `role_id` varchar(30) NOT NULL COMMENT '��ɫid',
  `menu_id` varchar(30) NOT NULL COMMENT '�˵�id',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��ɫ�˵���ϵ��';

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
  `role_id` varchar(10) NOT NULL COMMENT '��ɫid',
  `role_name` varchar(30) NOT NULL COMMENT '��ɫ����',
  `role_desc` varchar(100) NOT NULL COMMENT '��ע',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��ɫ��Ϣ�����';

-- ----------------------------
-- Records of om_role
-- ----------------------------

-- ----------------------------
-- Table structure for om_user
-- ----------------------------
DROP TABLE IF EXISTS `om_user`;
CREATE TABLE `om_user` (
  `user_id` varchar(10) NOT NULL COMMENT '�û�id',
  `user_name` varchar(30) NOT NULL COMMENT '�û�����',
  `password` varchar(100) NOT NULL COMMENT '����',
  `branch` varchar(20) DEFAULT NULL COMMENT '����',
  `company` varchar(100) DEFAULT NULL COMMENT '����',
  `user_level` varchar(100) NOT NULL COMMENT '�û��ȼ�',
  `parent_user_id` varchar(30) DEFAULT NULL COMMENT '�����û�',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�û���Ϣ�����';

-- ----------------------------
-- Records of om_user
-- ----------------------------
INSERT INTO `om_user` VALUES ('admin', '����Ա', '123456', null, null, '1', null);
INSERT INTO `om_user` VALUES ('para', '��������Ա', '123456', null, null, '2', 'admin');

-- ----------------------------
-- Table structure for om_user_role
-- ----------------------------
DROP TABLE IF EXISTS `om_user_role`;
CREATE TABLE `om_user_role` (
  `user_id` varchar(10) NOT NULL COMMENT '�û�id',
  `role_id` varchar(30) NOT NULL COMMENT '��ɫid',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�û���ɫ��ϵ��';

-- ----------------------------
-- Records of om_user_role
-- ----------------------------
INSERT INTO `om_user_role` VALUES ('admin', '1');
