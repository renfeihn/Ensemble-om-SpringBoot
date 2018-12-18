drop table if exists MB_FINANCIAL_ACCT;
/*==============================================================*/
/* Table: MB_FINANCIAL_ACCT                                           */
/*==============================================================*/
create table MB_FINANCIAL_ACCT
(
    ACCT_SEQ_NO varchar(8) comment '序号',
    BASE_ACCT_NO varchar(150) comment '定期理财定义序号',
    ACCT_CCY varchar(3) comment '账户币种',
    PROD_TYPE varchar(50) comment '产品类型',
    INTERNAL_KEY Decimal(15) not null comment '理财主账户唯一键',
    FIN_ACCT_SEQ_NO varchar(8) comment '理财账户序号',
    FIN_ACCT_CCY varchar(3) comment '理财产品币种',
    FIN_PROD_TYPE varchar(50) comment '理财产品类型',
    FIN_BASE_ACCT_NO varchar(150) comment '理财产品帐号',
    FIN_INTERNAL_KEY Decimal(15) not null comment '理财主账户唯一键',
    FIN_STATUS varchar(3) comment '理财账户状态',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (FIN_INTERNAL_KEY)
);
alter table MB_FINANCIAL_ACCT comment '理财签约表 undefined';