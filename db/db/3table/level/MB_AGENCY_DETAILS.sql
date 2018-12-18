drop table if exists MB_AGENCY_DETAILS;
/*==============================================================*/
/* Table: MB_AGENCY_DETAILS                                           */
/*==============================================================*/
create table MB_AGENCY_DETAILS
(
    BATCH_NO varchar(50) not null comment '批次号',
    SEQ_NO varchar(50) not null comment '序号',
    BASE_ACCT_NO varchar(150) not null comment '账号',
    PROD_TYPE varchar(50) comment '产品类型',
    CCY varchar(3) not null comment '交易币种',
    ACCT_SEQ_NO varchar(8) comment '账户序列号，采用顺序数字，表示在同一账号、账户类型、币种下的不同子账户，比如定期存款序列号',
    AGENCY_TYPE varchar(1) not null comment '代发代扣类型',
    ACCT_NAME varchar(200) not null comment '账户名称，一般指中文账户名称',
    TRAN_AMT Decimal(17,2) not null comment '交易金额',
    ADDRESS varchar(140) comment '用户地址',
    COMMENTS varchar(100) comment '附言',
    INTERNAL_KEY Decimal(15) comment '账户主键',
    TRAN_STATUS varchar(3) comment '交易状态',
    FAILURE_REASON varchar(4000) comment '失败原因',
    SPARE1 varchar(30) comment '备用1',
    SPARE2 varchar(30) comment '备用2',
    SPARE3 varchar(30) comment '备用3',
    SPARE4 varchar(30) comment '备用4',
    SPARE5 varchar(30) comment '备用5',
    SPARE6 varchar(30) comment '备用6',
    SPARE7 varchar(30) comment '备用7',
    SPARE8 varchar(30) comment '备用8',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (BATCH_NO,SEQ_NO)
);
alter table MB_AGENCY_DETAILS comment '批量代发代扣明细表 undefined';