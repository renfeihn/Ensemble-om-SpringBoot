drop table if exists MB_RECEIPT_DETAIL;
/*==============================================================*/
/* Table: MB_RECEIPT_DETAIL                                           */
/*==============================================================*/
create table MB_RECEIPT_DETAIL
(
    RECEIPT_NO varchar(30) not null comment '回收号',
    INVOICE_TRAN_NO varchar(50) not null comment '通知单号',
    ACCT_INTERNAL_KEY varchar(50) not null comment '账号KEY值',
    STAGE_NO varchar(30) comment '期次',
    AMT_TYPE varchar(10) comment '金额类型',
    REC_CCY varchar(3) comment '币种  FM_CURRENCY.CCY',
    REC_XRATE Decimal(15,8) comment '对人民币汇率 ',
    REC_XRATE_ID varchar(1) comment '汇兑方式 I:直接 D:间接',
    REC_AMT Decimal(17,2) comment '回收金额',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    ACCT_BRANCH varchar(20) comment '账户所属机构',
    primary  key (RECEIPT_NO,INVOICE_TRAN_NO)
);
alter table MB_RECEIPT_DETAIL comment '回收明细表 undefined';