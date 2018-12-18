drop table if exists BAT_SETTLE_CHANGPAY;
/*==============================================================*/
/* Table: BAT_SETTLE_CHANGPAY                                           */
/*==============================================================*/
create table BAT_SETTLE_CHANGPAY
(
    CHANNEL_DATE varchar(8) comment '渠道日期',
    CHANNEL_SEQ_NO varchar(50) comment '渠道流水号',
    TRAN_DATE varchar(8) comment '交易日期',
    REFERENCE varchar(50) comment '交易参考号',
    PAY_ACCT_NAME varchar(200) comment '付款户名',
    PAY_ACCT varchar(50) comment '付款账号',
    REC_ACCT_NAME varchar(200) comment '收款户名',
    REC_ACCT varchar(150) comment '收款帐号',
    TRAN_AMT Decimal(17,2) comment '交易金额',
    FEE_AMT Decimal(17,2) comment '手续费金额',
    PAY_STATUS varchar(20) comment '入账状态'
);