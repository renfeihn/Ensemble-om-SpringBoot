drop table if exists IRL_INT_ADJUST_INFO;
/*==============================================================*/
/* Table: IRL_INT_ADJUST_INFO                                           */
/*==============================================================*/
create table IRL_INT_ADJUST_INFO
(
    IRL_SEQ_NO varchar(50) not null comment '序号  ',
    SYSTEM_ID varchar(20) not null comment '系统ID',
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    INT_CLASS varchar(20) not null comment '利息分类',
    ADJUST_DATE varchar(8) not null comment '调整日期',
    ACCT_NO varchar(150) comment '账号',
    INT_ADJ Decimal(17,2) comment '利息调整(累计)',
    INT_ADJ_CTD Decimal(17,2) not null comment '当次计提调整',
    AGG_ADJ Decimal(38,2) not null comment '积数调整值',
    TRAN_SOURCE varchar(6) not null comment '交易发起方',
    COMPANY varchar(20) comment '法人代码',
    ACCOUNTING_STATUS varchar(3) comment '核算状态',
    PROFIT_CENTRE varchar(12) comment '利润中心',
    SOURCE_MODULE varchar(10) comment '模块',
    BUSINESS_UNIT varchar(10) comment '帐套',
    CLIENT_TYPE varchar(3) comment '客户类型',
    TRAN_DATE_TIME varchar(17) comment '处理时间日期',
    REFERENCE varchar(50) comment '交易参考号',
    REMARK varchar(200) comment '备注',
    REVERSAL varchar(1) comment '冲正标志',
    GL_POSTED varchar(1) comment '过账标志',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    OTH_REFERENCE varchar(50) comment '对方交易参考号',
    BRANCH varchar(20) comment '机构代码',
    primary  key (IRL_SEQ_NO)
);
alter table IRL_INT_ADJUST_INFO comment '计提调整流水表 undefined';