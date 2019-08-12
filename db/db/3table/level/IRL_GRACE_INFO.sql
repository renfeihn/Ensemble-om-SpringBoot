drop table if exists IRL_GRACE_INFO;
/*==============================================================*/
/* Table: IRL_GRACE_INFO                                           */
/*==============================================================*/
create table IRL_GRACE_INFO
(
    INVOICE_TRAN_NO varchar(50) not null comment '通知单号',
    SYSTEM_ID varchar(20) not null comment '系统标识',
    IRL_INTERNAL_KEY varchar(50) not null comment '账户键值',
    GRACE_START_DATE varchar(8) not null comment '宽限期起始日期',
    GRACE_END_DATE varchar(8) not null comment '宽限期终止日期',
    ACCT_NO varchar(150) comment '基本存款账号',
    PROD_TYPE varchar(50) comment '产品类型',
    CCY varchar(3) comment '币种',
    CLIENT_NO varchar(20) comment '客户号',
    AMT_TYPE varchar(10) not null comment '金额类型',
    AMT Decimal(17,2) not null comment '金额',
    INT_CLASS varchar(20) not null comment '利息分类',
    INTEREST Decimal(17,2) comment '利息',
    TAX Decimal(17,2) comment '利息税',
    INPUT_DATE varchar(8) not null comment '计提日期',
    ACCOUNTING_STATUS varchar(3) not null comment '核算状态',
    PROFIT_CENTRE varchar(12) comment '利润中心',
    SOURCE_MODULE varchar(10) comment '源模块',
    BUSINESS_UNIT varchar(10) comment '账套',
    CLIENT_TYPE varchar(3) comment '客户类型',
    COMPANY varchar(20) comment '法人',
    primary  key (INVOICE_TRAN_NO)
);
alter table IRL_GRACE_INFO comment '贷款宽限期到期处理流水表 undefined';