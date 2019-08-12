drop table if exists MB_INVOICE_PAYFROM_DETAIL;
/*==============================================================*/
/* Table: MB_INVOICE_PAYFROM_DETAIL                                           */
/*==============================================================*/
create table MB_INVOICE_PAYFROM_DETAIL
(
    PAYFROM_SEQ_NO varchar(50) not null comment '应还明细序号',
    ACCT_INTERNAL_KEY varchar(50) not null comment '账号KEY值',
    INVOICE_TRAN_NO varchar(50) not null comment '通知单号',
    AMT_TYPE varchar(10) not null comment '金额类型',
    SETTLE_ACCT_INTERNAL_KEY Decimal(15) comment '结算账户标志符',
    SETTLE_BASE_ACCT_NO varchar(150) not null comment '结算账号',
    SETTLE_PROD_TYPE varchar(50) comment '结算账户产品类型',
    SETTLE_ACCT_CCY varchar(3) comment '账户币种，对于AIO账户和一本通账户，账户币种为XXX',
    SETTLE_ACCT_SEQ_NO varchar(8) comment '序列号，采用顺序数字，表示在同一账号、账户类型、币种下的不同子账户，比如定期存款序列号',
    PAYFROM_AMT Decimal(17,2) not null comment '账户应还金额',
    TRAN_DATE varchar(8) comment '交易日期',
    USER_ID varchar(30) comment '使用柜员',
    LAST_CHANGE_DATE varchar(8) comment '最后变更日期 ',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (PAYFROM_SEQ_NO)
);
alter table MB_INVOICE_PAYFROM_DETAIL comment '单据应还明细表 undefined';