drop table if exists MB_BATCH_LAW_MAIN;
/*==============================================================*/
/* Table: MB_BATCH_LAW_MAIN                                           */
/*==============================================================*/
create table MB_BATCH_LAW_MAIN
(
    BATCH_NO varchar(50) not null comment '批次号',
    SEQ_NO varchar(50) not null comment '序号',
    DOCUMENT_TYPE varchar(3) not null comment '证件类型',
    DOCUMENT_ID varchar(75) not null comment '证件号码',
    ISS_COUNTRY varchar(3) not null comment '发证国家',
    CLIENT_NO varchar(20) comment '客户号',
    CLIENT_NAME varchar(200) comment '客户名称',
    BASE_ACCT_NO varchar(150) comment '账号',
    ACCT_CCY varchar(3) comment '币种',
    PROD_TYPE varchar(50) comment '产品类型 ',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    ACCT_NAME varchar(200) comment '账户名称，一般指中文账户名称',
    TOTAL_AMOUNT Decimal(17,2) comment '汇总金额',
    ACTUAL_BAL Decimal(17,2) comment '实际余额',
    ACCT_OPEN_DATE varchar(8) comment '账户开户日期',
    ACCT_BRANCH varchar(20) comment '账户开户行',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (BATCH_NO,SEQ_NO)
);
alter table MB_BATCH_LAW_MAIN comment '批量司法查询结果汇总表 undefined';