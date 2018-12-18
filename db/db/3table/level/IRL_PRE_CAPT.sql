drop table if exists IRL_PRE_CAPT;
/*==============================================================*/
/* Table: IRL_PRE_CAPT                                           */
/*==============================================================*/
create table IRL_PRE_CAPT
(
    IRL_INTERNAL_KEY varchar(50) not null comment '账户键值',
    INPUT_DATE varchar(8) not null comment '录入日期',
    IRL_SEQ_NO varchar(50) not null comment '序号',
    INT_CLASS varchar(20) not null comment '利息分类',
    ACCR_STATUS varchar(3) not null comment '状态',
    ACCT_NO varchar(150) comment '基本存款账号',
    PROD_TYPE varchar(50) not null comment '产品类型',
    EVENT_TYPE varchar(50) not null comment '事件类型',
    START_DATE varchar(8) comment '起始日期',
    END_DATE varchar(8) comment '终止日期',
    TRAN_AMT Decimal(17,2) not null comment '交易金额',
    CAPT_INT Decimal(17,2) not null comment '结息金额',
    ACCOUNTING_STATUS varchar(3) comment '核算状态',
    COMPANY varchar(20) comment '法人代码',
    PROFIT_CENTRE varchar(12) comment '利润中心',
    SOURCE_MODULE varchar(10) comment '源模块',
    BUSINESS_UNIT varchar(10) comment '账套',
    CLIENT_TYPE varchar(3) comment '客户类型',
    SYSTEM_ID varchar(20) not null comment '系统标识',
    REFERENCE varchar(50) comment '交易参考号',
    REMARK varchar(200) comment '备注',
    PAY_INT Decimal(17,2) comment '前付息金额',
    REC_INT Decimal(17,2) comment '前收息金额',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (IRL_INTERNAL_KEY,INPUT_DATE,IRL_SEQ_NO,INT_CLASS,SYSTEM_ID)
);
alter table IRL_PRE_CAPT comment '结息信息表 undefined';