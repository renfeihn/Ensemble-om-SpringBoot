drop table if exists TB_CASH_SIGN_DEAL;
/*==============================================================*/
/* Table: TB_CASH_SIGN_DEAL                                           */
/*==============================================================*/
create table TB_CASH_SIGN_DEAL
(
    CASH_SIGN_ID varchar(30) comment '长短款编号',
    TRAN_DATE varchar(8) comment '交易日期',
    TRAN_CCY varchar(3) comment '长短款交易币种',
    AMOUNT Decimal(17,2) comment '金额',
    BRANCH varchar(20) comment '交易机构',
    OFFICER_ID varchar(30) comment '长短款处理柜员',
    CASH_FROM_TO varchar(1) comment '资金来源 C：现金  G：总账',
    BASE_ACCT_NO varchar(150) comment '挂账活期账号',
    CCY varchar(3) comment '账户币种',
    ACCT_TYPE varchar(10) comment '账户类型',
    REFERENCE varchar(50) comment '交易参考号',
    CLIENT_NO varchar(20) comment '客户号',
    TRAN_TYPE varchar(10) comment '交易类型',
    CASH_ITEM varchar(4) comment '现金项目',
    EFFECT_DATE varchar(8) comment '生效时间',
    NARRATIVE varchar(300) comment '备注',
    PROD_TYPE varchar(50) comment '产品类型',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    GLOBAL_ID_TYPE varchar(3) comment '证件类型',
    GLOBAL_ID varchar(25) comment '证件编号',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    REVERSAL varchar(1) default 'N' comment '冲正标志',
    REVERSAL_DATE varchar(8) comment '冲正日期',
    REVERSAL_USER_ID varchar(30) comment '冲正柜员',
    REVERSAL_AUTH_USER_ID varchar(30) comment '冲正授权柜员'
);
alter table TB_CASH_SIGN_DEAL comment '长短款处理明细表 undefined';