drop table if exists MB_DEBT_ASSET_FEE;
/*==============================================================*/
/* Table: MB_DEBT_ASSET_FEE                                           */
/*==============================================================*/
create table MB_DEBT_ASSET_FEE
(
    FEE_SEQ_NO varchar(50) not null comment '费用编号',
    DEBT_ASSET_NO varchar(50) not null comment '抵债资产编号',
    FEE_CLASS varchar(1) not null comment '费用分类',
    FEE_AMT Decimal(17,2) not null comment '手续费金额',
    FEE_CCY varchar(3) not null comment '收费币种  FM_CURRENCY.CCY',
    FEE_TAKEN_MODE varchar(1) not null comment '手续费收取方式',
    PAY_BASE_ACCT_NO varchar(150) comment '付款账号',
    PAY_ACCT_PROD_TYPE varchar(50) comment '付款账户产品类型',
    PAY_ACCT_CCY varchar(3) comment '付款账户币种',
    PAY_ACCT_SEQ_NO varchar(8) comment '付款账户序号',
    RECEIVE_BASE_ACCT_NO varchar(150) comment '收款账号',
    RECEIVE_ACCT_PROD_TYPE varchar(50) comment '收款账户产品类型',
    RECEIVE_ACCT_CCY varchar(3) comment '收款账户币种',
    RECEIVE_ACCT_SEQ_NO varchar(8) comment '收款账户序号',
    NARRATIVE varchar(300) comment '摘要，开户时的账号用途，销户时的销户原因',
    USER_ID varchar(30) comment '交易柜员 FM_USER.USER_ID',
    TRAN_DATE varchar(8) comment '交易日期',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码',
    primary  key (FEE_SEQ_NO)
);
alter table MB_DEBT_ASSET_FEE comment '抵债资产费用表 undefined';