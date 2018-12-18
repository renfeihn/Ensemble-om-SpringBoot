drop table if exists LM_CLIENT_TRAN_LIMIT;
/*==============================================================*/
/* Table: LM_CLIENT_TRAN_LIMIT                                           */
/*==============================================================*/
create table LM_CLIENT_TRAN_LIMIT
(
    LIMIT_REF varchar(200) comment '限额编码',
    BASE_ACCT_NO varchar(150) comment '账号',
    PROD_TYPE varchar(50) comment '账号所对应的产品类型',
    ACCT_CCY varchar(3) comment '账户币种  ',
    ACCT_SEQ_NO varchar(8) comment '账户序号  ',
    CLIENT_NO varchar(20) comment '客户号',
    MAX_AMT Decimal(17,2) comment '客户限额最大额',
    MIN_AMT Decimal(17,2) comment '客户限额最小额',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间'
);
alter table LM_CLIENT_TRAN_LIMIT comment '客户交易限额表 undefined';