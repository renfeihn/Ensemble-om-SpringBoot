drop table if exists MB_BATCH_TRANSFER_DETAILS;
/*==============================================================*/
/* Table: MB_BATCH_TRANSFER_DETAILS                                           */
/*==============================================================*/
create table MB_BATCH_TRANSFER_DETAILS
(
    CONTRAST_BAT_NO varchar(50) not null comment '批次号',
    SEQ_NO varchar(50) not null comment '序号',
    OUT_SEQ_NO varchar(8) not null comment '转出账号序号',
    OUT_PROD_TYPE varchar(50) not null comment '转出账户产品',
    OUT_CCY varchar(3) not null comment '转出账户币种',
    OUT_PURPOSE varchar(50) comment '转出账户用途',
    OUT_ACCT_NAME varchar(200) comment '转出账户名称',
    WITHDRAWAL_TYPE varchar(1) comment '支取方式',
    TRAN_TYPE varchar(10) comment '交易类型',
    DOC_TYPE varchar(10) comment '凭证类型',
    PREFIX varchar(10) comment '前缀',
    VOUCHER_NO varchar(50) comment '凭证号',
    SIGN_DATE varchar(8) comment '登记时间',
    NARRATIVE varchar(300) comment '摘要，开户时的账号用途，销户时的销户原因',
    IN_ACCT varchar(50) comment '转入账号',
    IN_SEQ_NO varchar(8) comment '转入账号序号',
    IN_PROD_TYPE varchar(10) comment '产品类型',
    IN_CCY varchar(3) comment '币种',
    IN_PURPOSE varchar(50) comment '转入账户用途',
    IN_ACCT_NAME varchar(200) comment '转入账户名称',
    TRAN_AMT Decimal(17,2) comment '交易金额',
    TRAN_CCY varchar(3) comment '交易币种 ',
    STATUS varchar(3) comment '状态 A:有效 E:失效',
    ERROR_DESC varchar(4000) comment '未生成分录原因',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    OUT_ACCT varchar(150) comment '账号',
    primary  key (CONTRAST_BAT_NO,SEQ_NO)
);
alter table MB_BATCH_TRANSFER_DETAILS comment '批量转账明细登记薄 undefined';