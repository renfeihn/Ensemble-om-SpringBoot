drop table if exists MB_AGREEMENT_PACKAGE_ACCT;
/*==============================================================*/
/* Table: MB_AGREEMENT_PACKAGE_ACCT                                           */
/*==============================================================*/
create table MB_AGREEMENT_PACKAGE_ACCT
(
    AGREEMENT_ID varchar(30) not null comment '协议编号,费用套餐签约协议编号',
    INTERNAL_KEY Decimal(15) not null comment '账户标识符',
    BASE_ACCT_NO varchar(150) not null comment '账卡号',
    PROD_TYPE varchar(50) comment '产品类型',
    CCY varchar(3) comment '账户币种',
    ACCT_SEQ_NO varchar(8) comment '账户序号',
    REASON_CODE varchar(6) comment '账户用途',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (AGREEMENT_ID,INTERNAL_KEY)
);
alter table MB_AGREEMENT_PACKAGE_ACCT comment '费用套餐受益账户表 undefined';