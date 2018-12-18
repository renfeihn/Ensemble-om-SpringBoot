drop table if exists GL_CUSTOM_RULE;
/*==============================================================*/
/* Table: GL_CUSTOM_RULE                                           */
/*==============================================================*/
create table GL_CUSTOM_RULE
(
    RULE_NO varchar(20) not null comment '规则编号',
    RULE_EXPRESSION varchar(1000) not null comment '规则表达式',
    RULE_DESC varchar(256) comment '规则描述',
    GL_CODE varchar(20) not null comment '科目代码 AC_SUBJECT.SUBJECT_CODE',
    BUSSINESS_UNIT varchar(20) comment '帐套',
    PROFIT_CENTRE varchar(12) comment '利润中心 FM_PROFIT_CENTRE.PROFIT_CENTRE',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    PROD_TYPE varchar(50) not null comment '产品类型',
    AMOUNT_TYPE varchar(50) not null comment '金额类型',
    ACCOUNTING_GL_CODE_REP varchar(50) not null comment 'gl_accounting表中被替换gl_code_exp',
    CUSTOM_KEY1 varchar(50) comment '自定义规则一',
    CUSTOM_KEY2 varchar(50) comment '自定义规则二',
    CUSTOM_KEY3 varchar(50) comment '自定义规则三',
    CUSTOM_VALUE1 varchar(50) comment '自定义规则一对应值',
    CUSTOM_VALUE2 varchar(50) comment '自定义规则二对应值',
    CUSTOM_VALUE3 varchar(50) comment '自定义规则三对应值',
    ACCOUNTING_STATUS varchar(3) comment '核算状态',
    COMPANY varchar(20) comment '法人代码',
    primary  key (RULE_NO)
);
alter table GL_CUSTOM_RULE comment '自定义规则表 undefined';