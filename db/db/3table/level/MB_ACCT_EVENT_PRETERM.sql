drop table if exists MB_ACCT_EVENT_PRETERM;
/*==============================================================*/
/* Table: MB_ACCT_EVENT_PRETERM                                           */
/*==============================================================*/
create table MB_ACCT_EVENT_PRETERM
(
    INTERNAL_KEY Decimal(15) not null comment '账户主键',
    SEQ_NO varchar(50) not null comment '交易序号',
    PRETERM_DATE varchar(17) comment '提前支取交易日期',
    PRINCIPAL_AMT Decimal(17,2) comment '本金金额',
    PRETERM_AMT Decimal(17,2) comment '提前支取金额',
    PENALTY_RATE Decimal(15,8) comment '罚息率',
    PENALTY_AMT Decimal(17,2) comment '罚款金额',
    TDA_HIST_SEQ_NO varchar(50) comment '定期交易历史序号',
    TD_PRET_INT_TYPE varchar(3) comment '提前支取利息类型',
    STATUS varchar(3) comment '状态',
    PRETERM_RADIX Decimal(17,2) comment '提前支取扣息点数',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (INTERNAL_KEY,SEQ_NO)
);
alter table MB_ACCT_EVENT_PRETERM comment '账户提前交易登记簿 undefined';