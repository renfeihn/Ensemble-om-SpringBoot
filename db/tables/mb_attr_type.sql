/*
Navicat MySQL Data Transfer

Source Server         : ensemble
Source Server Version : 50516
Source Host           : 127.0.0.1:3306
Source Database       : ensemble

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2018-09-19 14:27:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mb_attr_type
-- ----------------------------
DROP TABLE IF EXISTS `mb_attr_type`;
CREATE TABLE `mb_attr_type` (
  `ATTR_KEY` varchar(30) NOT NULL COMMENT '参数定义',
  `ATTR_TYPE` varchar(50) DEFAULT NULL COMMENT '参数数据类型 STRING-字符型，DOUBLE-数值型',
  `ATTR_DESC` varchar(100) NOT NULL COMMENT '参数描述',
  `ATTR_CLASS` varchar(20) NOT NULL COMMENT '参数分类 取值于MB_ATTR_CLASS.ATTR_CLASS',
  `USE_METHOD` varchar(10) NOT NULL COMMENT '使用方式 EVAL ：赋值类 CTR：控制类 IND：处理逻辑 DESC：静态描述\r\n            ',
  `VALUE_METHOD` varchar(10) NOT NULL COMMENT '取值方式\r\n            FD：固定 \r\n            VL：取值自MB_ATTR_VALUE\r\n            RF：取值自其它参数表，MB_ATTR_VALUE中REF_TABLE中定义表名，REF_CONDITION中定义条件\r\n            YN：取值Y或N\r\n            ',
  `SET_VALUE_FLAG` varchar(10) DEFAULT NULL COMMENT '参数值设置方式\r\n            0-设置单值\r\n            1-可设置多值',
  `BUSI_CATEGORY` varchar(50) DEFAULT NULL COMMENT '业务分类\r\n            RB-存款，CL-贷款，MM-货币市场，GL-总账',
  `STATUS` varchar(1) NOT NULL COMMENT '状态  A：有效 F：无效',
  PRIMARY KEY (`ATTR_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='参数定义表：描述产品工厂使用的参数定义';

-- ----------------------------
-- Records of mb_attr_type
-- ----------------------------
INSERT INTO `mb_attr_type` VALUES ('ACCT_BAL_FLAG', 'STRING', '金额标志', 'ACCT', 'CTR', 'VL', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('ACCT_CLASS', 'STRING', '账户类别', 'ACCT', 'DESC', 'VL', '', 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('ACCT_EXEC', 'STRING', '客户经理', 'CLIENT', 'CTR', 'RF', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('ACCT_INT_FLAG', 'STRING', '记息标志', 'PRICE', 'CTR', 'VL', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('ACCT_NATURE', 'STRING', '账户属性', 'ACCT', 'CTR', 'VL', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('ACCT_REAL_FLAG', 'STRING', '虚实标志', 'ACCT', 'CTR', 'VL', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('ACCT_STATUS', 'STRING', '账户状态', 'ACCT', 'EVAL', 'VL', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('ACCT_STRUCT_FLAG', 'STRING', '账户结构', 'ACCT', 'CTR', 'VL', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('ACCT_TYPE', 'STRING', '账户类型', 'ACCT', 'DESC', 'VL', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('ACTUAL_OR_LEDGER_BAL', 'STRING', '余额标志', 'BALANCE', 'CTR', 'VL', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('AGENT_FLAG', 'STRING', '允许代办', 'CLIENT', 'CTR', 'YN', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('ALL_DEP_FLAG', 'STRING', '是否通兑', 'RISK', 'DESC', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('ALL_DRA_FLAG', 'STRING', '是否通存', 'RISK', 'DESC', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('AMT_CALC_TYPE', 'STRING', '金额计算方式', 'BALANCE', 'EVAL', 'VL', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('AMT_TYPE', 'STRING', '金额类型', 'BALANCE', 'EVAL', 'FD', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('AUTO_BE_FLAG', 'STRING', '自动结汇', 'RISK', 'DESC', 'YN', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('AUTO_CLOSE_FLAG', 'STRING', '自动销户', 'RISK', 'DESC', 'YN', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('AUTO_DORM_FLAG', 'STRING', '自动转睡眠', 'RISK', 'DESC', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('AUTO_HANG_FLAG', 'STRING', '自动转久悬', 'RISK', 'DESC', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('AUTO_REC_FLAG', 'STRING', '自动回收', 'AGREEMENT', 'DESC', 'YN', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('AUTO_RENEW_ROLLOVER', 'STRING', '自动转存', 'AGREEMENT', 'CTR', 'VL', '', 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('AUTO_SETTLE', 'STRING', '自动结算', 'RISK', 'CTR', 'YN', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('AUTO_SE_FLAG', 'STRING', '自动售汇', 'RISK', 'DESC', 'YN', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('BACK_FLOAT_FLAG', 'STRING', '早起息', 'RISK', 'CTR', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('BAL_DIRECT_TYPE', 'STRING', '余额方向', 'BALANCE', 'EVAL', 'VL', null, 'GL', 'A');
INSERT INTO `mb_attr_type` VALUES ('BAL_TYPE', 'STRING', '余额类型', 'BALANCE', 'DESC', 'VL', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('BAL_TYPE_PRIORITY', 'STRING', '余额优先级', 'BALANCE', 'EVAL', 'VL', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('BAL_UPD_TYPE', 'STRING', '余额更新类型', 'BALANCE', 'EVAL', 'VL', null, 'GL', 'A');
INSERT INTO `mb_attr_type` VALUES ('BE_FLAG', 'STRING', '结汇标志', 'RISK', 'DESC', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('CA_TRAN_FLAG', 'STRING', '现金交易', 'RISK', 'CTR', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('CCY', 'STRING', '币种', 'ACCT', 'DESC', 'RF', 'M', 'CL,GL,MM,RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('CD_APPER_FLAG', 'STRING', '是否开立附属卡', 'CM_CARD', 'EVAL', 'YN', null, 'RB,CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('CD_APP_NUM', 'STRING', '开附属卡数量', 'CM_CARD', 'DESC', 'FD', null, 'RB,CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('CD_AREA_CODE', 'STRING', '卡地区码', 'CM_CARD', 'DESC', 'RF', null, 'RB,CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('CD_BIN_VALID_TIME', 'STRING', '卡BIN有效期', 'ACCT', 'DESC', 'FD', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('CD_CARD_BIN', 'STRING', '卡BIN', 'CM_CARD', 'DESC', 'FD', null, 'RB,CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('CD_CUST_GRADE', 'STRING', '卡的客户等级', 'CM_CARD', 'DESC', 'VL', null, 'RB,CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('CD_FUNCTION', 'STRING', '功能定义', 'CM_CARD', 'DESC', 'VL', null, 'RB,CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('CD_IS_APPER', 'STRING', '是否为附属卡', 'CM_CARD', 'DESC', 'YN', null, 'RB,CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('CD_MADEFEE_FLAG', 'STRING', '工本费收取', 'CM_CARD', 'DESC', 'YN', null, 'RB,CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('CD_MADE_STANDARD', 'STRING', '制卡标准', 'CM_CARD', 'DESC', 'VL', null, 'RB,CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('CD_MEDIUM', 'STRING', '磁条/IC卡', 'CM_CARD', 'DESC', 'VL', null, 'RB,CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('CD_RULE', 'STRING', '卡号规则', 'CM_CARD', 'DESC', 'FD', null, 'RB,CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('CD_SAME_FLAG', 'STRING', '同号换卡', 'CM_CARD', 'DESC', 'YN', null, 'RB,CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('CD_SELF_SEL', 'STRING', '自选卡号标志', 'CM_CARD', 'DESC', 'YN', null, 'RB,CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('CD_SERVICE_CODE', 'STRING', '卡服务代码', 'CM_CARD', 'DESC', 'RF', null, 'RB,CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('CD_TYPE', 'STRING', '卡类型', 'CM_CARD', 'DESC', 'RF', null, 'RB,CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('CD_VALID_FLAG', 'STRING', '有效标志', 'CM_CARD', 'DESC', 'VL', null, 'RB,CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('CD_VALID_TIME', 'STRING', '卡介质的有效期', 'CM_CARD', 'EVAL', 'FD', null, 'RB,CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('CD_YEARFEE_STATUS', 'STRING', '卡年费收取标志', 'CM_CARD', 'DESC', 'YN', null, 'RB,CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('CHECK_ACCT_CLASS', 'STRING', '账户类别检查', 'ACCT', 'CTR', 'YN', '', 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('CHECK_ACCT_NATURE', 'STRING', '账户属性检查', 'RISK', 'CTR', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('CHECK_ACCT_STATUS', 'STRING', '账户状态检查', 'ACCT', 'CTR', 'YN', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('CHECK_AGENT', 'STRING', '代办人检查', 'RISK', 'CTR', 'YN', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('CHECK_ALL_DEP', 'STRING', '通存标志检查', 'RISK', 'CTR', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('CHECK_ALL_DRA', 'STRING', '通兑标志检查', 'RISK', 'CTR', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('CHECK_CCY', 'STRING', '币种检查', 'RISK', 'CTR', 'YN', '', 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('CHECK_CLOSE_FEE', 'STRING', '欠费检查', 'RISK', 'CTR', 'YN', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('CHECK_FUND_IND', 'STRING', '检查金额标志', 'RISK', 'CTR', 'YN', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('CHECK_FUND_TRAN', 'STRING', '资金转移方式检查', 'RISK', 'CTR', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('CHECK_INIT_AMT', 'STRING', '首次存入金额检查', 'RISK', 'CTR', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('CHECK_KEEP_BAL', 'STRING', '留存金额检查标志', 'RISK', 'CTR', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('CHECK_MISS_NUM', 'STRING', '漏存次数检查', 'AGREEMENT', 'CTR', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('CHECK_PROD_DATE', 'STRING', '检查产品日期', 'ACCT', 'CTR', 'YN', '', 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('CHECK_PROD_STATUS', 'STRING', '检查产品状态', 'ACCT', 'CTR', 'YN', '', 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('CHECK_RESTRAINT', 'STRING', '账户限制检查', 'RISK', 'CTR', 'YN', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('CHECK_RESTRAINT_IND', 'STRING', '限制检查标志', 'RISK', 'CTR', 'YN', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('CHECK_SG_AMT', 'STRING', '单次金额控制方式', 'RISK', 'CTR', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('CHECK_SG_ISS_AMT', 'STRING', '单次发放金额控制标志', 'RISK', 'CTR', 'YN', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('CHECK_SIGN', 'STRING', '签约检查', 'RISK', 'CTR', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('CHECK_TRAN_LIMIT', 'STRING', '检查交易限额', 'RISK', 'CTR', 'YN', '', 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('CHECK_WDRAWN_TYPE', 'STRING', '支取方式检查标志', 'RISK', 'CTR', 'YN', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('CLIENT_IND', 'STRING', '内部客户标志', 'CLIENT', 'DESC', 'VL', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('CLIENT_TYPE', 'STRING', '客户类型', 'CLIENT', 'DESC', 'RF', '', 'CL,GL,MM,RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('CL_1DD_IND', 'STRING', '单笔发放', 'RISK', 'CTR', 'YN', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('CL_ADVANCE_TYPE', 'STRING', '贴现贷款类型', 'ACCT', 'EVAL', 'VL', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('COMMITTED_FLAG', 'STRING', '是否承诺贷款', 'ACCT', 'CTR', 'YN', '', 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('CR_DR_MAINT_IND', 'STRING', '借贷标志', 'ACCT', 'CTR', 'VL', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('CYCLE_FREQ', 'STRING', '结息周期', 'PRICE', 'DESC', 'VL', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('DOC_FLAG', 'STRING', '是否有凭证', 'MEDIA', 'DESC', 'YN', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('DOC_TYPE', 'STRING', '凭证类型', 'MEDIA', 'DESC', 'RF', 'M', 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('DORMANT_MONTH', 'STRING', '自动转不动户月数', 'RISK', 'CTR', 'FD', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('ET_SETTLE_FLAG', 'STRING', '委托贷款结算标志', 'ACCT', 'CTR', 'VL', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('FEE_CAP', 'STRING', '费用资本化', 'PRICE', 'DESC', 'YN', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('FIXED_CALL', 'STRING', '账户子类型', 'ACCT', 'DESC', 'VL', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('FUND_TRAN_TYPE', 'STRING', '资金转移方式', 'RISK', 'CTR', 'VL', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('FUTURE_FLOAT_FLAG', 'STRING', '晚起息标志', 'RISK', 'CTR', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('GL_TYPE', 'STRING', '总账类型', 'ACCT', 'DESC', 'VL', '', 'GL', 'A');
INSERT INTO `mb_attr_type` VALUES ('GRACE_END_MONTH', 'STRING', '宽限期为月末', 'MEDIA', 'DESC', 'YN', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('GRACE_OVER_MONTH', 'STRING', '是否允许跨月', 'FREQUCY', 'CTR', 'YN', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('GRACE_PERIOD', 'STRING', '宽限期', 'FREQUCY', 'DESC', 'VL', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('HUNTING_STATUS', 'STRING', '持续扣款标志', 'AGREEMENT', 'DESC', 'VL', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('INIT_AMT', 'DOUBLE', '起存金额', 'RISK', 'CTR', 'FD', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('INIT_FLAG', 'STRING', '起存金额控制标记', 'PRICE', 'CTR', 'YN', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('INLAND_OFFSHORE', 'STRING', '境内境外', 'CLIENT', 'DESC', 'VL', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('INTER_BANK_FLAG', 'STRING', '行内同业标识', 'ACCT', 'DESC', 'VL', null, 'MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('INTER_BANK_TYPE', 'STRING', '拆入拆出标识', 'ACCT', 'DESC', 'VL', null, 'MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('INT_APPL_TYPE', 'STRING', '利率启用方式', 'PRICE', 'DESC', 'VL', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('INT_CAP', 'STRING', '利息资本化', 'PRICE', 'DESC', 'YN', null, 'RB,CL,GL', 'A');
INSERT INTO `mb_attr_type` VALUES ('INT_CHANGE_TERM', 'STRING', '利率变更周期', 'PRICE', 'CTR', 'FD', null, 'RB,CL,GL', 'A');
INSERT INTO `mb_attr_type` VALUES ('INT_DAY', 'STRING', '结息日', 'PRICE', 'DESC', 'FD', null, 'RB,CL,GL', 'A');
INSERT INTO `mb_attr_type` VALUES ('INT_FLAG', 'STRING', '记息标志', 'PRICE', 'DESC', 'VL', null, 'RB,CL,GL', 'A');
INSERT INTO `mb_attr_type` VALUES ('INT_PENALTY', 'STRING', '是否收复利', 'PRICE', 'DESC', 'YN', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('INT_ROLL_FREQ', 'STRING', '利率变更周期', 'PRICE', 'CTR', 'FD', null, 'RB,CL,GL', 'A');
INSERT INTO `mb_attr_type` VALUES ('KEEP_MAX_BAL', 'DOUBLE', '留存最大余额', 'BALANCE', 'CTR', 'FD', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('KEEP_MIN_BAL', 'DOUBLE', '留存最小余额', 'BALANCE', 'CTR', 'FD', '', 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('LEGAL_PERSON', 'STRING', '表示产品所属法人', 'ACCT', 'DESC', 'VL', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('LG_AGRE_REL', 'STRING', '保函与基础合同的关系', 'AGREEMENT', 'DESC', 'VL', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('LG_ATTR', 'STRING', '保函属性', 'AGREEMENT', 'DESC', 'VL', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('LG_BANK_DUTY', 'STRING', '担保行付款责任', 'AGREEMENT', 'DESC', 'VL', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('LG_CLAIM_CON', 'STRING', '保函的索赔条件', 'AGREEMENT', 'DESC', 'VL', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('LG_PAY_PRE', 'STRING', '保函项下的支付前提', 'AGREEMENT', 'DESC', 'VL', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('LG_REL_BOND', 'STRING', '是否关联保证金', 'AGREEMENT', 'DESC', 'YN', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('LG_REL_PROD', 'STRING', '保函与垫款产品对应关系', 'AGREEMENT', 'DESC', 'VL', '', 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('LG_TFR_FLAG', 'STRING', '是否转开保函', 'AGREEMENT', 'DESC', 'YN', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('LG_USE_RANGE', 'STRING', '保函的使用范围', 'AGREEMENT', 'DESC', 'VL', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('LOAN_MAX_TERM', 'STRING', '最长贷款期限', 'RISK', 'CTR', 'FD', '', 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('LOAN_MIN_TERM', 'STRING', '最短贷款期限', 'RISK', 'CTR', 'FD', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('LOAN_TERM_CTR_FLAG', 'STRING', '贷款期限控制标志', 'RISK', 'CTR', 'YN', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('MAX_BACK_DATE_DAYS', 'STRING', '倒起息最大天数', 'PRICE', 'CTR', 'FD', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('MAX_DD_NUM', 'STRING', '最大放款次数', 'RISK', 'CTR', 'FD', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('MAX_EXTEND_TIMES', 'STRING', '最大展期次数', 'FREQUCY', 'EVAL', 'FD', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('MAX_FUTURE_DATE_DAYS', 'STRING', '晚起息最大天数', 'PRICE', 'CTR', 'FD', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('MAX_NUM', 'STRING', '最大次数', 'RISK', 'CTR', 'FD', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('MIN_NUM', 'STRING', '最小次数', 'RISK', 'CTR', 'FD', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('MISS_NUM', 'STRING', '漏存次数', 'AGREEMENT', 'CTR', 'FD', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('MM_AUTO_DEALS', 'STRING', '自动生成对手交易', 'RISK', 'DESC', 'YN', null, 'MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('MM_AUTO_VERIFY', 'STRING', '是否自动复核', 'PRICE', 'DESC', 'YN', null, 'MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('MM_CASH_FLOW', 'STRING', '是否处理现金流', 'RISK', 'DESC', 'YN', null, 'MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('MM_CATEGORY', 'STRING', '拆借性质', 'RISK', 'DESC', 'VL', null, 'MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('MM_INTREST_FLAG', 'STRING', '利息标识', 'PRICE', 'DESC', 'YN', null, 'MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('MM_POSITION_FLAG', 'STRING', '是否处理头寸', 'RISK', 'DESC', 'YN', null, 'MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('MULTI_BAL_TYPE', 'STRING', '是否多余额', 'BALANCE', 'DESC', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('MULTI_CCY', 'STRING', '是否多币种', 'ACCT', 'DESC', 'YN', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('NEXT_CYCLE_DATE', 'STRING', '下一处理日期', 'PRICE', 'DESC', 'FD', null, 'RB,CL,GL', 'A');
INSERT INTO `mb_attr_type` VALUES ('NON_GENL_STATUS', 'STRING', '非正常停止发放', 'ACCT', 'CTR', 'YN', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('NUM_CTR_FLAG', 'STRING', '次数控制方式', 'RISK', 'CTR', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('NUM_OF_CLIENT', 'STRING', '同客户允许数量', 'RISK', 'CTR', 'FD', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('OD_FACILITY', 'STRING', '账户透支标志', 'ACCT', 'DESC', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('OD_INT_PENALTY', 'DOUBLE', '复利的复利', 'PRICE', 'DESC', 'YN', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('OD_ON_FEES', 'STRING', '过期费用是否罚息', 'PRICE', 'DESC', 'YN', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('OD_ON_INTEREST', 'STRING', '过期利息是否罚息', 'PRICE', 'DESC', 'YN', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('OD_ON_INT_OVERDUE', 'STRING', '过期复利是否罚息', 'PRICE', 'DESC', 'YN', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('OD_ON_PRINCIPAL', 'STRING', '过期本金是否罚息', 'PRICE', 'DESC', 'YN', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('OD_ON_PRI_OVERDUE', 'STRING', '过期罚息是否罚息', 'PRICE', 'DESC', 'YN', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('OD_PRI_PENALTY', 'DOUBLE', '罚息的复利', 'PRICE', 'DESC', 'YN', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('OWNERSHIP_TYPE', 'STRING', '账户关系类型', 'ACCT', 'DESC', 'VL', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('PARTIAL_RENEW_ROLL', 'STRING', '是否允许部分本金转存', 'AGREEMENT', 'CTR', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('PART_WITHDRAW_FLAG', 'STRING', '是否允许部分提取', 'AGREEMENT', 'CTR', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('PART_WITHDRAW_NUM', 'STRING', '部分提取次数', 'AGREEMENT', 'CTR', 'FD', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('PB_FLAG', 'STRING', '是否带折标记', 'MEDIA', 'CTR', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('PRECONTRACT_TYPE', 'STRING', '预约方式', 'AGREEMENT', 'CTR', 'VL', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('PRE_PAID_FLAG', 'STRING', '提前回收标志', 'RISK', 'CTR', 'YN', '', 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('PRE_PAID_LOCK_TERM', 'STRING', '提前回收锁定期', 'RISK', 'CTR', 'FD', '', 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('PRE_PAID_NUM', 'STRING', '提前回收次数', 'RISK', 'CTR', 'FD', '', 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('PRE_PAID_TERM', 'STRING', '提前回收周期', 'RISK', 'CTR', 'FD', '', 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('PRE_WITHDRAW_FLAG', 'STRING', '是否允许提前支取', 'AGREEMENT', 'CTR', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('PRE_WITHDRAW_NUM', 'STRING', '提前支取次数', 'AGREEMENT', 'CTR', 'FD', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('PRE_WITHDRAW_TYPE', 'STRING', '提前支取方式', 'AGREEMENT', 'CTR', 'VL', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('PRI_PENALTY', 'STRING', '是否收罚息', 'PRICE', 'DESC', 'YN', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('PROD_BRANCH', 'STRING', '产品所属机构', 'ACCT', 'DESC', 'VL', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('PROD_END_DATE', 'STRING', '失效日期', 'ACCT', 'DESC', 'FD', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('PROD_REGION', 'STRING', '产品所属区域', 'ACCT', 'DESC', 'VL', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('PROD_START_DATE', 'STRING', '生效日期', 'ACCT', 'DESC', 'FD', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('PROFIT_CENTRE', 'STRING', '利润中心', 'ACCT', 'DESC', 'RF', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('REPAY_SEQ_TYPE', 'STRING', '应计贷款还款顺序', 'PRICE', 'DESC', 'VL', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('REPAY_SEQ_TYPE_NP', 'STRING', '非应计利息还款顺序', 'AGREEMENT', 'CTR', 'VL', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('RESTRAINT_FLAG', 'STRING', '账户限制标志', 'RISK', 'CTR', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('REVOLVE_YN', 'STRING', '是否循环', 'AGREEMENT', 'CTR', 'YN', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('ROLLOVER_NO', 'STRING', '自动本息转存次数', 'AGREEMENT', 'EVAL', 'FD', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('SCHED_MODE', 'STRING', '贷款还款方式', 'ACCT', 'CTR', 'RF', '', 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('SEC_AMT_CALC', 'STRING', '第二层账户金额计算方式', 'BALANCE', 'EVAL', 'FD', null, 'RB,CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('SEC_AMT_TYPE', 'STRING', '第二层账户金额类型', 'BALANCE', 'EVAL', 'FD', null, 'RB,CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('SERV_CHARGE_FLAG', 'STRING', '服务费标志', 'PRICE', 'CTR', 'YN', null, 'RB,CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('SETTLE_VERIFY_FLAG', 'STRING', '结算是否自动复核', 'PRICE', 'DESC', 'YN', null, 'MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('SE_FLAG', 'STRING', '售汇标志', 'RISK', 'DESC', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('SG_DEP_MAX_AMT', 'DOUBLE', '单次存入最大金额', 'RISK', 'EVAL', 'FD', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('SG_DEP_MIN_AMT', 'DOUBLE', '单次存入最小金额', 'RISK', 'EVAL', 'FD', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('SG_ISS_MAX_AMT', 'STRING', '单次最大金额', 'RISK', 'CTR', 'FD', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('SG_ISS_MIN_AMT', 'STRING', '单次最小金额', 'RISK', 'CTR', 'FD', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('SG_MAX_AMT', 'DOUBLE', '单次最大金额', 'RISK', 'CTR', 'FD', null, 'RB,CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('SG_MIN_AMT', 'DOUBLE', '单次最小金额', 'RISK', 'CTR', 'FD', null, 'RB,CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('SHOW_ON_STMT', 'STRING', '对账单标志', 'MEDIA', 'CTR', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('SOURCE_MODULE', 'STRING', '业务模块', 'ACCT', 'DESC', 'VL', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('STRUCTURE_TYPE', 'STRING', '账号生成规则', 'ACCT', 'IND', 'FD', null, 'RB,CL,GL', 'A');
INSERT INTO `mb_attr_type` VALUES ('SUB_ACCT_FLAG', 'STRING', '主子账户开立标识', 'ACCT', 'CTR', 'VL', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('SYNC_FINAL_BILLING', 'STRING', '是否利随本清', 'PRICE', 'DESC', 'YN', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('SYN_TYPE', 'STRING', '银团贷款性质', 'ACCT', 'EVAL', 'VL', null, 'CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('TAXABLE', 'STRING', '收税标志', 'PRICE', 'CTR', 'YN', null, 'RB,CL', 'A');
INSERT INTO `mb_attr_type` VALUES ('TD_ADDTL_PRINCIPAL', 'STRING', '允许本金增加标志', 'AGREEMENT', 'CTR', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('TERM_FREQ', 'STRING', '期限', 'FREQUCY', 'EVAL', 'VL', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('TERM_LONG_FLAG', 'STRING', '是否允许延期', 'FREQUCY', 'CTR', 'YN', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('TERM_SHORT_FLAG', 'STRING', '是否允许缩期', 'FREQUCY', 'CTR', 'YN', null, 'RB,CL,GL,MM', 'A');
INSERT INTO `mb_attr_type` VALUES ('TRAN_LIMIT_AMT', 'STRING', '限额', 'RISK', 'CTR', 'FD', '', 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('TRAN_LIMIT_CCY', 'STRING', '限额币种', 'RISK', 'CTR', 'VL', '', 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('TRAN_LIMIT_TERM', 'STRING', '限额周期', 'RISK', 'CTR', 'VL', '', 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('TT_TRAN_FLAG', 'STRING', '转账交易标志', 'RISK', 'CTR', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('UPD_OD', 'STRING', '透支登记标志', 'ACCT', 'DESC', 'YN', null, 'RB', 'A');
INSERT INTO `mb_attr_type` VALUES ('WITHDRAWAL_TYPE', 'STRING', '支取方式', 'RISK', 'CTR', 'VL', null, 'RB', 'A');
