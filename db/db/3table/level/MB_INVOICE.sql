drop table if exists MB_INVOICE;
/*==============================================================*/
/* Table: MB_INVOICE                                           */
/*==============================================================*/
create table MB_INVOICE
(
    INVOICE_TRAN_NO varchar(50) not null comment '通知单号',
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    STAGE_NO varchar(30) not null comment '期次',
    AMT_TYPE varchar(10) not null comment '金额类型',
    INT_RATE Decimal(15,8) comment '支取利率',
    CCY varchar(3) not null comment '币种',
    BILLED_AMT Decimal(17,2) not null comment '出单金额',
    OUTSTANDING Decimal(17,2) not null comment '单据余额',
    DUE_DATE varchar(8) not null comment '到期日',
    GRACE_PERIOD_DATE varchar(8) comment '宽限日',
    TRAN_DATE varchar(8) comment '交易日期',
    FINAL_SETTLE_DATE varchar(8) comment '最后结算日期',
    FULLY_SETTLED varchar(1) comment '当单据金额全额回收后,此标志为Y 当单据金额全额回收后,此标志为Y，否则为N',
    INT_FROM varchar(8) comment '计息开始日期 ',
    INT_TO varchar(8) comment '计息截止日期 ',
    NARRATIVE varchar(300) comment '摘要，开户时的账号用途，销户时的销户原因',
    USER_ID varchar(30) comment '交易柜员 FM_USER.USER_ID',
    LAST_CHANGE_DATE varchar(8) comment '最后变更日期 ',
    COMPANY varchar(20) comment '法人代码',
    GL_POSTED varchar(1) comment '过账标志 Y:是 N:否',
    TAX_TYPE varchar(3) comment '税率类型  IRL_INT_TYPE.INT_TAX_TYPE',
    TAX_RATE Decimal(15,8) comment '税率',
    TAX_AMT Decimal(17,2) comment '税金',
    ORIG_AMT_TYPE varchar(10) comment '原始金额类型 MB_ATTR_VALUE.AMT_TYPE',
    INVOICE_GEN_MODE varchar(1) comment '单据生成方式  ',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    INT_CAP varchar(1) comment '资本化标志 Y:是 N:否',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    REFERENCE varchar(50) comment '交易参考号',
    primary  key (INVOICE_TRAN_NO)
);
alter table MB_INVOICE comment '单据表 undefined';

drop index MB_INVOICE_IND2 on MB_INVOICE;
/*==============================================================*/
/* Index: MB_INVOICE_IND2                                           */
/*==============================================================*/
create index MB_INVOICE_IND2 on MB_INVOICE (
    INTERNAL_KEY,OUTSTANDING,DUE_DATE
);

drop index MB_INVOICE_IND1 on MB_INVOICE;
/*==============================================================*/
/* Index: MB_INVOICE_IND1                                           */
/*==============================================================*/
create index MB_INVOICE_IND1 on MB_INVOICE (
    INTERNAL_KEY
);