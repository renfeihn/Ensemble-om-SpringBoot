drop table if exists MB_PCP_ACCT_DETAIL;
/*==============================================================*/
/* Table: MB_PCP_ACCT_DETAIL                                           */
/*==============================================================*/
create table MB_PCP_ACCT_DETAIL
(
    SEQ_NO varchar(50) not null comment '序号',
    AGREEMENT_ID varchar(30) not null comment '协议编号',
    CLIENT_NO varchar(20) not null comment '客户号',
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    BASE_ACCT_NO varchar(150) not null comment '账号',
    PROD_TYPE varchar(50) not null comment '产品类型',
    CCY varchar(3) not null comment '币种',
    ACCT_SEQ_NO varchar(8) not null comment '账户序列号',
    IN_OUT_FLAG varchar(10) comment '收支标志',
    UP_METHOD varchar(2) comment '归集方法',
    UP_PLAN varchar(3) comment '归集策略',
    UP_REMAIN_AMT Decimal(17,2) comment '归集留底金额',
    UP_FIXED_AMT Decimal(17,2) comment '归集固定金额',
    UP_FREQ varchar(2) comment '归集频率',
    UP_MAX_SENECE varchar(10) comment '归集最大场次',
    UP_TIME Decimal(11,0) comment '归集时点',
    UP_DAY varchar(8) comment '归集日',
    UP_PROP varchar(5) comment '归集比例',
    DOWN_METHOD varchar(2) comment '下拨方法',
    DOWN_PLAN varchar(3) comment '下拨策略',
    DOWN_FREQ varchar(5) comment '下拨频率',
    DOWN_MAX_SENECE varchar(10) comment '下拨最大场次',
    DOWN_TIME Decimal(11,0) comment '下拨时点',
    DOWN_DAY varchar(8) comment '下拨日',
    DOWN_REMAIN_AMT Decimal(17,2) comment '下拨留底金额',
    DOWN_MOD_UNIT varchar(2) comment '取整单位',
    DOWN_FIXED_AMT Decimal(17,2) comment '下拨固定金额',
    INNER_PRICE varchar(1) comment '是否开通内部计价',
    INNER_PRICE_MODE varchar(2) comment '内部计价模式',
    INNER_PRICE_WAY varchar(10) comment '计价方式',
    PRICE_FREQ varchar(3) comment '计价频率',
    PRICE_DAY varchar(8) comment '计价日',
    DR_RATE Decimal(15,8) comment '借方利率',
    CR_RATE Decimal(15,8) comment '贷方利率',
    INT_CALC_BAL varchar(3) comment '计息方式 MB_ATTR_VALUE.INT_CALC_TYPE',
    OPEN_LIMIT varchar(1) comment '是否开通额度',
    LIMIT_MODE varchar(2) comment '额度管理模式',
    OVER_LIMIT_AMT Decimal(17,2) comment '超额额度',
    OPEN_CTRL varchar(1) comment '是否开通限额',
    CYC_CTRL varchar(1) comment '是否循环使用限额',
    STATUS varchar(3) not null comment '状态 A:有效 E:失效',
    AGREEMENT_FLAG varchar(4) not null comment '现金池协议标志',
    USER_ID varchar(30) comment '交易柜员 FM_USER.USER_ID',
    APPR_USER_ID varchar(30) comment '复核柜员',
    AUTH_USER_ID varchar(30) comment '授权柜员',
    BRANCH varchar(20) comment '机构代码',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    EFFECT_FLAG varchar(1) comment '是否生效',
    COMPANY varchar(20) comment '法人代码',
    primary  key (SEQ_NO)
);
alter table MB_PCP_ACCT_DETAIL comment '资金池分户信息表 undefined';

drop index MB_ACCT_INT_DETAIL_IND1 on MB_PCP_ACCT_DETAIL;
/*==============================================================*/
/* Index: MB_ACCT_INT_DETAIL_IND1                                           */
/*==============================================================*/
create index MB_ACCT_INT_DETAIL_IND1 on MB_PCP_ACCT_DETAIL (
    AGREEMENT_ID
);