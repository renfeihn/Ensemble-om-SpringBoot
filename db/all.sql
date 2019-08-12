/*
Navicat MySQL Data Transfer

Source Server         : EnsembleOm
Source Server Version : 50516
Source Host           : 127.0.0.1:3306
Source Database       : ensemble

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2018-08-30 09:39:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for om_operation_records
-- ----------------------------
DROP TABLE IF EXISTS `om_operation_records`;
CREATE TABLE `om_operation_records` (
  `req_no` varchar(60) NOT NULL COMMENT '日期+时间',
  `series_num` int(11) NOT NULL COMMENT '序列号',
  `table_full_name` varchar(50) NOT NULL COMMENT '参数表全名',
  `primary_keyvalue` varchar(2000) DEFAULT NULL COMMENT '主键值组合',
  `key_value` longblob COMMENT '主键字段和值',
  `operate_type` varchar(1) NOT NULL COMMENT '操作类型：D/U/I',
  `data_dui` longblob COMMENT '批量删除/添加/修改参数表数据的报文',
  `olddata_upd` longblob COMMENT '批量修改之前的参数表数据报文',
  PRIMARY KEY (`series_num`,`req_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='参数数据操作一览表';

-- ----------------------------
-- Table structure for om_process_combination
-- ----------------------------
DROP TABLE IF EXISTS `om_process_combination`;
CREATE TABLE `om_process_combination` (
  `req_no` varchar(60) NOT NULL COMMENT '主交易日期+时间',
  `operator_no` varchar(10) NOT NULL,
  `sub_req_no` varchar(60) NOT NULL COMMENT '附属交易日期+时间',
  `sub_transaction_id` varchar(100) NOT NULL COMMENT '参数表全名:系统名_表名',
  `publish_status` varchar(1) DEFAULT 'N',
  PRIMARY KEY (`req_no`,`sub_req_no`,`operator_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='参数表交易和表对应关系表';

-- ----------------------------
-- Table structure for om_process_info
-- ----------------------------
DROP TABLE IF EXISTS `om_process_info`;
CREATE TABLE `om_process_info` (
  `req_no` varchar(50) NOT NULL COMMENT '日期+时间',
  `operator_no` decimal(10,0) NOT NULL,
  `operator_type` varchar(1) NOT NULL COMMENT '操作类型: A:申请;C:复核;P:发布;R:复核驳回;J:发布驳回;E:输入;S:附属;F:作废',
  `check_text` varchar(500) NOT NULL COMMENT '复核发布意见',
  `approve` varchar(1) NOT NULL COMMENT '是否通过:Y;N,作废:C',
  `operator_id` varchar(30) NOT NULL COMMENT '操作人ID',
  `currentsystem_time` varchar(50) NOT NULL COMMENT '操作时间',
  `client_ip` varchar(30) NOT NULL COMMENT '操作人IP',
  PRIMARY KEY (`req_no`,`operator_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='申请审核发布流程管理表';

-- ----------------------------
-- Table structure for om_process_management
-- ----------------------------
DROP TABLE IF EXISTS `om_process_management`;
CREATE TABLE `om_process_management` (
  `req_no` varchar(60) NOT NULL COMMENT '日期+时间',
  `transaction_id` varchar(50) NOT NULL COMMENT '参数交易名(MenuID)/参数表全名',
  `transaction_desc` varchar(100) NOT NULL COMMENT '交易中文描述',
  `current_status` varchar(1) NOT NULL COMMENT '当前状态:已申请1，已录入2，已复核3，已发布4，已作废5，已驳回6, 附属交易0',
  `is_tran_group` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`req_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='参数流程控制表';
