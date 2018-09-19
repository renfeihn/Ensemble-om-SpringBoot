/*
Navicat MySQL Data Transfer

Source Server         : ensemble
Source Server Version : 50516
Source Host           : 127.0.0.1:3306
Source Database       : ensemble

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2018-09-19 14:28:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mb_event_type
-- ----------------------------
DROP TABLE IF EXISTS mb_event_type;
CREATE TABLE mb_event_type (
  EVENT_TYPE varchar(50) NOT NULL COMMENT '事件类型',
  EVENT_DESC varchar(100) NOT NULL COMMENT '事件类型描述',
  EVENT_CLASS varchar(20) NOT NULL COMMENT '事件分类 取值于MB_EVENT_CLASS.EVENT_CLASS',
  PROCESS_METHOD varchar(1) NOT NULL COMMENT '处理方式 A：检查L类  C：提交类',
  STATUS varchar(1) NOT NULL COMMENT '状态 A：有效 F：无效',
  IS_STANDARD varchar(1) NOT NULL COMMENT '是否标准模板 Y：标准模板 N：非标准模板',
  COMPANY varchar(8) DEFAULT NULL,
  PRIMARY KEY (EVENT_TYPE)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='事件类型定义表：描述产品工厂使用的所有的事件类型';

-- ----------------------------
-- Records of mb_event_type
-- ----------------------------
INSERT INTO mb_event_type VALUES ('CLOSE', '销户基础事件', 'CLOSE', 'C', 'A', 'Y', '');
INSERT INTO mb_event_type VALUES ('CLOSE_CD601', '普卡销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_CL001', '个人住房贷款销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_CL002', '银团贷款销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_CL101', '个人住房贷款销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_CL102', '个人循环贷款销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_CL201', '流动资金贷款销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_CL301', '银团贷款销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_CL401', '垫款销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_CL501', '贴现贷款销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_CL601', '个人委托贷款销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_CL901', '个人住房贷款销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_CL902', '流动资金贷款销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_GL001', '内部账销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_GL101', '内部账销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_GL201', '内部账销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_GL202', '存放同业往帐销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_GL203', '同业存放来帐销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_GL301', '内部账销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RB101', '个人活期销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RB103', '个人活期销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RB121', '个人活期销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RB151', '个人整存整取销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RB152', '个人零存整取销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RB153', '个人协议存款销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RB154', '个人一天通知销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RB155', '个人七天通知销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RB157', '个人教育储蓄销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RB159', '个人定活两便销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RB171', '个人活期销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RB180', '个人定期一本通销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RB201', '单位活期销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RB203', '单位活期多币种销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RB221', '对公联名活期销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RB251', '单位定期销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RB253', '单位协议存款销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RB254', '单位活期销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RB255', '单位活期销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RB271', '个人活期销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RB280', '单位定期一本通销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RB301', '单位活期多币种存款销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RB351', '单位定期销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RB601', 'AIO销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RB701', 'II类个人活期销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RB702', 'III类个人活期销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RBA01', 'AIO销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RBDQ1', '单位活期销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RBDQ2', '个人定期一本通销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RBDQ3', '个人活期销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RBHQ1', '个人活期销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RBHQ2', '个人活期销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CLOSE_RBHQ3', '个人活期销户', 'CLOSE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CRET', '贷记基础事件', 'CRET', 'C', 'A', 'Y', '');
INSERT INTO mb_event_type VALUES ('CRET_GL001', '内部账存入', 'CRET', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CRET_GL101', '内部账存入', 'CRET', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CRET_GL201', '内部账存入', 'CRET', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CRET_GL202', '存放同业往帐贷记', 'CRET', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CRET_GL203', '同业存放来帐贷记', 'CRET', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CRET_GL301', '内部账存入', 'CRET', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE', '结息基础事件', 'CYCLE', 'C', 'A', 'Y', '');
INSERT INTO mb_event_type VALUES ('CYCLE_CD601', '对公AIO结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_CL001', '个人住房贷款结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_CL002', '银团贷款结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_CL101', '个人住房贷款结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_CL102', '个人循环贷款结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_CL201', '流动资金贷款结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_CL301', '银团贷款结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_CL401', '垫款结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_CL501', '贴现贷款结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_CL601', '个人委托贷款结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_CL901', '个人住房贷款结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_CL902', '流动资金贷款结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_GL001', '内部账结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_GL101', '内部账结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_GL201', '内部账结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_GL202', '存放同业往帐结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_GL203', '同业存放来帐结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_GL301', '内部账结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RB101', '个人活期结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RB103', '个人活期多币种结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RB121', '个人活期多币种存款结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RB151', '个人整存整取结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RB152', '个人零存整取结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RB153', '个人协议存款结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RB154', '个人一天通知结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RB155', '个人七天通知结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RB157', '个人教育储蓄结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RB159', '个人定活两便结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RB171', '个人活期多币种存款结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RB180', '个人定期一本通结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RB201', '单位活期结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RB203', '单位活期多币种结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RB221', '对公联名活期结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RB251', '单位定期结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RB253', '单位协议存款结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RB254', '个人整存整取结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RB255', '个人整存整取结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RB271', '个人活期多币种存款结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RB280', '单位定期一本通结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RB301', '单位活期多币种存款结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RB351', '单位定期结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RB601', '对公AIO结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RB701', 'II类个人活期结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RB702', 'III类个人活期结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RBA01', '对公AIO结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RBDQ1', '个人整存整取结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RBDQ2', '个人定期一本通结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RBDQ3', '个人活期多币种存款结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RBHQ1', '个人活期结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RBHQ2', '个人活期多币种存款结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('CYCLE_RBHQ3', '个人活期多币种存款结息', 'CYCLE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEBT', '借记基础事件', 'DEBT', 'C', 'A', 'Y', '');
INSERT INTO mb_event_type VALUES ('DEBT_GL001', '内部账支取', 'DEBT', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEBT_GL101', '内部账支取', 'DEBT', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEBT_GL201', '内部账支取', 'DEBT', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEBT_GL202', '存放同业往帐借记', 'DEBT', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEBT_GL203', '同业存放来帐借记', 'DEBT', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEBT_GL301', '内部账支取', 'DEBT', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEP', '存入基础事件', 'DEP', 'C', 'A', 'Y', '');
INSERT INTO mb_event_type VALUES ('DEP_RB101', '个人活期存入', 'DEP', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEP_RB103', '个人活期存入', 'DEP', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEP_RB121', '个人活期存入', 'DEP', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEP_RB151', '个人整存整取存入', 'DEP', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEP_RB152', '个人零存整取存入', 'DEP', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEP_RB153', '个人协议存款存入', 'DEP', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEP_RB154', '个人一天通知存入', 'DEP', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEP_RB155', '个人七天通知存入', 'DEP', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEP_RB157', '个人教育储蓄存入', 'DEP', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEP_RB159', '个人定活两便存入', 'DEP', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEP_RB171', '个人活期存入', 'DEP', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEP_RB201', '单位活期存入', 'DEP', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEP_RB203', '单位活期多币种存入', 'DEP', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEP_RB221', '对公联名活期存入', 'DEP', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEP_RB251', '单位定期存入', 'DEP', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEP_RB253', '单位协议存款存入', 'DEP', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEP_RB254', '个人整存整取存入', 'DEP', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEP_RB255', '个人整存整取存入', 'DEP', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEP_RB271', '个人活期存入', 'DEP', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEP_RB301', '单位活期多币种存款存入', 'DEP', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEP_RB351', '单位定期存入', 'DEP', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEP_RB701', 'II类个人活期存入', 'DEP', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEP_RB702', 'III类个人活期存入', 'DEP', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEP_RBDQ1', '个人整存整取存入', 'DEP', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEP_RBDQ3', '个人活期存入', 'DEP', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEP_RBHQ1', '个人活期存入', 'DEP', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEP_RBHQ2', '个人活期存入', 'DEP', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DEP_RBHQ3', '个人活期存入', 'DEP', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DRW', '发放基础事件', 'DRW', 'C', 'A', 'Y', '');
INSERT INTO mb_event_type VALUES ('DRW_CL001', '个人住房贷款发放', 'DRW', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DRW_CL002', '银团贷款发放', 'DRW', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DRW_CL101', '个人住房贷款发放', 'DRW', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DRW_CL102', '个人循环贷款发放', 'DRW', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DRW_CL201', '流动资金贷款发放', 'DRW', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DRW_CL301', '银团贷款发放', 'DRW', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DRW_CL401', '垫款发放', 'DRW', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DRW_CL501', '贴现贷款发放', 'DRW', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DRW_CL601', '个人委托贷款发放', 'DRW', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DRW_CL901', '个人住房贷款发放', 'DRW', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DRW_CL902', '流动资金贷款发放', 'DRW', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DUE', '到期基础事件', 'DUE', 'C', 'A', 'Y', '');
INSERT INTO mb_event_type VALUES ('DUE_CL001', '个人住房贷款到期', 'DUE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DUE_CL002', '银团贷款到期', 'DUE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DUE_CL101', '个人住房贷款到期', 'DUE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DUE_CL102', '个人循环贷款到期', 'DUE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DUE_CL201', '流动资金贷款到期', 'DUE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DUE_CL301', '银团贷款到期', 'DUE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DUE_CL401', '垫款到期', 'DUE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DUE_CL501', '贴现贷款到期', 'DUE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DUE_CL601', '个人委托贷款到期', 'DUE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DUE_CL901', '个人住房贷款到期', 'DUE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('DUE_CL902', '流动资金贷款到期', 'DUE', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN', '开户基础事件', 'OPEN', 'C', 'A', 'Y', '');
INSERT INTO mb_event_type VALUES ('OPEN_CD601', '对公AIO开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_CL001', '个人住房贷款开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_CL002', '银团贷款开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_CL101', '个人住房贷款开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_CL102', '个人循环贷款开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_CL201', '流动资金贷款开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_CL301', '银团贷款开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_CL401', '垫款开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_CL501', '贴现贷款开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_CL601', '个人委托贷款开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_CL901', '个人住房贷款开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_CL902', '流动资金贷款开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_GL001', '内部账开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_GL101', '内部账开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_GL201', '内部账开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_GL202', '存放同业往帐开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_GL203', '同业存放来帐开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_GL301', '内部账开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RB101', '个人活期开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RB103', '个人活期多币种开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RB121', '个人活期多币种存款开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RB151', '个人整存整取', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RB152', '个人零存整取开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RB153', '个人协议存款开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RB154', '个人一天通知开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RB155', '个人七天通知开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RB157', '个人教育储蓄开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RB159', '个人定活两便开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RB171', '个人活期多币种存款开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RB180', '个人定期一本通开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RB201', '单位活期开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RB203', '单位活期多币种开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RB221', '对公联名活期开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RB251', '单位定期开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RB253', '单位协议存款开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RB254', '个人整存整取', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RB255', '个人整存整取', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RB271', '个人活期多币种存款开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RB280', '单位定期一本通开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RB301', '单位活期多币种存款开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RB351', '单位定期开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RB601', '对公AIO开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RB701', 'II类个人活期开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RB702', 'III类个人活期开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RBA01', '对公AIO开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RBDQ1', '个人整存整取', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RBDQ2', '个人定期一本通开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RBDQ3', '个人活期多币种存款开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RBHQ1', '个人活期开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RBHQ2', '个人活期多币种存款开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('OPEN_RBHQ3', '个人活期多币种存款开户', 'OPEN', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('REC', '回收基础事件', 'REC', 'C', 'A', 'Y', '');
INSERT INTO mb_event_type VALUES ('REC_CL001', '个人住房贷款回收', 'REC', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('REC_CL002', '银团贷款回收', 'REC', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('REC_CL101', '个人住房贷款回收', 'REC', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('REC_CL102', '个人循环贷款回收', 'REC', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('REC_CL201', '流动资金贷款回收', 'REC', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('REC_CL301', '银团贷款回收', 'REC', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('REC_CL401', '垫款回收', 'REC', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('REC_CL501', '贴现贷款回收', 'REC', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('REC_CL601', '个人委托贷款回收', 'REC', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('REC_CL901', '个人住房贷款回收', 'REC', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('REC_CL902', '流动资金贷款回收', 'REC', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('RENEW', '转存基础事件', 'RENEW', 'C', 'A', 'Y', '');
INSERT INTO mb_event_type VALUES ('RENEW_RB151', '个人整存整取转存', 'RENEW', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('RENEW_RB154', '个人一天通知转存', 'RENEW', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('RENEW_RB155', '个人七天通知转存', 'RENEW', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('RENEW_RB159', '个人定活两便转存', 'RENEW', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('RENEW_RB180', '个人定期一本通转存', 'RENEW', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('RENEW_RB251', '单位定期转存', 'RENEW', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('RENEW_RB254', '个人整存整取转存', 'RENEW', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('RENEW_RB255', '个人整存整取转存', 'RENEW', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('RENEW_RB351', '单位定期转存', 'RENEW', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('RENEW_RBDQ1', '个人整存整取转存', 'RENEW', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('RENEW_RBDQ2', '个人定期一本通转存', 'RENEW', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('WTD', '支取基础事件', 'WTD', 'C', 'A', 'Y', '');
INSERT INTO mb_event_type VALUES ('WTD_RB101', '个人活期支取', 'WTD', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('WTD_RB103', '个人活期支取', 'WTD', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('WTD_RB121', '个人活期支取', 'WTD', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('WTD_RB151', '个人整存整取支取', 'WTD', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('WTD_RB152', '个人零存整取支取', 'WTD', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('WTD_RB153', '个人协议存款支取', 'WTD', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('WTD_RB154', '个人一天通知支取', 'WTD', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('WTD_RB155', '个人七天通知支取', 'WTD', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('WTD_RB157', '个人教育储蓄支取', 'WTD', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('WTD_RB159', '个人定活两便支取', 'WTD', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('WTD_RB171', '个人活期支取', 'WTD', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('WTD_RB201', '单位活期支取', 'WTD', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('WTD_RB203', '单位活期多币种支取', 'WTD', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('WTD_RB221', '对公联名活期支取', 'WTD', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('WTD_RB251', '单位定期支取', 'WTD', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('WTD_RB253', '单位协议存款支取', 'WTD', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('WTD_RB254', '个人定期支取', 'WTD', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('WTD_RB255', '个人定期支取', 'WTD', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('WTD_RB271', '个人活期支取', 'WTD', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('WTD_RB301', '同业活期支取', 'WTD', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('WTD_RB351', '同业定期支取', 'WTD', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('WTD_RB701', 'II类个人活期支取', 'WTD', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('WTD_RB702', 'III类个人活期支取', 'WTD', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('WTD_RBDQ1', '个人定期支取', 'WTD', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('WTD_RBDQ3', '个人活期支取', 'WTD', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('WTD_RBHQ1', '个人活期支取', 'WTD', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('WTD_RBHQ2', '个人活期支取', 'WTD', 'C', 'A', 'N', '');
INSERT INTO mb_event_type VALUES ('WTD_RBHQ3', '个人活期支取', 'WTD', 'C', 'A', 'N', '');
