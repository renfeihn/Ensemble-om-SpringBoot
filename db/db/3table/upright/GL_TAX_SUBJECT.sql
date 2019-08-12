drop table if exists GL_TAX_SUBJECT;
/*==============================================================*/
/* Table: GL_TAX_SUBJECT                                           */
/*==============================================================*/
create table GL_TAX_SUBJECT
(
    TAXPAYER_CODE varchar(50) not null comment '纳税主体编号',
    PROCESS_TYPE varchar(1) comment '本息处理方式 ',
    BASE_ACCT_NO varchar(150) comment '账号',
    CCY varchar(3) comment '币种',
    CLIENT_NO varchar(20) comment '客户号',
    TAX_CODE varchar(50) comment '国税登记号',
    TAXPAYER_TYPE varchar(2) comment '纳税人类型 ',
    TAX_TYPE varchar(3) comment '税率类型  ',
    ACTUAL_TAX_RATE varchar(8) comment '适用税率',
    TAX_RATE_APPLY_TYPE varchar(8) comment '税率启用方式',
    TODAY_TAX Decimal(17,2) comment '当日税金',
    TODAY_INCOME Decimal(17,2) comment '当日收入',
    CUMULATIVE_TAX Decimal(17,2) comment '累计税金',
    CUMULATIVE_INCOME Decimal(17,2) comment '累计收入',
    TODAY_CONFIRM_TAX Decimal(17,2) comment '当日确认金额',
    CUMULATIVE_CONFIRM_TAX Decimal(17,2) comment '累计确认金额',
    BEFOREPAY_TATOL_TAX Decimal(17,2) comment '前付息总税金',
    FYJ_IN_INCOME Decimal(17,2) comment '非应计转入',
    FYJ_OUT_INCOME Decimal(17,2) comment '非应计转出',
    PROD_TYPE varchar(50) comment '产品类型',
    COMPANY varchar(20) comment '法人代码',
    primary  key (TAXPAYER_CODE)
);
alter table GL_TAX_SUBJECT comment '纳税主体表 undefined';