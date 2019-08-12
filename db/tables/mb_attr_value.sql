/*
Navicat MySQL Data Transfer

Source Server         : ensemble
Source Server Version : 50516
Source Host           : 127.0.0.1:3306
Source Database       : ensemble

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2018-09-19 14:27:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mb_attr_value
-- ----------------------------
DROP TABLE IF EXISTS `mb_attr_value`;
CREATE TABLE `mb_attr_value` (
  `ATTR_KEY` varchar(30) NOT NULL COMMENT '参数KEY值 取值于MB_ATTR_TYPE.ATTR_KEY',
  `ATTR_VALUE` varchar(30) NOT NULL COMMENT '参数值',
  `VALUE_DESC` varchar(100) NOT NULL COMMENT '参数值描述',
  `REF_TABLE` varchar(50) DEFAULT NULL COMMENT '引用表名',
  `REF_CONDITION` varchar(1000) DEFAULT NULL COMMENT '引用条件',
  `REF_COLUMNS` varchar(50) DEFAULT NULL COMMENT '关联表描述列\r\n            ',
  PRIMARY KEY (`ATTR_KEY`,`ATTR_VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='参数值定义表：描述产品工厂允许的参数值范围';

-- ----------------------------
-- Records of mb_attr_value
-- ----------------------------
INSERT INTO `mb_attr_value` VALUES ('ACCT_BAL_FLAG', '00', '不记录余额', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_BAL_FLAG', '01', '子账户记录余额', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_BAL_FLAG', '10', '主账户记录余额', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_BAL_FLAG', '11', '主子都记录余额', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_CLASS', '1', 'I类账户', '', '', '');
INSERT INTO `mb_attr_value` VALUES ('ACCT_CLASS', '2', 'II类账户', '', '', '');
INSERT INTO `mb_attr_value` VALUES ('ACCT_CLASS', '3', 'III类账户', '', '', '');
INSERT INTO `mb_attr_value` VALUES ('ACCT_EXEC', ' ', '客户经理', 'FM_ACCT_EXEC', '1=1', 'ACCT_EXEC,ACCT_EXEC_NAME');
INSERT INTO `mb_attr_value` VALUES ('ACCT_INT_FLAG', '00', '不计息', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_INT_FLAG', '01', '子账户计息', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_INT_FLAG', '10', '主账户计息', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_INT_FLAG', '11', '主子账户都计息', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_NATURE', '1', '个人储蓄户', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_NATURE', '15', '个人人民币定期存款户', '', '', '');
INSERT INTO `mb_attr_value` VALUES ('ACCT_NATURE', '16', '公司人民币定期存款户', '', '', '');
INSERT INTO `mb_attr_value` VALUES ('ACCT_NATURE', '2', '个人结算户', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_NATURE', '3', '一般户', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_NATURE', '4', '基本户', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_NATURE', '5', '临时户', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_NATURE', '6', '专用户', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_NATURE', '7', '验资户', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_REAL_FLAG', '01', '子实账户', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_REAL_FLAG', '10', '主实账户', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_REAL_FLAG', '11', '主子全部实账户', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_STATUS', 'A', '活动账户状态', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_STATUS', 'C', '关闭', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_STATUS', 'D', '睡眠', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_STATUS', 'H', '待激活', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_STATUS', 'O', '转营业外', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_STATUS', 'P', '逾期', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_STATUS', 'S', '限制账户状态', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_STRUCT_FLAG', '1', '一层账户', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_STRUCT_FLAG', '2', '二层账户', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_TYPE', 'A', 'AIO账户', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_TYPE', 'C', '结算账户', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_TYPE', 'D', '垫款', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_TYPE', 'E', '委托贷款', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_TYPE', 'I', '内部账户', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_TYPE', 'M', '普通贷款', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_TYPE', 'N', '存放同业往帐账户', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_TYPE', 'S', '储蓄账户', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_TYPE', 'T', '定期账户', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_TYPE', 'U', '贴现贷款', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_TYPE', 'V', '存放同业来帐账户', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('ACCT_TYPE', 'Y', '银团贷款', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('ACTUAL_OR_LEDGER_BAL', 'A', '账面余额', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ACTUAL_OR_LEDGER_BAL', 'L', '可用余额', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ALL_DEP_FLAG', '0', '不允许通兑', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ALL_DEP_FLAG', '1', '允许全行通兑', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ALL_DEP_FLAG', '2', '允许分行通兑', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ALL_DRA_FLAG', '0', '不允许通存', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ALL_DRA_FLAG', '1', '允许全行通存', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ALL_DRA_FLAG', '2', '允许分行通存', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('AMT_CALC_TYPE', '0', '余额增加', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('AMT_CALC_TYPE', '1', '余额减少', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('AMT_CALC_TYPE', '2', '发放金额增加', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('AMT_CALC_TYPE', '3', '未到期本金增加', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('AMT_CALC_TYPE', '4', '逾期利息增加', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('AMT_CALC_TYPE', '5', '逾期罚息增加', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('AMT_CALC_TYPE', '6', '逾期复利增加', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('AMT_CALC_TYPE', '7', '逾期本金减少', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('AMT_CALC_TYPE', '8', '逾期利息减少', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('AMT_CALC_TYPE', '9', '逾期罚息减少', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('AMT_CALC_TYPE', 'a', '逾期复利减少', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('AMT_CALC_TYPE', 'b', '未到期本金减少', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('AMT_CALC_TYPE', 'c', '逾期本金增加', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('AMT_CALC_TYPE', 'd', '未到期本金减少', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('AMT_CALC_TYPE', 'e', '余额增加无流水', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('AMT_CALC_TYPE', 'f', '发放金额增加无流水', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('AMT_CALC_TYPE', 'g', '余额减少无流水', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('AMT_CALC_TYPE', 'h', '额度减少无流水', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('AMT_CALC_TYPE', 'i', '透支金额减少无流水', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('AMT_TYPE', 'BAL', '余额', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('AMT_TYPE', 'DDA', '发放金额', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('AMT_TYPE', 'INTP', '逾期利息', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('AMT_TYPE', 'LIM', '额度金额', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('AMT_TYPE', 'OD', '透支金额', '', '', '');
INSERT INTO `mb_attr_value` VALUES ('AMT_TYPE', 'ODIP', '逾期复利', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('AMT_TYPE', 'ODPP', '逾期罚息', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('AMT_TYPE', 'OSL', '未到期本金', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('AMT_TYPE', 'PRD', '逾期本金', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('AMT_TYPE', 'PRI', '本金', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('AUTO_RENEW_ROLLOVER', 'N', '不自动转存', '', '', '');
INSERT INTO `mb_attr_value` VALUES ('AUTO_RENEW_ROLLOVER', 'O', '本息自动转存', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('AUTO_RENEW_ROLLOVER', 'W', '本金自动转存', '', '', '');
INSERT INTO `mb_attr_value` VALUES ('BAL_DIRECT_TYPE', 'C', '贷方（负债用-标识）', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('BAL_DIRECT_TYPE', 'D', '借方（资产用+标识）', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('BAL_TYPE', 'CA', '钞余额', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('BAL_TYPE', 'TT', '汇余额', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('BAL_TYPE_PRIORITY', 'CA', '钞余额类型', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('BAL_TYPE_PRIORITY', 'TT', '汇余额类型', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('BAL_UPD_TYPE', 'R', '实时更新', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('BAL_UPD_TYPE', 'T', '日终更新', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('CALC_BAL_TYPE', 'DEP', '存入', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('CALC_BAL_TYPE', 'DRW', '发放', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('CALC_BAL_TYPE', 'DUE', '结息', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('CALC_BAL_TYPE', 'NOT', '表外处理', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('CALC_BAL_TYPE', 'PRE', '提前支取', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('CALC_BAL_TYPE', 'REC', '回收', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('CALC_BAL_TYPE', 'REP', '回收', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('CALC_BAL_TYPE', 'TRA', '转账', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('CALC_BAL_TYPE', 'WTD', '支取', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('CASH_RESTRAINT_IND', 'C', '现金交易', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('CASH_RESTRAINT_IND', 'O', '其他交易', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('CASH_RESTRAINT_IND', 'T', '转账交易', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('CASH_TRANBOX_FLAG', 'C', '现金减少', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('CASH_TRANBOX_FLAG', 'D', '现金增加', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('CCY', ' ', '币种', 'FM_CURRENCY', '1=1', 'CCY,CCY_DESC');
INSERT INTO `mb_attr_value` VALUES ('CD_FUNCTION', '0', '是', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('CD_FUNCTION', '1', '否', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('CD_MADE_STANDARD', '0', '非记名', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('CD_MADE_STANDARD', '1', '记名', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('CD_MEDIUM', '0', '磁条卡', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('CD_MEDIUM', '1', 'IC卡', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('CD_VALID_FLAG', '0', '有效', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('CD_VALID_FLAG', '1', '无效', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('CD_VALID_FLAG', '2', '已使用', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('CLIENT_IND', 'N', '正常客户', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('CLIENT_IND', 'S', '银行员工客户', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('CLIENT_IND', 'V', 'VIP客户', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('CLIENT_TYPE', ' ', '客户类型', 'CIF_CLIENT_TYPE', '1=1', 'CLIENT_TYPE,CLIENT_TYPE_DESC');
INSERT INTO `mb_attr_value` VALUES ('CL_ADVANCE_TYPE', '01', '直贴', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('CL_ADVANCE_TYPE', '02', '买方付息', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('CL_ADVANCE_TYPE', '03', '转帖', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('CL_ADVANCE_TYPE', '04', '买入返售', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('CL_ADVANCE_TYPE', '05', '卖出回购', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('CL_ADVANCE_TYPE', '06', '再贴', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('CR_DR_MAINT_IND', 'C', '贷方', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('CR_DR_MAINT_IND', 'D', '借方', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('CYCLE_FREQ', '2M', '计息周期', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('CYCLE_FREQ', '3M', '计息周期', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('DOC_TYPE', ' ', '凭证类型', 'TB_VOUCHER_DEF', '1=1', 'DOC_TYPE,DOC_TYPE_DESC');
INSERT INTO `mb_attr_value` VALUES ('ET_SETTLE_FLAG', '01', '发放回收都不自动', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ET_SETTLE_FLAG', '02', '发放自动', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('ET_SETTLE_FLAG', '03', '回收自动', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('ET_SETTLE_FLAG', '04', '发放回收都自动', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('FIXED_CALL', 'A', '协议存款', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('FIXED_CALL', 'B', '定期一本通', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('FIXED_CALL', 'C', '通知存款', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('FIXED_CALL', 'D', '定活两便', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('FIXED_CALL', 'E', '教育储蓄', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('FIXED_CALL', 'F', '整存争取', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('FIXED_CALL', 'L', '零存整取', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('FUND_TRAN_TYPE', '0', '不控制', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('FUND_TRAN_TYPE', '1', '现金', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('FUND_TRAN_TYPE', '2', '同一客户转账', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('FUND_TRAN_TYPE', '3', '同关系客户转账', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('FUND_TRAN_TYPE', '4', '转账', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('GL_TYPE', 'I', '内部账', '', '', '');
INSERT INTO `mb_attr_value` VALUES ('GL_TYPE', 'N', '往账', '', '', '');
INSERT INTO `mb_attr_value` VALUES ('GL_TYPE', 'V', '来帐', '', '', '');
INSERT INTO `mb_attr_value` VALUES ('GRACE_END_MONTH', 'N', '否', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('GRACE_END_MONTH', 'Y', '是', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('GRACE_PERIOD', '1', '宽限期', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('HUNTING_STATUS', 'D', 'XX扣款', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('INLAND_OFFSHORE', 'I', '境内客户', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('INLAND_OFFSHORE', 'O', '境外客户', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('INTER_BANK_FLAG', '0', '行内拆借', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('INTER_BANK_FLAG', '1', '同业拆借', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('INTER_BANK_TYPE', 'IN', '拆入', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('INTER_BANK_TYPE', 'OUT', '拆出', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('INT_APPL_TYPE', 'A', '立即生效', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('INT_APPL_TYPE', 'N', '固定利率', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('INT_APPL_TYPE', 'R', '利率变动周期生效', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('INT_APPL_TYPE', 'S', '结息日生效', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('INT_DAY', '21', '结息日', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('INT_FLAG', 'N', '不计息', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('INT_FLAG', 'Y', '计息', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('LEGAL_PERSON', ' DCITS', '神州数码', '', '', '');
INSERT INTO `mb_attr_value` VALUES ('LEGAL_PERSON', ' OTH', '其他', '', '', '');
INSERT INTO `mb_attr_value` VALUES ('LG_AGRE_REL', '01', '从属性保函', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('LG_AGRE_REL', '02', '独立保函', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('LG_ATTR', 'LG01', '非融资性保函', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('LG_ATTR', 'LG02', '融资性保函', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('LG_BANK_DUTY', '01', '第一性责任保函', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('LG_BANK_DUTY', '02', '第二性责任保函', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('LG_CLAIM_CON', '01', '有条件保函', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('LG_CLAIM_CON', '02', '无条件保函', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('LG_PAY_PRE', '01', '付款类保函', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('LG_PAY_PRE', '02', '信用类保函', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('LG_REL_PROD', 'CL401', '保函垫款产品', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('LG_USE_RANGE', '01', '出口类保函', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('LG_USE_RANGE', '02', '进口类保函', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('MAX_EXTEND_TIMES', '1', '最大展期次数', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('MM_CATEGORY', 'F', '定期', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('OWNERSHIP_TYPE', 'AS', '多客户联名', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('OWNERSHIP_TYPE', 'SG', '独立账户', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('OWNERSHIP_TYPE', 'SU', '继承账户', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('PRECONTRACT_TYPE', 'O', '可以不预约', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('PRECONTRACT_TYPE', 'P', '必须预约', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('PRE_WITHDRAW_TYPE', 'F', '全部提前支取', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('PRE_WITHDRAW_TYPE', 'P', '部分提前支取', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('PROD_BRANCH', ' ALL', '所有机构', '', '', '');
INSERT INTO `mb_attr_value` VALUES ('PROD_END_DATE', '20200127', '失效日期', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('PROD_REGION', ' ALL', '所有区域', '', '', '');
INSERT INTO `mb_attr_value` VALUES ('PROD_START_DATE', '20130127', '生效日期', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('PROFIT_CENTRE', ' ', '利润中心', 'FM_PROFIT_CENTRE', '1=1', 'PROFIT_CENTRE,PROFIT_CENTRE_DESC');
INSERT INTO `mb_attr_value` VALUES ('REPAY_SEQ_TYPE', 'D', '大本大息', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('REPAY_SEQ_TYPE', 'S', '小本小息', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('REPAY_SEQ_TYPE_NP', 'B', '大本大息', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('REPAY_SEQ_TYPE_NP', 'S', '小本小息', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('ROLLOVER_NO', '1', '自动本息转存次数', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('SCHED_MODE', '  ', '贷款还款方式', 'MB_SCHED_MODE', '1=1', 'SCHED_MODE,SCHED_MODE_DESC');
INSERT INTO `mb_attr_value` VALUES ('SEC_AMT_TYPE', 'BAL', '余额', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('SEC_AMT_TYPE', 'DDA', '发放金额', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('SEC_AMT_TYPE', 'INTP', '逾期利息', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('SEC_AMT_TYPE', 'LIM', '额度金额', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('SEC_AMT_TYPE', 'OD', '透支金额', '', '', '');
INSERT INTO `mb_attr_value` VALUES ('SEC_AMT_TYPE', 'ODIP', '逾期复利', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('SEC_AMT_TYPE', 'ODPP', '逾期罚息', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('SEC_AMT_TYPE', 'OSL', '未到期本金', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('SEC_AMT_TYPE', 'PRD', '逾期本金', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('SEC_AMT_TYPE', 'PRI', '本金', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('SOURCE_MODULE', 'CIF', '客户', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('SOURCE_MODULE', 'CL', '贷款', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('SOURCE_MODULE', 'GL', '总账', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('SOURCE_MODULE', 'MM', '货币市场', '', '', '');
INSERT INTO `mb_attr_value` VALUES ('SOURCE_MODULE', 'RB', '存款', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('STRUCTURE_TYPE', 'CD2', '账号生成规则', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('SYN_TYPE', 'B', '他行管理行银团贷款', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('SYN_TYPE', 'D', '自有贷款', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('SYN_TYPE', 'M', '本行管理行银团贷款', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('SYN_TYPE', 'O', '本行是借款人', '', '', null);
INSERT INTO `mb_attr_value` VALUES ('TERM_FREQ', '1D', '期限', '', '', '');
INSERT INTO `mb_attr_value` VALUES ('TERM_FREQ', '3M', '期限', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('TERM_FREQ', '7D', '期限', '', '', '');
INSERT INTO `mb_attr_value` VALUES ('TRAN_LIMIT_CCY', 'CNY', '人民币', '', '', '');
INSERT INTO `mb_attr_value` VALUES ('TRAN_LIMIT_CCY', 'USD', '人民币', '', '', '');
INSERT INTO `mb_attr_value` VALUES ('TRAN_LIMIT_TERM', 'D', '当日', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('TRAN_LIMIT_TERM', 'M', '当月', '', '', '');
INSERT INTO `mb_attr_value` VALUES ('UPD_OD', 'N', '透支不登记', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('UPD_OD', 'Y', '透支登记', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('WITHDRAWAL_TYPE', 'B', '凭密码和印鉴', '', '', '');
INSERT INTO `mb_attr_value` VALUES ('WITHDRAWAL_TYPE', 'O', '凭证件', '', '', '');
INSERT INTO `mb_attr_value` VALUES ('WITHDRAWAL_TYPE', 'P', '凭密码', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('WITHDRAWAL_TYPE', 'S', '凭印鉴', null, null, null);
INSERT INTO `mb_attr_value` VALUES ('WITHDRAWAL_TYPE', 'W', '无密码无印鉴', null, null, null);
