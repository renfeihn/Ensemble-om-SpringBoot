drop table if exists MB_AGREEMENT_ASS_DETAIL;
/*==============================================================*/
/* Table: MB_AGREEMENT_ASS_DETAIL                                           */
/*==============================================================*/
create table MB_AGREEMENT_ASS_DETAIL
(
    AGREEMENT_ID varchar(30) not null comment '协议号',
    INTERNAL_KEY Decimal(15) not null comment '账户INTERNAL_KEY',
    BASE_ACCT_NO varchar(150) comment '账号',
    PROD_TYPE varchar(50) comment '产品类型',
    ACCT_CCY varchar(3) comment '账户币种',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    CLIENT_NO varchar(20) comment '客户号',
    SOURCE_MODULE varchar(10) comment '模块',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (AGREEMENT_ID)
);
alter table MB_AGREEMENT_ASS_DETAIL comment '存贷组合签约表明细表 undefined';