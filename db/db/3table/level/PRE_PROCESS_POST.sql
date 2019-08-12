drop table if exists PRE_PROCESS_POST;
/*==============================================================*/
/* Table: PRE_PROCESS_POST                                           */
/*==============================================================*/
create table PRE_PROCESS_POST
(
    INDEX_KEY varchar(100) not null comment '内部主键',
    BRANCH varchar(20) comment '机构代码',
    CCY varchar(3) comment '币种',
    CLIENT_NO varchar(20) comment '客户号',
    GL_CODE varchar(20) comment '科目代码',
    PROFIT_CENTRE varchar(12) comment '利润中心',
    SOURCE_MODULE varchar(10) comment '模块',
    SOURCE_TYPE varchar(10) comment '渠道',
    REFERENCE varchar(50) comment '交易参考号',
    AMOUNT Decimal(17,2) comment '交易金额',
    EVENT_TYPE varchar(50) comment '事件类型',
    TRAN_TYPE varchar(10) comment '交易类型',
    BASE_ACCT_NO varchar(150) comment '账号',
    CR_DR_IND varchar(1) comment '收入支出标志',
    PROD_TYPE varchar(50) comment '产品类型',
    IS_TAX varchar(1) comment '是否涉税',
    IS_SUPPLY_PROCESS varchar(1) comment '是否补充处理',
    PROCESS_TYPE varchar(1) comment '本息处理方式 ',
    TAX_TYPE varchar(3) comment '税率类型',
    REVERSAL varchar(1) comment '冲正标志',
    TAXPAYER_CODE varchar(50) comment '纳税主体编号',
    ACCOUNTING_STATUS varchar(3) comment '核算状态',
    POST_DATE varchar(8) comment '入帐日期',
    VALUE_DATE varchar(8) comment '生效日期',
    COMPANY varchar(20) comment '法人代码',
    primary  key (INDEX_KEY)
);
alter table PRE_PROCESS_POST comment '涉税分录预处理表 undefined';