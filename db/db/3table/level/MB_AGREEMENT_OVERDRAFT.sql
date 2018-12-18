drop table if exists MB_AGREEMENT_OVERDRAFT;
/*==============================================================*/
/* Table: MB_AGREEMENT_OVERDRAFT                                           */
/*==============================================================*/
create table MB_AGREEMENT_OVERDRAFT
(
    AGREEMENT_ID varchar(30) not null comment '协议号',
    OD_PROD_TYPE varchar(50) comment '透支产品类型',
    LOAN_PROD_TYPE varchar(50) comment '贷款产品类型',
    LOAN_INTERNAL_KEY Decimal(15) comment '贷款账户KEY值',
    LOAN_BASE_ACCT_NO varchar(150) comment '贷款账号',
    LOAN_ACCT_CCY varchar(3) comment '贷款账户币种',
    LOAN_SEQ_NO varchar(8) comment '贷款账户序列号',
    OD_METHOD varchar(2) comment '透支方式',
    OD_CCY varchar(3) comment '透支币种',
    OD_AMT Decimal(17,2) comment '透支额度',
    OD_TERM varchar(5) comment '透支期限',
    OD_TERM_TYPE varchar(1) comment '透支期限类型',
    OD_GRACE_PERIOD varchar(5) comment '透支免息期',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码',
    primary  key (AGREEMENT_ID)
);
alter table MB_AGREEMENT_OVERDRAFT comment '透支签约表 undefined';

drop index MB_AGREEMENT_OVERDRAFT_IND2 on MB_AGREEMENT_OVERDRAFT;
/*==============================================================*/
/* Index: MB_AGREEMENT_OVERDRAFT_IND2                                           */
/*==============================================================*/
create index MB_AGREEMENT_OVERDRAFT_IND2 on MB_AGREEMENT_OVERDRAFT (
    LOAN_INTERNAL_KEY
);