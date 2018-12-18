drop table if exists IRL_ACCT;
/*==============================================================*/
/* Table: IRL_ACCT                                           */
/*==============================================================*/
create table IRL_ACCT
(
    IRL_INTERNAL_KEY varchar(50) not null comment '账户键值',
    ACCT_NO varchar(150) not null comment '基本存款账号',
    PROD_TYPE varchar(50) not null comment '产品类型',
    BRANCH varchar(20) not null comment '机构',
    SOURCE_TYPE varchar(10) comment '渠道',
    CCY varchar(3) not null comment '币种',
    CLIENT_NO varchar(20) not null comment '客户号',
    ACCT_OPEN_DATE varchar(8) not null comment '开户日期',
    ACCT_CLOSE_DATE varchar(8) comment '关闭日期',
    MATURITY_DATE varchar(8) comment '账户到期日',
    DEP_TERM_PERIOD varchar(50) comment '存期',
    DEP_TERM_TYPE varchar(1) comment '存期类型',
    PRINCIPAL_AMT Decimal(17,2) comment '交易本金',
    PREV_DAY_BAL Decimal(17,2) comment '上日余额',
    BALANCE Decimal(17,2) comment '余额',
    ACCT_TYPE varchar(10) comment '账户类型',
    ACCT_STATUS varchar(3) comment '账户状态',
    PROFIT_CENTRE varchar(12) comment '利润中心',
    SOURCE_MODULE varchar(10) comment '源模块',
    BUSINESS_UNIT varchar(10) comment '账套',
    CLIENT_TYPE varchar(3) comment '客户类型',
    ACCOUNTING_STATUS varchar(3) comment '核算状态',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (IRL_INTERNAL_KEY)
);
alter table IRL_ACCT comment '分户信息表 undefined';