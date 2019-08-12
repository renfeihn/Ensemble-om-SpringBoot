/*
Navicat MySQL Data Transfer

Source Server         : ensemble
Source Server Version : 50516
Source Host           : 127.0.0.1:3306
Source Database       : ensemble

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2018-09-19 14:27:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for irl_prod_int
-- ----------------------------
DROP TABLE IF EXISTS `irl_prod_int`;
CREATE TABLE `irl_prod_int` (
  `PROD_TYPE` varchar(50) NOT NULL COMMENT '产品类型 取值于MB_PROD_TYPE.PROD_TYPE',
  `EVENT_TYPE` varchar(50) NOT NULL COMMENT '事件类型 MB_EVENT_CLASS.EVENT_CLASS',
  `INT_TYPE` varchar(3) DEFAULT NULL COMMENT '利率类型 IRL_INT_TYPE.INT_TAX_TYPE',
  `INT_CLASS` varchar(20) NOT NULL COMMENT '利息分类 IRL_INT_ROLL.INT_CLASS INT:正常利息,ODP:罚息,ODI:复利,ODODP:罚息的复利,ODODI:复利的复利,ODF:透支利息,PDUE:超期利息',
  `TAX_TYPE` varchar(3) DEFAULT NULL COMMENT '税率类型  IRL_INT_TYPE.INT_TAX_TYPE ',
  `RATE_AMT_ID` varchar(30) NOT NULL COMMENT '利率计算金额编码   取自IRL_AMT_EXPRESSION金额计算表达式信息表',
  `INT_AMT_ID` varchar(30) NOT NULL COMMENT '利息计算金额编码   取自IRL_AMT_EXPRESSION金额计算表达式信息表',
  `RECAL_METHOD` varchar(1) NOT NULL COMMENT '重算利息方法   N:重新按模型计算,H:取历史利率计算, I:取历史计提后再按模型计算',
  `COMPANY` varchar(20) DEFAULT NULL COMMENT '法人代码 FM_COMPANY.COMPANY',
  `INT_START` varchar(1) DEFAULT '0' COMMENT '计息起始日期取值方法   O:开户日期,M:到期日,I:计提日期,C:表示按上一结息日',
  `INT_DAYS_TYPE` varchar(1) DEFAULT NULL COMMENT '靠档天数计算方式      A：按存期（起息日加上存期）,B：实际天数（从起息日开始到计算日）,C:计提天数（从上一结息日开始到计算日）',
  `INT_CALC_BAL` varchar(3) DEFAULT NULL COMMENT '计息方式 MB_ATTR_VALUE.INT_CALC_TYPE AB:积数计息,EB:分段计息,BS:差减法计息  ',
  `INT_APPL_TYPE` varchar(1) DEFAULT NULL COMMENT '利率启用方式 MB_ATTR_VALUE.INT_APPL_TYPE N:利率不变更,如果接口中有利率（存量业务），则以此值为准，如没有（新办理业务），则取系统最新利率,B:利率生效日当天生效,始终取系统最新利率计算利息。,S:从下一个计息周期开始生效,R:按照约定的生效周期开始生效,待考虑,',
  `ROLL_FREQ` varchar(2) DEFAULT NULL COMMENT '利率变更周期',
  `ROLL_DAY` varchar(2) DEFAULT NULL COMMENT '下一个利率变更日',
  `MIN_RATE` decimal(15,8) DEFAULT NULL COMMENT '最小利率',
  `MAX_RATE` decimal(15,8) DEFAULT NULL COMMENT '最大利率',
  `INT_RATE_IND` varchar(1) DEFAULT NULL COMMENT '利率靠档标志',
  `MONTH_BASIS` varchar(3) DEFAULT NULL COMMENT '月基准 ACT:实际天数 30D:每月30天 ACT:按实际天数,30:按30天',
  `GROUP_RULE_TYPE` varchar(2) NOT NULL DEFAULT '02' COMMENT '分组规则关系   02:取最大,03:取最小,04:取平均值,05:取叠加,06:取权重',
  `SPLIT_ID` varchar(10) DEFAULT NULL COMMENT '首个分段ID',
  `SPLIT_TYPE` varchar(3) DEFAULT NULL COMMENT '分段类型:     先金额后周期：PA     先周期后金额：AP ',
  `RULEID` varchar(50) DEFAULT NULL COMMENT '规则ID',
  `TRAN_TIMESTAMP` varchar(17) DEFAULT NULL COMMENT '交易时间戳',
  `TRAN_TIME` decimal(11,0) DEFAULT NULL COMMENT '交易时间',
  `ACCT_RATE_EFFECT` varchar(1) DEFAULT 'N' COMMENT '使用分户利率标志 Y：使用,N：不使用',
  PRIMARY KEY (`PROD_TYPE`,`EVENT_TYPE`,`INT_CLASS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品利率信息表';

-- ----------------------------
-- Records of irl_prod_int
-- ----------------------------
INSERT INTO `irl_prod_int` VALUES ('CL001', 'ACR', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL001', 'ACR', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL001', 'ACR', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL001', 'ACR', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL001', 'ACR', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL001', 'OPEN', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL001', 'OPEN', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL001', 'OPEN', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL001', 'OPEN', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL001', 'OPEN', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL001', 'PRE', 'C5', 'INT', null, '700', '700', 'H', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL001', 'PSD', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL001', 'PSD', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL001', 'PSD', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL001', 'PSD', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL001', 'PSD', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL002', 'ACR', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL002', 'ACR', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL002', 'ACR', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL002', 'ACR', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL002', 'ACR', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL002', 'OPEN', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL002', 'OPEN', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL002', 'OPEN', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL002', 'OPEN', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL002', 'OPEN', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL002', 'PRE', 'C5', 'INT', null, '700', '700', 'H', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL002', 'PSD', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL002', 'PSD', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL002', 'PSD', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL002', 'PSD', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL002', 'PSD', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL003', 'ACR', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL003', 'ACR', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL003', 'ACR', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL003', 'ACR', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL003', 'ACR', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL003', 'OPEN', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL003', 'OPEN', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL003', 'OPEN', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL003', 'OPEN', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL003', 'OPEN', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL003', 'PRE', 'C5', 'INT', null, '700', '700', 'H', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL003', 'PSD', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL003', 'PSD', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL003', 'PSD', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL003', 'PSD', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL003', 'PSD', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL004', 'ACR', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'R', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL004', 'OPEN', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'R', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL004', 'PSD', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL005', 'ACR', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'R', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL005', 'OPEN', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'R', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL005', 'PSD', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL007', 'ACR', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL007', 'ACR', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL007', 'ACR', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL007', 'ACR', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL007', 'ACR', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL007', 'OPEN', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL007', 'OPEN', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL007', 'OPEN', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL007', 'OPEN', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL007', 'OPEN', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL007', 'PRE', 'C5', 'INT', null, '700', '700', 'H', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL007', 'PSD', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL007', 'PSD', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL007', 'PSD', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL007', 'PSD', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL007', 'PSD', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL008', 'ACR', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL008', 'ACR', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL008', 'ACR', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL008', 'ACR', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL008', 'ACR', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL008', 'OPEN', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL008', 'OPEN', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL008', 'OPEN', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL008', 'OPEN', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL008', 'OPEN', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL008', 'PRE', 'C5', 'INT', null, '700', '700', 'H', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL008', 'PSD', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL008', 'PSD', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL008', 'PSD', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL008', 'PSD', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL008', 'PSD', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL009', 'ACR', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL009', 'ACR', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL009', 'ACR', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL009', 'ACR', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL009', 'ACR', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL009', 'OPEN', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL009', 'OPEN', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL009', 'OPEN', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL009', 'OPEN', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL009', 'OPEN', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL009', 'PRE', 'C5', 'INT', null, '700', '700', 'H', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL009', 'PSD', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL009', 'PSD', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL009', 'PSD', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL009', 'PSD', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL009', 'PSD', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL100', 'ACR', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL100', 'ACR', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL100', 'ACR', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL100', 'ACR', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL100', 'ACR', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL100', 'OPEN', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL100', 'OPEN', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL100', 'OPEN', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL100', 'OPEN', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL100', 'OPEN', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL100', 'PRE', 'C5', 'INT', null, '700', '700', 'H', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL200', 'ACR', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL200', 'ACR', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL200', 'ACR', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL200', 'ACR', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL200', 'ACR', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL200', 'OPEN', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL200', 'OPEN', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL200', 'OPEN', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL200', 'OPEN', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL200', 'OPEN', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL200', 'PRE', 'C5', 'INT', null, '700', '700', 'H', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL200', 'PSD', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL200', 'PSD', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL200', 'PSD', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL200', 'PSD', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL200', 'PSD', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL201', 'ACR', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL201', 'ACR', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL201', 'ACR', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL201', 'ACR', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL201', 'ACR', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL201', 'OPEN', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL201', 'OPEN', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL201', 'OPEN', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL201', 'OPEN', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL201', 'OPEN', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL201', 'PRE', 'C5', 'INT', null, '700', '700', 'H', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL201', 'PSD', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL201', 'PSD', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL201', 'PSD', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL201', 'PSD', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL201', 'PSD', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL300', 'ACR', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'N', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL300', 'OPEN', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'N', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL300', 'PSD', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'N', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL301', 'ACR', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'N', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL301', 'OPEN', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'N', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL301', 'PSD', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'N', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL302', 'ACR', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'N', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL302', 'OPEN', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'N', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL302', 'PSD', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'N', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL303', 'ACR', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'N', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL303', 'OPEN', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'N', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL303', 'PSD', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'N', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL304', 'ACR', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'N', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL304', 'OPEN', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'N', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL304', 'PSD', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'N', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL400', 'ACR', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL400', 'ACR', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL400', 'OPEN', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL400', 'OPEN', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL400', 'PSD', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL400', 'PSD', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL500', 'ACR', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL500', 'ACR', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL500', 'ACR', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL500', 'ACR', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL500', 'ACR', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL500', 'OPEN', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL500', 'OPEN', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL500', 'OPEN', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL500', 'OPEN', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL500', 'OPEN', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL500', 'PRE', 'C5', 'INT', null, '700', '700', 'H', null, 'O', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL500', 'PSD', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL500', 'PSD', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL500', 'PSD', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL500', 'PSD', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL500', 'PSD', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL600', 'ACR', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL600', 'ACR', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL600', 'ACR', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL600', 'ACR', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL600', 'ACR', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL600', 'OPEN', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL600', 'OPEN', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL600', 'OPEN', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL600', 'OPEN', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL600', 'OPEN', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL600', 'PRE', 'C5', 'INT', null, '700', '700', 'H', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL600', 'PSD', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL600', 'PSD', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL600', 'PSD', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL600', 'PSD', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL600', 'PSD', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL601', 'ACR', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL601', 'ACR', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL601', 'ACR', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL601', 'ACR', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL601', 'ACR', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL601', 'OPEN', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL601', 'OPEN', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL601', 'OPEN', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL601', 'OPEN', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL601', 'OPEN', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL601', 'PRE', 'C5', 'INT', null, '700', '700', 'H', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL601', 'PSD', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL601', 'PSD', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL601', 'PSD', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL601', 'PSD', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL601', 'PSD', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL700', 'ACR', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL700', 'ACR', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL700', 'ACR', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL700', 'ACR', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL700', 'ACR', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL700', 'OPEN', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL700', 'OPEN', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL700', 'OPEN', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL700', 'OPEN', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL700', 'OPEN', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL700', 'PRE', 'C5', 'INT', null, '700', '700', 'H', null, 'O', 'B', 'EB', 'S', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL700', 'PSD', 'C5', 'INT', null, '700', '700', 'N', null, 'O', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL700', 'PSD', 'FLC', 'ODI', null, '600', '600', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL700', 'PSD', 'FLC', 'ODODI', null, '900', '900', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL700', 'PSD', 'FXC', 'ODODP', null, '1000', '1000', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('CL700', 'PSD', 'FXC', 'ODP', null, '500', '500', 'N', null, 'C', 'B', 'EB', 'A', null, null, '0.00000000', '10.00000000', null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('FTE01', 'ACR', 'HQI', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('FTE01', 'CLOSE', 'HQI', 'INT', null, '200', '502', 'I', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('FTE01', 'OPEN', 'HQI', 'INT', null, '200', '502', 'N', null, 'O', 'B', 'AB', 'F', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('FTF01', 'ACR', 'HQI', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('FTF01', 'CLOSE', 'HQI', 'INT', null, '200', '502', 'I', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('FTF01', 'OPEN', 'HQI', 'INT', null, '200', '502', 'N', null, 'O', 'B', 'AB', 'F', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('FTI01', 'ACR', 'HQI', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('FTI01', 'CLOSE', 'HQI', 'INT', null, '200', '502', 'I', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('FTI01', 'OPEN', 'HQI', 'INT', null, '200', '502', 'N', null, 'O', 'B', 'AB', 'F', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('FTN01', 'ACR', 'HQI', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('FTN01', 'CLOSE', 'HQI', 'INT', null, '200', '502', 'I', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('FTN01', 'OPEN', 'HQI', 'INT', null, '200', '502', 'N', null, 'O', 'B', 'AB', 'F', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('FTU01', 'ACR', 'HQI', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'EB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('FTU01', 'CLOSE', 'HQI', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'EB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('FTU01', 'OPEN', 'HQI', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'EB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('FZ101', 'ACR', 'HQI', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', 'M', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('FZ101', 'CLOSE', 'HQI', 'INT', null, '200', '502', 'I', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', 'M', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('FZ101', 'OPEN', 'HQI', 'INT', null, '200', '502', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', 'M', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('FZ101', 'QZKH', 'HQI', 'INT', null, '200', '502', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', 'M', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM001', 'ACR', 'HNR', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, null, '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM001', 'ACR', 'HQI', 'PDUE', null, '500', '500', 'N', null, 'M', 'B', 'AB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM001', 'MRT', 'HNR', 'INT', null, '200', '200', 'I', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, null, '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM001', 'OPEN', 'HNR', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, null, '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM001', 'PRE', 'HQI', 'INT', null, '410', '504', 'N', null, 'O', 'B', 'AB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM001', 'PSD', 'HQI', 'PDUE', null, '410', '504', 'I', null, 'M', 'B', 'AB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM101', 'ACR', 'HNR', 'INT', null, '100', '100', 'N', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, null, '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM101', 'ACR', 'HQI', 'PDUE', null, '500', '500', 'N', null, 'M', 'B', 'AB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM101', 'MRT', 'HNR', 'INT', null, '200', '200', 'I', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, null, '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM101', 'OPEN', 'HNR', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, null, '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM101', 'PRE', 'HQI', 'INT', null, '410', '504', 'N', null, 'O', 'B', 'AB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM101', 'PSD', 'HQI', 'PDUE', null, '410', '504', 'I', null, 'M', 'B', 'AB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM102', 'ACR', 'HNC', 'INT', null, '100', '100', 'N', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, null, '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM102', 'ACR', 'HQI', 'PDUE', null, '500', '500', 'N', null, 'M', 'B', 'AB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM102', 'MRT', 'HNC', 'INT', null, '200', '200', 'I', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, null, '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM102', 'OPEN', 'HNC', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, null, '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM102', 'PRE', 'HQI', 'INT', null, '410', '504', 'N', null, 'O', 'B', 'AB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM102', 'PSD', 'HQI', 'PDUE', null, '410', '504', 'I', null, 'M', 'B', 'AB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM201', 'ACR', 'TYR', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, null, '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM201', 'ACR', 'HQI', 'PDUE', null, '500', '500', 'N', null, 'M', 'B', 'AB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM201', 'MRT', 'TYR', 'INT', null, '200', '200', 'I', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, null, '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM201', 'OPEN', 'TYR', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, null, '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM201', 'PRE', 'HQI', 'INT', null, '410', '504', 'N', null, 'O', 'B', 'AB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM201', 'PSD', 'HQI', 'PDUE', null, '410', '504', 'I', null, 'M', 'B', 'AB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM202', 'ACR', 'TYC', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, null, '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM202', 'ACR', 'HQI', 'PDUE', null, '500', '500', 'N', null, 'M', 'B', 'AB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM202', 'MRT', 'TYC', 'INT', null, '200', '200', 'I', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, null, '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM202', 'OPEN', 'TYC', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, null, '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM202', 'PRE', 'HQI', 'INT', null, '410', '504', 'N', null, 'O', 'B', 'AB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('MM202', 'PSD', 'HQI', 'PDUE', null, '410', '504', 'I', null, 'M', 'B', 'AB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('N101', 'ACR', 'COM', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'EB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('N101', 'CLOSE', 'COM', 'INT', null, '200', '200', 'I', null, 'O', 'B', 'EB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('N101', 'OPEN', 'COM', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'EB', 'F', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('N102', 'ACR', 'CON', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'EB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('N102', 'CLOSE', 'CON', 'INT', null, '200', '200', 'I', null, 'O', 'B', 'EB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('N102', 'OPEN', 'CON', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'EB', 'F', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('N103', 'ACR', 'BAN', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'EB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('N103', 'CLOSE', 'BAN', 'INT', null, '200', '200', 'I', null, 'O', 'B', 'EB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('N103', 'OPEN', 'BAN', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'EB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('N104', 'ACR', 'BAM', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'EB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('N104', 'CLOSE', 'BAM', 'INT', null, '200', '200', 'I', null, 'O', 'B', 'EB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('N104', 'OPEN', 'BAM', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'EB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('N105', 'ACR', 'SXT', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'EB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('N105', 'CLOSE', 'SXT', 'INT', null, '200', '200', 'I', null, 'O', 'B', 'EB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('N105', 'OPEN', 'SXT', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'EB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('NRA01', 'ACR', 'HQI', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'EB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('NRA01', 'CLOSE', 'HQI', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'EB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('NRA01', 'OPEN', 'HQI', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'EB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB001', 'ACR', 'HQI', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB001', 'CLOSE', 'HQI', 'INT', null, '200', '502', 'I', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB001', 'OPEN', 'HQI', 'INT', null, '200', '502', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB002', 'ACR', 'HQI', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'EB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB002', 'CLOSE', 'HQI', 'INT', null, '200', '200', 'I', null, 'O', 'B', 'EB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB002', 'OPEN', 'HQI', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'EB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB003', 'ACR', 'DR1', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB003', 'ACR', 'HQI', 'PDUE', null, '500', '500', 'N', null, 'M', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB003', 'MRT', 'DR1', 'INT', null, '200', '200', 'I', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB003', 'OPEN', 'DR1', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB003', 'PRE', 'HQI', 'INT', null, '410', '504', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB003', 'PSD', 'HQI', 'PDUE', null, '410', '504', 'I', null, 'M', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB004', 'ACR', 'LCZ', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'AB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB004', 'ACR', 'HQI', 'PDUE', null, '500', '500', 'N', null, 'M', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB004', 'MRT', 'LCZ', 'INT', null, '200', '503', 'N', null, 'O', 'A', 'AB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB004', 'OPEN', 'LCZ', 'INT', null, '200', '503', 'N', null, 'O', 'A', 'AB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB004', 'PRE', 'HQI', 'INT', null, '410', '400', 'N', null, 'M', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB005', 'ACR', 'TZ7', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB005', 'FAD', 'HQI', 'INT', null, '410', '504', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB005', 'MRT', 'TZ7', 'INT', null, '200', '410', 'I', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB005', 'OPEN', 'TZ7', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB006', 'ACR', 'DHL', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'BS', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB006', 'CLOSE', 'DHL', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'BS', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB006', 'OPEN', 'DHL', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'BS', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB007', 'ACR', 'XY1', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB007', 'ACR', 'HQI', 'PDUE', null, '500', '500', 'N', null, 'M', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB007', 'OPEN', 'XY1', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB007', 'OPEN', 'HQI', 'PDUE', null, '500', '501', 'N', null, 'M', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB007', 'OPEN', 'HQI', 'WYINT', null, '200', '400', 'N', null, 'O', 'A', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB007', 'PRE', 'HQI', 'INT', null, '410', '504', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB008', 'ACR', 'HQI', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB008', 'CLOSE', 'HQI', 'INT', null, '200', '502', 'I', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB008', 'OPEN', 'HQI', 'INT', null, '200', '502', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB009', 'ACR', 'DR1', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB009', 'ACR', 'HQI', 'PDUE', null, '500', '500', 'N', null, 'M', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB009', 'MRT', 'DR1', 'INT', null, '200', '200', 'I', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB009', 'OPEN', 'DR1', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB009', 'PRE', 'HQI', 'INT', null, '410', '504', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB009', 'PSD', 'HQI', 'PDUE', null, '410', '504', 'I', null, 'M', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB101', 'ACR', 'HQI', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB101', 'CLOSE', 'HQI', 'INT', null, '200', '502', 'I', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB101', 'OPEN', 'HQI', 'INT', null, '200', '502', 'N', null, 'O', 'B', 'AB', 'F', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB103', 'ACR', 'HQI', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'EB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB103', 'CLOSE', 'HQI', 'INT', null, '200', '200', 'I', null, 'O', 'B', 'EB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB103', 'OPEN', 'HQI', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'EB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB121', 'ACR', 'HQI', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB121', 'CLOSE', 'HQI', 'INT', null, '200', '502', 'I', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB121', 'OPEN', 'HQI', 'INT', null, '200', '502', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB131', 'ACR', 'DR1', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB131', 'ACR', 'HQI', 'PDUE', null, '500', '500', 'N', null, 'M', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB131', 'DCC', 'DR1', 'INT', null, '200', '200', 'H', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB131', 'MRT', 'DR1', 'INT', null, '200', '200', 'I', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB131', 'OPEN', 'DR1', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'EB', 'F', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB131', 'PRE', 'HQI', 'INT', null, '410', '504', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB131', 'PSD', 'HQI', 'PDUE', null, '410', '504', 'I', null, 'M', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB151', 'ACR', 'DR1', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB151', 'ACR', 'HQI', 'PDUE', null, '500', '500', 'N', null, 'M', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB151', 'DCC', 'DR1', 'INT', null, '200', '200', 'H', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB151', 'MRT', 'DR1', 'INT', null, '200', '200', 'I', null, 'O', 'A', 'EB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB151', 'OPEN', 'DR1', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'EB', 'F', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB151', 'PRE', 'HQI', 'INT', null, '410', '504', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB151', 'PSD', 'HQI', 'PDUE', null, '410', '504', 'I', null, 'M', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB152', 'ACR', 'LCZ', 'INT', null, '200', '200', 'N', null, 'O', 'A', 'AB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB152', 'ACR', 'HQI', 'PDUE', null, '500', '500', 'N', null, 'M', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB152', 'MRT', 'LCZ', 'INT', null, '200', '503', 'I', null, 'O', 'A', 'AB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB152', 'OPEN', 'LCZ', 'INT', null, '200', '503', 'N', null, 'O', 'A', 'AB', 'N', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB152', 'PRE', 'HQI', 'INT', null, '410', '400', 'N', null, 'M', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('RB154', 'ACR', 'TZ1', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'AB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('V105', 'ACR', 'SXT', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'EB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('V105', 'CLOSE', 'SXT', 'INT', null, '200', '200', 'I', null, 'O', 'B', 'EB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
INSERT INTO `irl_prod_int` VALUES ('V105', 'OPEN', 'SXT', 'INT', null, '200', '200', 'N', null, 'O', 'B', 'EB', 'A', null, null, null, null, null, 'ACT', '02', null, null, null, null, null, null);
