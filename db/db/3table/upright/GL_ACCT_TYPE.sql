drop table if exists GL_ACCT_TYPE;
/*==============================================================*/
/* Table: GL_ACCT_TYPE                                           */
/*==============================================================*/
create table GL_ACCT_TYPE
(
    ACCT_TYPE varchar(10) not null comment '帐户类型',
    ACCT_TYPE_DESC varchar(30) not null comment '帐户类型描述',
    DEPOSIT_TYPE varchar(5) not null comment '存款类型 N-往账，V-来账',
    GL_CODE_AL varchar(20) comment '资产、负债类科目代码 取值AC_SUBJECT',
    INT_PAY varchar(50) comment '利息支出科目  贷方利息使用的借方科目',
    INT_PAYABLE varchar(20) comment '应付利息科目  贷方利息使用的贷方科目',
    INT_RECEIVE varchar(50) comment '利息收入科目  借方利息使用的贷方科目',
    INT_RECEIVABLE varchar(20) comment '应计利息科目  借方利息使用的借方科目',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    COMPANY varchar(20) comment '法人代码',
    primary  key (ACCT_TYPE)
);
alter table GL_ACCT_TYPE comment '总账产品定义 undefined';