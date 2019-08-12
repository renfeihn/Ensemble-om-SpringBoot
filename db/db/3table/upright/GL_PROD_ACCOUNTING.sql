drop table if exists GL_PROD_ACCOUNTING;
/*==============================================================*/
/* Table: GL_PROD_ACCOUNTING                                           */
/*==============================================================*/
create table GL_PROD_ACCOUNTING
(
    PROD_TYPE varchar(50) not null comment '产品类型',
    ACCOUNTING_STATUS varchar(3) not null comment '核算状态',
    PROFIT_CENTRE varchar(12) comment '利润中心',
    BUSINESS_UNIT varchar(10) comment '账套',
    GL_CODE_A varchar(20) comment '资产科目代码',
    GL_CODE_L varchar(20) comment '负债科目代码 ',
    GL_CODE_INT_E varchar(20) comment '利息支出科目代码 ',
    GL_CODE_INT_PAY varchar(20) comment '应付利息科目代码 ',
    GL_CODE_INT_I varchar(20) comment '利息收入科目代码 ',
    GL_CODE_INT_REC varchar(20) comment '应收利息科目代码 ',
    GL_CODE_INT_ACR varchar(20) comment '应计利息科目代码',
    GL_CODE_ODP_I varchar(20) comment '罚息收入科目代码 ',
    GL_CODE_ODP_REC varchar(20) comment '应收罚息科目代码 ',
    GL_CODE_ODP_ACR varchar(20) comment '应计罚息科目代码',
    GL_CODE_ODI_I varchar(20) comment '复利收入科目代码 ',
    GL_CODE_ODI_REC varchar(20) comment '应收利息科目代码 ',
    GL_CODE_ODI_ACR varchar(20) comment '应计利息科目代码',
    GL_CODE_A_LOSS varchar(20) comment '资产损失科目代码',
    GL_CODE_ADJUST varchar(20) comment '调整科目代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    COMPANY varchar(20) comment '法人代码',
    primary  key (PROD_TYPE,ACCOUNTING_STATUS)
);
alter table GL_PROD_ACCOUNTING comment '产品科目表 undefined';