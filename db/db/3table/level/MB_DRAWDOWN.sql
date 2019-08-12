drop table if exists MB_DRAWDOWN;
/*==============================================================*/
/* Table: MB_DRAWDOWN                                           */
/*==============================================================*/
create table MB_DRAWDOWN
(
    INTERNAL_KEY Decimal(15) not null comment '账户标识符',
    COUNTER varchar(50) not null comment '序列号',
    BASE_ACCT_NO varchar(150) comment '账号',
    PROD_TYPE varchar(50) comment '产品类型',
    CCY varchar(3) comment '账户币种，对于AIO账户和一本通账户，账户币种为XXX',
    ACCT_SEQ_NO varchar(8) comment '账户序列号，采用顺序数字，表示在同一账号、账户类型、币种下的不同子账户，比如定期存款序列号',
    CLIENT_NO varchar(20) comment '客户号',
    LENDER varchar(20) comment '贷款人',
    DD_METHOD varchar(2) comment '发放方式  DD：发放  DI：增量发放',
    DD_DATE varchar(8) comment '发放日期',
    DD_AMT Decimal(17,2) comment '发放金额',
    DISTINCT_INT Decimal(17,2) comment '贴现利息',
    MATURITY_DATE varchar(8) comment '账户到期日',
    TRAN_BRANCH varchar(20) comment '交易行',
    USER_ID varchar(30) comment '冲正柜员ID',
    TRAN_DATE varchar(8) comment '交易日期',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    CMISLOAN_NO varchar(50) comment '借据号',
    REFERENCE varchar(50) comment '交易参考号',
    DAC_VALUE varchar(32) comment 'DAC值  防篡改加密',
    COMPANY varchar(20) comment '法人代码',
    EVENT_TYPE varchar(50) comment '事件类型',
    TRAN_TYPE varchar(10) comment '交易类型',
    REVERSAL varchar(1) comment '冲正标志',
    REVERSAL_REASON varchar(200) comment '冲正原因',
    REVERSAL_USER_ID varchar(30) comment '冲正柜员',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (INTERNAL_KEY,COUNTER)
);
alter table MB_DRAWDOWN comment '贷款发放表 undefined';