drop table if exists MB_BATCH_LAW_DETAIL;
/*==============================================================*/
/* Table: MB_BATCH_LAW_DETAIL                                           */
/*==============================================================*/
create table MB_BATCH_LAW_DETAIL
(
    BATCH_NO varchar(50) not null comment '批次号',
    SEQ_NO varchar(50) not null comment '序号',
    BASE_ACCT_NO varchar(150) comment '账号',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    ACCT_CCY varchar(3) comment '币种',
    BAL_TYPE varchar(2) comment '余额类型',
    ACCT_NAME varchar(200) comment '账户名称，一般指中文账户名称',
    ACCT_BRANCH varchar(20) comment '账户开户行',
    TRAN_DATE varchar(8) comment '交易日期',
    CASH_TRAN varchar(1) comment '现转标志',
    CRET_AMT Decimal(17,2) comment '存入金额',
    DEBT_AMT Decimal(17,2) comment '支取金额',
    ACTUAL_BAL Decimal(17,2) comment '实际余额',
    DOC_TYPE varchar(10) comment '凭证类型',
    VOUCHER_NO varchar(50) comment '凭证号',
    NARRATIVE varchar(300) comment '摘要，开户时的账号用途，销户时的销户原因',
    TRAN_BRANCH varchar(20) comment '交易机构',
    USER_ID varchar(30) comment '使用柜员',
    AUTH_USER_ID varchar(30) comment '授权柜员',
    REFERENCE varchar(50) comment '交易参考号',
    TRAN_HIST_TIME varchar(17) comment '交易历史时间',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (BATCH_NO,SEQ_NO)
);
alter table MB_BATCH_LAW_DETAIL comment '批量司法查询结果明细表 undefined';