drop table if exists MB_DD_INCREASE;
/*==============================================================*/
/* Table: MB_DD_INCREASE                                           */
/*==============================================================*/
create table MB_DD_INCREASE
(
    COUNTER varchar(50) not null comment '序号',
    ACCT_INTERNAL_KEY varchar(50) comment '账号KEY值',
    BASE_ACCT_NO varchar(150) comment '账号',
    PROD_TYPE varchar(50) comment '产品类型',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    USER_ID varchar(30) comment '交易柜员 FM_USER.USER_ID',
    TRAN_CCY varchar(3) comment '交易币种  FM_CURRENCY.CCY',
    APPR_USER_ID varchar(30) comment '复核柜员',
    APPROVAL_STATUS varchar(1) comment '复核标志',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    DDI_AMT Decimal(17,2),
    DDI_DATE varchar(8),
    COMPANY varchar(20) comment '法人代码',
    primary  key (COUNTER)
);
alter table MB_DD_INCREASE comment '贷款增发表 undefined';