drop table if exists MB_SETTLE_ACCT_CLASS;
/*==============================================================*/
/* Table: MB_SETTLE_ACCT_CLASS                                           */
/*==============================================================*/
create table MB_SETTLE_ACCT_CLASS
(
    SETTLE_ACCT_CLASS varchar(3) not null comment '结算账户分类',
    SETTLE_ACCT_DESC varchar(200) not null comment '结算账户描述',
    SOURCE_MODULE varchar(10) not null comment '模块，支持配置多个，逗号分隔',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (SETTLE_ACCT_CLASS)
);
alter table MB_SETTLE_ACCT_CLASS comment '结算账户分类定义表 undefined';