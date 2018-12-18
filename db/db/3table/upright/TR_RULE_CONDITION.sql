drop table if exists TR_RULE_CONDITION;
/*==============================================================*/
/* Table: TR_RULE_CONDITION                                           */
/*==============================================================*/
create table TR_RULE_CONDITION
(
    RULE_CODE varchar(6) not null comment '规则代码',
    RULE_CODE_T varchar(6) comment '前置规则',
    RULE_TYPE varchar(100) not null comment '规则类型',
    IS_EXIST_CLIENT varchar(2) comment '是否已经开立客户号',
    DOC_TYPE varchar(10) comment '证件种类',
    CLIENT_TYPE varchar(3) comment '客户类型',
    CLI_BILL_IS_EXIST varchar(2) comment '是否存在未打印回单',
    CHK_ACCT_SIGN varchar(2) comment '是否进行对账签约',
    IS_EXI_EXPIRE_LOAN varchar(2) comment '是否有到期贷款',
    IS_RULE_VALID varchar(2) comment '该规则是否生效',
    DOC_IS_EXPIRE varchar(2) comment '证件是否即将到期',
    IS_AFTER varchar(2) comment '交易后是否需要引导',
    IS_BEFORE varchar(2) comment '交易前是否需要引导',
    IS_VALID_CON varchar(2) comment '交易引导生效条件',
    TRAN_CODE varchar(10) comment '交易代码',
    ADDITION_INFO varchar(100) comment '附加提示信息',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间'
);
alter table TR_RULE_CONDITION comment '交易引导条件配置表 undefined';