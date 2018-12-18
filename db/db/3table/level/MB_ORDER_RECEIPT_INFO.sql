drop table if exists MB_ORDER_RECEIPT_INFO;
/*==============================================================*/
/* Table: MB_ORDER_RECEIPT_INFO                                           */
/*==============================================================*/
create table MB_ORDER_RECEIPT_INFO
(
    ORDER_NO varchar(50) not null comment '预约编号',
    ORDER_SEQ_NO varchar(50) not null comment '预约顺序号',
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    REASON_CODE varchar(6) comment '还款原因',
    SETTLE_ACCT_INTERNAL_KEY Decimal(15) comment '结算账户标志符',
    SETTLE_BASE_ACCT_NO varchar(150) not null comment '还款账号',
    SETTLE_ACCT_SEQ_NO varchar(8) not null comment '序列号',
    SETTLE_PROD_TYPE varchar(50) not null comment '产品类型',
    SETTLE_ACCT_CCY varchar(3) not null comment '账户币种',
    RECEIPT_TYPE varchar(10) not null comment '回收类型',
    RECEIPT_DATE varchar(8) not null comment '还款日期',
    RECEIPT_PRI_AMT Decimal(17,2) comment '提前还款本金（提前还款时必填）',
    SYNC_FINAL_BILLING varchar(1) comment '利随本清标志',
    PRE_REPAY_DEAL varchar(1) comment '还款计划变更方式',
    PRE_INT_DEAL varchar(1) comment '利息处理方式',
    TRAN_DATE varchar(8) comment '交易日期',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码',
    primary  key (ORDER_NO)
);
alter table MB_ORDER_RECEIPT_INFO comment '预约还款登记表 undefined';