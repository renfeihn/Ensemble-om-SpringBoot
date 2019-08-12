drop table if exists MB_ACCT;
/*==============================================================*/
/* Table: MB_ACCT                                           */
/*==============================================================*/
create table MB_ACCT
(
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    BASE_ACCT_NO varchar(150) comment '账号',
    PROD_TYPE varchar(50) comment '产品类型',
    CCY varchar(3) comment '币种',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    CARD_NO varchar(50) comment '卡号',
    BRANCH varchar(20) comment '机构代码',
    CLIENT_NO varchar(20) comment '客户号',
    PROFIT_CENTRE varchar(12) comment '利润中心 ',
    ACCT_OPEN_DATE varchar(8) comment '账户开户日期',
    EFFECT_DATE varchar(8) comment '生效日期',
    OPEN_TRAN_DATE varchar(8) comment '开户后首次交易日期',
    ACCT_STATUS varchar(3) comment '核算状态',
    ACCT_STATUS_PREV varchar(3) comment '账户状态     ',
    ACCT_STATUS_UPD_DATE varchar(8) comment '账户状态变更日期',
    ACCOUNTING_STATUS varchar(3) comment '核算状态',
    ACCOUNTING_STATUS_PREV varchar(3) comment '前次核算状态',
    ACCOUNT_STATUS_UPD_DATE varchar(8) comment '核算状态变更日期',
    ACCT_NAME varchar(200) comment '账户名称，一般指中文账户名称',
    ALT_ACCT_NAME varchar(200) comment '备用账户名称，一般指英文账户名称',
    ACCT_DESC varchar(150) comment '账户描述',
    ACCT_NATURE varchar(4) comment '账户属性 ',
    OWNERSHIP_TYPE varchar(2) comment '归属种类',
    ACCT_EXEC varchar(30) comment '客户经理',
    ACCT_CLOSE_DATE varchar(8) comment '关闭日期',
    ACCT_CLOSE_REASON varchar(200) comment '关闭原因',
    ACCT_CLOSE_USER_ID varchar(30) comment '关闭柜员',
    ALL_DEP_IND varchar(1) comment '通存标志',
    ALL_DRA_IND varchar(1) comment '通兑标志',
    ACCT_DUE_DATE varchar(8) comment '账户有效日期  特指临时户和验资户的到期日期',
    ACCT_LICENSE_NO varchar(20) comment '账户许可证号',
    ACCT_LICENSE_DATE varchar(8) comment '账户许可证签发日期',
    PARENT_INTERNAL_KEY Decimal(15) comment '上级账户标识符',
    LEAD_ACCT_FLAG varchar(1) comment '是否主账户',
    MULTI_BAL_TYPE varchar(1) comment '是否多余额',
    BAL_TYPE varchar(2) comment '余额类型',
    OSA_FLAG varchar(1) not null comment '离岸标记 ',
    REGION_FLAG varchar(1) comment '区内区外标记 ',
    APPR_LETTER_NO varchar(30) comment '核准件编号',
    TERM varchar(5) comment '存期',
    TERM_TYPE varchar(1) comment '存期类型',
    MATURITY_DATE varchar(8) comment '账户到期日',
    APPLY_BRANCH varchar(20) comment '账户申请机构 ',
    HOME_BRANCH varchar(20) comment '账户归属机构',
    TERMINAL_ID varchar(200) comment '终端标识',
    USER_ID varchar(30) comment '交易柜员',
    LAST_CHANGE_USER_ID varchar(30) comment '上次修改柜员',
    LAST_CHANGE_DATE varchar(8) comment '最后变更日期 ',
    AUTO_RENEW_ROLLOVER varchar(1) comment '是否自动转存',
    TIMES_RENEWED varchar(5) comment '已本金转存次数',
    TIMES_ROLLEDOVER varchar(5) comment '已本息转存次数',
    RENEW_NO varchar(5) comment '本金转存次数',
    ROLLOVER_NO varchar(5) comment '本息转存次数',
    PARTIAL_RENEW_ROLL varchar(1) comment '是否部分本金转存',
    ADDTL_PRINCIPAL varchar(1) comment '是否允许增加本金 ',
    LAST_MVMT_STATUS varchar(1) comment '定期账户上一次更改状态 ',
    NOTICE_PERIOD varchar(5) comment '通知期限',
    ORIG_ACCT_OPEN_DATE varchar(8) comment '账户原始开立日期，即第一次开立日期，未进行过转存的首次开立日期',
    ORI_MATURITY_DATE varchar(8) comment '账户原始到期日期，即第一次开立时的到期日期，未进行期限变更时的到期日',
    ACCT_VERIFICATION_IND varchar(1) comment '对账标识 ',
    LENDER varchar(20) comment '贷款人',
    SUB_PROJECT_NO varchar(30) comment '子项目号 ',
    FIVE_CATEGORY varchar(6) comment '贷款五级分类',
    DAC_VALUE varchar(32) comment 'DAC值  防篡改加密',
    COMPANY varchar(20) comment '法人代码',
    CMISLOAN_NO varchar(50) comment '借据号',
    XRATE Decimal(15,8) comment '汇率',
    XRATE_ID varchar(1) comment '汇兑方式',
    REASON_CODE varchar(6) comment '账户用途',
    MM_REF_NO varchar(50) comment '资金交易参考号',
    SETTLE varchar(1) comment '结算标志',
    SETTLE_USER_ID varchar(30) comment '结算柜员',
    SETTLE_DATE varchar(8) comment '结算日期',
    APPROVAL_STATUS varchar(1) comment '复核标志',
    APPR_USER_ID varchar(30) comment '复核柜员',
    APPROVAL_DATE varchar(8) comment '复核日期',
    SCHED_MODE varchar(3) comment '计划方式',
    SOURCE_TYPE varchar(10) comment '渠道 ',
    SOURCE_MODULE varchar(10) comment '模块',
    BUSINESS_UNIT varchar(10) comment '帐套',
    CLIENT_TYPE varchar(3) comment '客户类型',
    AUTO_SETTLE varchar(1) comment '是否自动结算',
    INT_IND varchar(1) comment '是否计息',
    MAIN_BAL_FLAG varchar(1) comment '主账户是否带余额 ',
    MAIN_INT_FLAG varchar(1) comment '主账户是否带利息 ',
    ACCT_REAL_FLAG varchar(1) comment '账户虚实标志  ',
    SUB_SCHED_MODE varchar(3) comment '当前子计划方式  ',
    CUR_STAGE_NO varchar(30) comment '当前期次',
    GL_TYPE varchar(1) comment '总账类型',
    ACCT_CLASS varchar(2) comment '账户类别  ',
    ACCT_TYPE varchar(10) comment '账户类型',
    FIXED_CALL varchar(1) comment '定期账户细类  ',
    LAST_TRAN_DATE varchar(8) comment '最后交易日期',
    DORMANT_DATE varchar(8) comment '转不动户日期',
    ACCT_STOP_PAY varchar(1) default 'N' comment '账户余额止付标志 ',
    REGEN_SCHEDULE varchar(1) comment '重新生成还款计划标志',
    OLD_PROD_TYPE varchar(50) comment '原产品类型 ',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    IS_CHECKED varchar(1) comment '黑名单是否已检查标志位',
    primary  key (INTERNAL_KEY)
);
alter table MB_ACCT comment '账户基本信息表 undefined';

drop index MB_ACCT_IND2 on MB_ACCT;
/*==============================================================*/
/* Index: MB_ACCT_IND2                                           */
/*==============================================================*/
create unique index MB_ACCT_IND2 on MB_ACCT (
    BASE_ACCT_NO,PROD_TYPE,CCY,ACCT_SEQ_NO
);

drop index MB_ACCT_IND3 on MB_ACCT;
/*==============================================================*/
/* Index: MB_ACCT_IND3                                           */
/*==============================================================*/
create index MB_ACCT_IND3 on MB_ACCT (
    PARENT_INTERNAL_KEY
);

drop index MB_ACCT_IND4 on MB_ACCT;
/*==============================================================*/
/* Index: MB_ACCT_IND4                                           */
/*==============================================================*/
create index MB_ACCT_IND4 on MB_ACCT (
    CLIENT_NO
);

drop index MB_ACCT_IND5 on MB_ACCT;
/*==============================================================*/
/* Index: MB_ACCT_IND5                                           */
/*==============================================================*/
create index MB_ACCT_IND5 on MB_ACCT (
    ACCT_STATUS
);