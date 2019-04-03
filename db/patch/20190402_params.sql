/*
Navicat MySQL Data Transfer

Source Server         : zhou
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : ensemble-om

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2019-04-02 14:09:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for om_table_list
-- ----------------------------
DROP TABLE IF EXISTS `om_table_list`;
CREATE TABLE `om_table_list` (
  `TABLE_NAME` varchar(30) NOT NULL,
  `TABLE_DESC` varchar(30) DEFAULT NULL,
  `SYSTEM` varchar(10) DEFAULT NULL,
  `PARAMETER` varchar(10) DEFAULT NULL,
  `MODEL_ID` varchar(10) DEFAULT NULL,
  `SEARCH_COLUMN` varchar(300) DEFAULT NULL,
  `EIDT_COLUMNS` varchar(300) DEFAULT NULL COMMENT '单表可见参数',
  PRIMARY KEY (`TABLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of om_table_list
-- ----------------------------
INSERT INTO `om_table_list` VALUES ('AC_BRANCH', '机构清算层级', 'GLR', null, 'AC', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('AC_SUBJECT', '科目定义', 'GLR', null, 'AC', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('CD_CARD_BIN', '卡BIN', 'KBS', null, 'CD', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('CIF_CATEGORY_TYPE', '客户细类', 'KBS', null, 'CIF', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('CIF_CLASS_1', '客户分类1', 'KBS', null, 'CIF', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('CIF_CLASS_2', '客户分类2', 'KBS', null, 'CIF', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('CIF_CLASS_3', '客户分类3', 'KBS', null, 'CIF', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('CIF_CLASS_4', '客户分类4', 'KBS', null, 'CIF', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('CIF_CLASS_5', '客户分类5', 'KBS', null, 'CIF', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('CIF_CLASS_LEVEL', '客户等级', 'KBS', null, 'CIF', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('CIF_CLIENT_NATURE_DEF', '客户属性', 'KBS', null, 'CIF', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('CIF_CLIENT_TYPE', '????', 'KBS', 'init', 'CIF', 'CLIENT_TYPE_DESC,IS_INDIVIDUAL', 'ALL');
INSERT INTO `om_table_list` VALUES ('CIF_CONTACT_TYPE', '联系类型', 'KBS', null, 'CIF', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('CIF_CR_RATING', '信用等级', 'KBS', null, 'CIF', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('CIF_DOCUMENT_EXP', '证件到期管理', 'KBS', null, 'CIF', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('CIF_DOCUMENT_TYPE', '证件类型', 'KBS', null, 'CIF', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('CIF_EDUCATION', '教育程度', 'KBS', null, 'CIF', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('CIF_INDUSTRY', '工业代码', 'KBS', null, 'CIF', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('CIF_OCCUPATION', '职业分类', 'KBS', null, 'CIF', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('CIF_QUALIFICATION', '职称定义', 'KBS', null, 'CIF', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('CIF_RELATION_TYPE', '客户关系类型', 'KBS', null, 'CIF', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('CIF_RESIDENT_TYPE', '居住类型', 'KBS', null, 'CIF', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('CIF_SALUTATION', '称呼类型', 'KBS', null, 'CIF', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('DC_STAGE_DEFINE', '期次定义表', 'KBS', null, 'MB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('DC_STAGE_INT', '期次管理利率信息表', 'KBS', null, 'MB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_ACCT_EXEC', '客户经理', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_BANK', '银行信息', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_BANK_HIERARCHY', '机构层级', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_BRANCH', '机构信息', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_BRANCH_CCY', '分行经营币种', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_BRANCH_REGION_DEF', '机构自定义区域设置', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_CCY_HOLIDAY', '货币假日', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_CHANNEL', '渠道信息', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_CHARGE_DEFINE', '服务费定义', 'KBS', null, 'SYS', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_CITY', '城市信息', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_COMPANY', '法人信息', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_COUNTER_PARTY', '交易对手', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_COUNTRY', '国家信息', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_CURRENCY', '币种信息', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_DEPARTMENT', '部门信息', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_DIST_CODE', '地区代码', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_ECON_DIST', '经济特区', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_EXCHANGE_TRAN_CODE', '结售汇项目编码', 'KBS', null, 'SYS', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_FAKE_COIN_DEF', '劵别信息表', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_FTA_BRANCH', '自贸区结构表', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_LOC_HOLIDAY', '地区假日', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_PASSWORD_FAILURE_TIMES', '密码错误次数参数', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_PERIOD_FREQ', '周期频率', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_PROFIT_CENTRE', '利润中心', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_REF_CODE', '系统内部预定义参数', 'KBS', null, 'SYS', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_REGION', '区域代码', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_REGION_CODE_USERDEF', '自定义区域代码定义', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_REGION_TYPE_USERDEF', '自定义区域类型定义', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_SEQ_TYPE', '序列类型', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_SEQ_TYPE_DTL', '序列信息', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_SEQ_TYPE_RULE', '序列规则定义', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_SETTLE_METHOD', '结算方式', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_STATE', '省州信息', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_STRUCTURE_DIGIT_POS', '结构位置', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_STRUCTURE_PARAM', '结构参数', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_STRUCTURE_TYPE', '结构类型', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_SUB_BRANCH_TBL', '分行定义', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_SYSTEM', '系统参数', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('FM_USER', '用户', 'KBS', null, 'SYS', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('GL_ACCOUNTING', '分录定义', 'GLR', null, 'GL', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('GL_ACCT_TYPE', '总账账户类型', 'GLR', null, 'GL', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('GL_AMOUNT_MAPPING', '金额类型映射', 'GLR', null, 'GL', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('GL_AMOUNT_TYPE', '金额类型', 'GLR', null, 'GL', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('GL_CCY_CTRL_ACCT_TBL', '损益重估科目', 'GLR', null, 'GL', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('GL_CCY_RULE', '币种规则', 'GLR', null, 'GL', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('GL_CUSTOM_RULE', '自定义规则', 'GLR', null, 'GL', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('GL_EVENT_MAPPING', '事件类型映射', 'GLR', null, 'GL', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('GL_EVENT_TYPE', '事件类型', 'GLR', null, 'GL', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('GL_PROD_ACCOUNTING', '产品科目', 'GLR', null, 'GL', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('GL_PROD_MAPPING', '产品映射', 'GLR', null, 'GL', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('GL_PROD_RULE', '产品分录规则', 'GLR', null, 'GL', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('GL_RESERVE_OUT_PAY_TYPE', '对外缴存准备金定义', 'GLR', null, 'GL', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('GL_RESERVE_PAY_CCY', '缴存范围定义', 'GLR', null, 'GL', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('GL_SYSTEM', '核算系统', 'GLR', null, 'GL', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('GL_TRAN_MAPPING', '交易映射', 'GLR', null, 'GL', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('IRL_AMT_EXPRESSION', '金额计算达式信息', 'UP', null, 'COMMON', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('IRL_AMT_SPLIT', '金额分段参数表', 'UP', null, 'COMMON', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('IRL_BASIS_RATE', '基准利率信息', 'UP', null, 'INTRATE', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('IRL_CCY_RATE', '汇率牌价', 'UP', null, 'EXRATE', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('IRL_DUAD_CCY_RATE', '货币对汇率牌价', 'UP', null, 'EXRATE', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('IRL_ELEMENT', '因子', 'UP', null, 'COMMON', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('IRL_ELEMENT_GROUP', '因子分组定义表', 'UP', null, 'COMMON', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('IRL_EXCHANGE_TYPE', '汇率类型', 'UP', null, 'EXRATE', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('IRL_FEE_CLIENT_TYPE', '费率客户类型关系', 'UP', null, 'SYS', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('IRL_FEE_ITEM', '费用项目表', 'UP', null, 'FEE', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('IRL_FEE_MAPPING', '费用启用规则', 'UP', null, 'FEE', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('IRL_FEE_MATRIX', '费率矩阵信息', 'UP', null, 'FEE', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('IRL_FEE_PACKAGE', '费用套餐表', 'UP', null, 'FEE', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('IRL_FEE_PACKAGE_MAP', '费用套餐费用类型关联表', 'UP', null, 'FEE', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('IRL_FEE_PROFIT_DISTRIBUTION', '分润规则', 'UP', null, 'FEE', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('IRL_FEE_RATE', '费率信息', 'UP', null, 'FEE', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('IRL_FEE_TYPE', '费率类型', 'UP', null, 'FEE', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('IRL_INT_BASIS', '基准利率类型', 'UP', null, 'INTRATE', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('IRL_INT_MATRIX', '利率阶梯信息', 'UP', null, 'INTRATE', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('IRL_INT_RATE', '利率信息', 'UP', null, 'INTRATE', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('IRL_INT_TYPE', '利率类型', 'UP', null, 'INTRATE', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('IRL_MARKET_FACTOR_INFO', '市场指数信息', 'UP', null, 'COMMON', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('IRL_PERI_SPLIT', '周期分段参数', 'UP', null, 'COMMON', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('IRL_PROD_INT', '产品利率信息', 'UP', null, 'INTRATE', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('IRL_PROD_TYPE', '产品类型', 'UP', null, 'INTRATE', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('IRL_RISK_SETING', '利率风险设置', 'UP', null, 'COMMON', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('IRL_RULE_GROUP', '规则分组定义', 'UP', null, 'COMMON', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('IRL_RULE_MESSAGE', '规则信息', 'UP', null, 'COMMON', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('IRL_SYSTEM', '系统信息', 'UP', null, 'COMMON', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('LM_TRAN_LIMIT_DEF', '交易限额定义', 'KBS', null, 'LM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('LM_TRAN_LIMIT_LINK', '限额链接', 'KBS', null, 'LM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_ACCOUNTING_STATUS', '核算状态变化规则配置', 'KBS', null, 'MB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_ACCT_CLOSE_REASON', '账户销户原因定义', 'KBS', null, 'MB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_ACCT_LINKMAN_TYPE', '账户联系人类型', 'KBS', null, 'MB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_ACCT_NATURE_DEF', '账户属性定义', 'KBS', null, 'MB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_ACCT_NATURE_RESTRAINTS', '账户属性与账户限制关联配置', 'KBS', null, 'MB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_ANALYSIS1', '分析类型1', 'KBS', null, 'MB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_ANALYSIS2', '分析类型2', 'KBS', null, 'MB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_ANALYSIS3', '分析类型3', 'KBS', null, 'MB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_ANNUAL_SURVEY', '账户年检管理', 'KBS', null, 'MB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_ATTR_TYPE', '参数定义表', 'KBS', 'init', 'PROD', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_ATTR_VALUE', '参数值定义表', 'KBS', 'init', 'PROD', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_BRANCH_PROD', '机构产品表', 'KBS', null, 'MB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_CASH_ITEM', '现金项目定义', 'KBS', null, 'MB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_CLEAN_PARAMETER', '账户清理参数表', 'KBS', null, 'MB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_COLLAT_TYPE', '抵押品类型', 'KBS', null, 'MB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_COMMISSION_PARAMETER', '交易代办人参数表', 'KBS', null, 'MB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_EXCHANGE_TRAN_TYPE', '结售汇交易类型', 'KBS', null, 'MB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_FIN_AGRT_TYPE', '活期理财协议', 'KBS', null, 'MB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_OPEN_CTL', '开户数量控制', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_PROD_CHARGE', '收费定义表', 'prod', null, 'prod', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_PROD_DEFINE', '产品属性表', 'prod', null, 'prod', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_PROD_MUTUAL', '产品互斥参数表', 'KBS', null, 'FM', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_PROD_TYPE', '产品定义', 'KBS', 'init', 'CIF', '', 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_PURPOSE', '资金用途', 'KBS', null, 'MB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_REASON_CODE', '原因代码', 'KBS', null, 'MB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_RENEWAL_TYPE', '理财定期账户定义', 'KBS', null, 'MB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_SETTLE_ACCT_MAPPING', '结算账户分类映射', 'KBS', null, 'MB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_SETTLE_BRANCH', '结算机构', 'KBS', null, 'MB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_SETTLE_TRAN_MAPPING', '结算交易类型映射', 'KBS', null, 'MB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_STAGE_INFO', '期次信息表', 'KBS', null, 'MB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_TRAN_CONTROL', '卡交易控制', 'KBS', null, 'MB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('MB_TRAN_DEF', '交易类型定义', 'KBS', null, 'MB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('RC_LIST_CATEGORY', '名单种类定义', 'KBS', null, 'RC', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('RC_LIST_CHECK_RULE', '名单类型限制规则', 'KBS', null, 'RC', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('RC_LIST_TYPE', '名单类型定义', 'KBS', null, 'RC', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('TB_APPLY_CONF', '预约参数', 'KBS', null, 'TB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('TB_CASH_SIGN_RESON', '长短款原因', 'KBS', null, 'TB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('TB_CASH_UNIT', '现金预约汇总统计单元', 'KBS', null, 'TB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('TB_PAR_VALUE', '劵别定义', 'KBS', null, 'TB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('TB_TRAILBOX_OVERDRAW', '尾箱透支定义', 'KBS', null, 'TB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('TB_UNIT_DEF', '单位参数定义', 'KBS', null, 'TB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('TB_VOUCHER_BRANCH', '凭证使用分行', 'KBS', null, 'TB', null, 'ALL');
INSERT INTO `om_table_list` VALUES ('TB_VOUCHER_DEF', '凭证类型定义', 'KBS', null, 'TB', null, 'ALL');
