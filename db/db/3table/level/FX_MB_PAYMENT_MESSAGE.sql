drop table if exists FX_MB_PAYMENT_MESSAGE;
/*==============================================================*/
/* Table: FX_MB_PAYMENT_MESSAGE                                           */
/*==============================================================*/
create table FX_MB_PAYMENT_MESSAGE
(
    SEQ_NO varchar(50) not null comment '序号',
    CHANNEL_TYPE varchar(20) not null comment '渠道类型',
    CHANNEL_SEQ_NO varchar(50) not null comment '渠道流水号',
    TRAN_DATE varchar(8) not null comment '交易日期',
    TRAN_TYPE varchar(10) comment '交易类型',
    MESSAGE_CODE varchar(6) comment '报文代码',
    CR_DR_IND varchar(1) comment '收入支出标志',
    MSG_ID varchar(50) comment '报文标识码',
    BASE_ACCT_NO varchar(150) comment '账号',
    ACCT_NAME varchar(200) comment '账户名称，一般指中文账户名称',
    SEND_BANK_CODE varchar(20) comment '发送行行号',
    OTH_BANK_CODE varchar(20) comment '其他行代码',
    OTH_BASE_ACCT_NO varchar(150) comment '对方帐号/卡号',
    OTH_BASE_ACCT_NAME varchar(200) comment '对方账号户名',
    TRAN_CCY varchar(3) comment '交易币种',
    TRAN_AMT Decimal(17,2) comment '交易金额',
    SETTLEMENT_DATE varchar(8) comment '清算日期',
    ORIG_CHANNEL_SEQ_NO varchar(50) comment '原交易渠道流水号',
    ORIG_SEQ_NO varchar(50) comment '原交易序号',
    NARRATIVE varchar(300) comment '摘要，开户时的账号用途，销户时的销户原因',
    DETAIL_MSG_ID varchar(50) comment '明细报文标识号',
    DETAIL_CHANNEL_REF_NO varchar(50) comment '明细渠道业务交易序号',
    DETAIL_PAYEE_ACCT_NO varchar(50) comment '明细收款人账号',
    DETAIL_PAYEE_ACCT_NAME varchar(200) comment '明细收款人账户名称',
    DETAIL_RCV_BANK_CODE varchar(20) comment '明细接收行号',
    DETAIL_TRAN_AMT Decimal(17,2) comment '明细交易金额',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    primary  key (SEQ_NO)
);
alter table FX_MB_PAYMENT_MESSAGE comment '核心支付报文登记簙 undefined';

drop index FX_MB_PAY_MESAGE_IND2 on FX_MB_PAYMENT_MESSAGE;
/*==============================================================*/
/* Index: FX_MB_PAY_MESAGE_IND2                                           */
/*==============================================================*/
create index FX_MB_PAY_MESAGE_IND2 on FX_MB_PAYMENT_MESSAGE (
    CHANNEL_SEQ_NO
);

drop index FX_MB_PAY_MESAGE_IND3 on FX_MB_PAYMENT_MESSAGE;
/*==============================================================*/
/* Index: FX_MB_PAY_MESAGE_IND3                                           */
/*==============================================================*/
create index FX_MB_PAY_MESAGE_IND3 on FX_MB_PAYMENT_MESSAGE (
    TRAN_DATE
);