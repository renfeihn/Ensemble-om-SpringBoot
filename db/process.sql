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

-- ------------------------------------------
-- Table structure for om_process_main_hist
-- ------------------------------------------
DROP TABLE IF EXISTS `om_process_main_hist`;
CREATE TABLE `om_process_main_hist` (
  `main_seq_no` varchar(30) NOT NULL COMMENT '主交易号(日期+序列)',
  `tran_id` varchar(100) NOT NULL COMMENT '参数交易名(MenuID)/参数表全名',
  `tran_desc` varchar(200) NOT NULL COMMENT '交易中文描述',
  `status` varchar(1) NOT NULL COMMENT '当前状态:已申请1，已录入2，已复核3，已发布4，已作废5，已驳回6, 附属交易0',
  `is_tran_group` varchar(1) DEFAULT 'N',
  `dtl_seq_no` int(5) NOT NULL COMMENT '当前操作历史序号',
  `rec_seq_no` int(5) NOT NULL COMMENT '当前操作记录序号',
  PRIMARY KEY (`main_seq_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='参数流程主信息表';

-- ------------------------------------------
-- Table structure for om_process_detail_hist
-- ------------------------------------------
DROP TABLE IF EXISTS `om_process_detail_hist`;
CREATE TABLE `om_process_detail_hist` (
  `main_seq_no` varchar(30) NOT NULL COMMENT '主交易号',
  `dtl_seq_no` int(5) NOT NULL COMMENT '序列(main_seq_no下排序)',
  `status` varchar(1) NOT NULL COMMENT '操作类型: A:申请;C:复核;P:发布;R:复核驳回;J:发布驳回;E:输入;S:附属;F:作废',
  `remark` varchar(500) NOT NULL COMMENT '复核发布意见',
  `is_approved` varchar(1) NOT NULL COMMENT '是否通过:Y;N',
  `user_id` varchar(20) NOT NULL COMMENT '操作人ID',
  `client_ip` varchar(15) NOT NULL COMMENT '操作人IP',
  `tran_time` varchar(20) NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`main_seq_no`,`dtl_seq_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='参数操作历史表';

-- ------------------------------------------
-- Table structure for om_process_record_hist
-- ------------------------------------------
DROP TABLE IF EXISTS `om_process_record_hist`;
CREATE TABLE `om_process_record_hist` (
  `rec_seq_no` int(5) NOT NULL COMMENT '数据记录序号',
  `sub_seq_no` int(5) NOT NULL COMMENT '子序列号',
  `main_seq_no` varchar(30) NOT NULL COMMENT '主交易号',
  `table_name` varchar(50) NOT NULL COMMENT '参数表全名',
  `pk_and_value` varchar(500) DEFAULT NULL COMMENT '主键与值的组合',
  `dml_type` varchar(1) NOT NULL COMMENT '操作类型：D/U/I',
  `dml_data` longblob COMMENT '批量删除/添加/修改参数表数据的报文',
  `dml_old_data` longblob COMMENT '批量修改之前的参数表数据报文',
  PRIMARY KEY (`rec_seq_no`,`sub_seq_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='参数操作数据表';

-- ------------------------------------------
-- Table structure for om_process_relation_hist
-- ------------------------------------------
DROP TABLE IF EXISTS `om_process_relation_hist`;
CREATE TABLE `om_process_relation_hist` (
  `main_seq_no` varchar(30) NOT NULL COMMENT '主交易号',
  `dtl_seq_no` int(5) NOT NULL COMMENT '当前操作历史序号',
  `rec_seq_no` int(5) NOT NULL COMMENT '当前操作记录序号',
  `tran_id` varchar(100) NOT NULL COMMENT '参数表全名:系统名_表名',
  PRIMARY KEY (`main_seq_no`,`dtl_seq_no`,`group_seq_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='参数操作历史与记录关系表';


