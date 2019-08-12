drop table if exists MB_FINANCIAL_OUT_DETAIL;
/*==============================================================*/
/* Table: MB_FINANCIAL_OUT_DETAIL                                           */
/*==============================================================*/
create table MB_FINANCIAL_OUT_DETAIL
(
    AGREEMENT_ID varchar(30) not null comment '协议号',
    FIN_INTERNAL_KEY Decimal(15) not null comment '理财主账户唯一键',
    TD_INTERNAL_KEY Decimal(15) not null comment '转出账户唯一键',
    TRAN_OUT_DATE varchar(8) comment '转出日期',
    TRAN_OUT_AMT Decimal(17,2) comment '转出金额',
    FIN_STATUS varchar(3) comment '理财账户状态  A：生效；E：失效',
    REFERENCE varchar(50) comment '交易参考号',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (AGREEMENT_ID,FIN_INTERNAL_KEY,TD_INTERNAL_KEY)
);
alter table MB_FINANCIAL_OUT_DETAIL comment '理财转出明细表 undefined';