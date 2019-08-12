drop table if exists MB_APPR_LETTER;
/*==============================================================*/
/* Table: MB_APPR_LETTER                                           */
/*==============================================================*/
create table MB_APPR_LETTER
(
    APPR_LETTER_NO varchar(30) not null comment '核准件编号',
    BRANCH varchar(20) not null comment '机构',
    CLIENT_NO varchar(20) not null comment '客户号',
    OPEN_DATE varchar(8) not null comment '开立日期',
    MATURITY_DATE varchar(8) not null comment '到期日期',
    USER_ID varchar(30) not null comment '用户ID',
    APPR_TYPE varchar(2) comment '核准件类型',
    FUND_SOURCE varchar(100) comment '资金来源',
    FUND_PURPOSE varchar(100) comment '资金用途',
    APPR_ACCT_IND varchar(2) comment '核准账户要项',
    ACCT_TYPE_DESC varchar(30) comment '帐户类型描述',
    INCOME_SCOPE varchar(200) comment '收入范围',
    EXPEND_SCOPE varchar(200) comment '支出范围',
    NARRATIVE varchar(300) comment '摘要',
    CAPITAL_AMT Decimal(17,2) comment '核准件开立金额',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (APPR_LETTER_NO)
);
alter table MB_APPR_LETTER comment '核准件主表信息 undefined';