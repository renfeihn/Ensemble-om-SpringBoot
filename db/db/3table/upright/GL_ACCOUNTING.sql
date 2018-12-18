drop table if exists GL_ACCOUNTING;
/*==============================================================*/
/* Table: GL_ACCOUNTING                                           */
/*==============================================================*/
create table GL_ACCOUNTING
(
    ACCOUNTING_NO varchar(30) not null comment '会计分录编号',
    COUNTER varchar(50) not null comment '序号',
    AMOUNT_TYPE varchar(50) not null comment '金额类型',
    CR_DR varchar(1) not null comment '借贷标志',
    GL_CODE_EXP varchar(50) not null comment '科目',
    BRANCH_EXP varchar(50) not null comment '机构',
    CLIENT_NO_EXP varchar(50) not null comment '客户号',
    CCY_EXP varchar(50) not null comment '币种',
    PROFIT_CENTRE_EXP varchar(50) not null comment '利润中心',
    SEQ_NO varchar(50) not null comment '总账序号',
    AMOUNT_EXP varchar(500) not null comment '金额',
    PROD_TYPE_EXP varchar(50) not null comment '产品类型',
    COMPANY_EXP varchar(50) not null comment '法人',
    BUSINESS_UNIT_EXP varchar(50) not null comment '账套',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    COMPANY varchar(20) comment '法人代码',
    primary  key (ACCOUNTING_NO,COUNTER,AMOUNT_TYPE)
);
alter table GL_ACCOUNTING comment '分录定义表 undefined';