drop table if exists MB_AGREEMENT_FINANCIAL;
/*==============================================================*/
/* Table: MB_AGREEMENT_FINANCIAL                                           */
/*==============================================================*/
create table MB_AGREEMENT_FINANCIAL
(
    AGREEMENT_ID varchar(30) not null comment '协议号',
    FIN_PROD_TYPE varchar(50) comment '理财产品类型',
    FIN_PROD_DESC varchar(8) comment '理财类型描述',
    INTERNAL_KEY Decimal(15) comment '理财主账户唯一键',
    BASE_ACCT_NO varchar(150) comment '理财主账号',
    PROD_TYPE varchar(50) comment '理财主账户产品类型',
    CCY varchar(3) comment '理财主账户币种',
    REMAIN_AMT Decimal(17,2) comment '保留金额',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (AGREEMENT_ID)
);
alter table MB_AGREEMENT_FINANCIAL comment '理财协议表 undefined';