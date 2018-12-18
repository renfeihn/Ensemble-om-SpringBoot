drop table if exists GL_WRITE_OFF_ACCOUNT;
/*==============================================================*/
/* Table: GL_WRITE_OFF_ACCOUNT                                           */
/*==============================================================*/
create table GL_WRITE_OFF_ACCOUNT
(
    BASE_ACCT_NO varchar(150) comment '账号',
    HANG_SEQ_NO varchar(18) comment '挂账序列号',
    WRITE_OFF_SEQ_NO varchar(20) comment '销账序号',
    WRITE_OFF_STATUS varchar(1) comment '销账状态',
    TRAN_TYPE varchar(10) comment '交易类型',
    TRAN_DATE varchar(8) comment '交易日期',
    WRITE_OFF_AMT Decimal(17,2) comment '销账金额',
    HANG_BAL Decimal(17,2) comment '挂账余额',
    NARRATIVE varchar(300) comment '摘要，开户时的账号用途，销户时的销户原因',
    OTH_BASE_ACCT_NO varchar(150) comment '对方帐号/卡号',
    OTH_ACCT_NAME varchar(200) comment '对方户名',
    OTH_BRANCH varchar(20) comment '对方账户开户机构',
    TRAN_BRANCH varchar(20) comment '交易支行',
    REFERENCE varchar(50) comment '交易参考号',
    USER_ID varchar(30) comment '交易柜员 FM_USER.USER_ID',
    AUTH_USER_ID varchar(30) comment '授权柜员',
    TRAN_TIMESTAMP varchar(17) comment '时间戳'
);
alter table GL_WRITE_OFF_ACCOUNT comment '挂销账销账登记簿 undefined';