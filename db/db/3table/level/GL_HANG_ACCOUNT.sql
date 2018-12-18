drop table if exists GL_HANG_ACCOUNT;
/*==============================================================*/
/* Table: GL_HANG_ACCOUNT                                           */
/*==============================================================*/
create table GL_HANG_ACCOUNT
(
    BASE_ACCT_NO varchar(150) comment '账号',
    HANG_SEQ_NO varchar(18) comment '挂账序列号',
    CCY varchar(3) comment '币种',
    HANG_STATUS varchar(1) comment '挂账状态',
    LAST_CHANGE_DATE varchar(8) comment '最后变更日期 ',
    LAST_CHANGE_TIME varchar(17) comment '上次修改时间',
    TRAN_DATE varchar(8) comment '交易日期',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    HANG_END_DATE varchar(8) comment '挂账到期日',
    MWRITE_OFF_SEQ_NO varchar(8) comment '最大销账序号',
    HANG_TOTAL_AMT Decimal(17,2) comment '挂账总额',
    HANG_BAL Decimal(17,2) comment '挂账余额',
    CR_DR_IND varchar(1) comment '收入支出标志',
    NARRATIVE varchar(300) comment '摘要，开户时的账号用途，销户时的销户原因',
    OTH_BANK_FLAG varchar(20) comment '对手账户行内标志',
    OTH_BASE_ACCT_NO varchar(150) comment '对方帐号/卡号',
    OTH_ACCT_NAME varchar(200) comment '对方户名',
    OTH_BRANCH varchar(20) comment '对方账户开户机构',
    TRAN_BRANCH varchar(20) comment '交易支行 ',
    REFERENCE varchar(50) comment '交易参考号',
    USER_ID varchar(30) comment '交易柜员',
    AUTH_USER_ID varchar(30) comment '授权柜员',
    SETTLE_BASE_ACCT_NO varchar(150) comment '账号',
    SETTLE_ACCT_NAME varchar(200) comment '账户户名'
);
alter table GL_HANG_ACCOUNT comment '挂销账挂账登记簿 undefined';