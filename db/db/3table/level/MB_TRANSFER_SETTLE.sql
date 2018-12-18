drop table if exists MB_TRANSFER_SETTLE;
/*==============================================================*/
/* Table: MB_TRANSFER_SETTLE                                           */
/*==============================================================*/
create table MB_TRANSFER_SETTLE
(
    TRF_SETTLE_SEQ_NO varchar(30) not null comment '主键',
    CONTRACT_ID varchar(30) not null comment '合同ID',
    SETTLE_ACCT_CLASS varchar(3) not null comment '结算账户分类   FM_REF_CODE.DOMAIN-SETTLE_ACCT_CLASS',
    TRAN_TYPE varchar(10) not null comment '交易类型',
    INTERNAL_KEY Decimal(15) comment '帐户主键',
    SETTLE_BASE_ACCT_NO varchar(150) not null comment '账号',
    SETTLE_ACCT_SEQ_NO varchar(8) not null comment '序列号，采用顺序数字，表示在同一账号、账户类型、币种下的不同子账户，比如定期存款序列号',
    SETTLE_PROD_TYPE varchar(50) not null comment '结算账户产品类型  MB_PROD_TYPE.PROD_TYPE',
    SETTLE_ACCT_CCY varchar(3) not null comment '账户币种，对于AIO账户和一本通账户，账户币种为XXX  FM_CURRENCY.CCY',
    AMT_TYPE varchar(10) not null comment '金额类型',
    SETTLE_CCY varchar(3) not null comment '清算账号币种 FM_CURRENCY.CCY',
    SETTLE_AMT Decimal(17,2) comment '结算金额 ',
    RES_SEQ_NO varchar(50) comment '限制序号',
    NARRATIVE varchar(300) comment '摘要，开户时的账号用途，销户时的销户原因',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    BATCH_NO varchar(50) comment '批处理号',
    COMPANY varchar(20) comment '法人代码',
    primary  key (TRF_SETTLE_SEQ_NO)
);
alter table MB_TRANSFER_SETTLE comment '结算信息表 undefined';