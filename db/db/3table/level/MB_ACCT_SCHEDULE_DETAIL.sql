drop table if exists MB_ACCT_SCHEDULE_DETAIL;
/*==============================================================*/
/* Table: MB_ACCT_SCHEDULE_DETAIL                                           */
/*==============================================================*/
create table MB_ACCT_SCHEDULE_DETAIL
(
    SCHED_SEQ_NO varchar(50) not null comment '序列号',
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    STAGE_NO varchar(30) not null comment '期次',
    AMT_TYPE varchar(10) comment '金额类型',
    START_DATE varchar(8) comment '生效日期',
    END_DATE varchar(8) comment '终止日期',
    SCHED_AMT Decimal(17,2) comment '计划金额',
    PAID_AMT Decimal(17,2) comment '已还金额',
    PRI_OUTSTANDING Decimal(17,2) comment '本金余额',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (SCHED_SEQ_NO)
);
alter table MB_ACCT_SCHEDULE_DETAIL comment '账户计划明细表 undefined';

drop index MB_ACCT_SCHEDULE_DETAIL_IND1 on MB_ACCT_SCHEDULE_DETAIL;
/*==============================================================*/
/* Index: MB_ACCT_SCHEDULE_DETAIL_IND1                                           */
/*==============================================================*/
create index MB_ACCT_SCHEDULE_DETAIL_IND1 on MB_ACCT_SCHEDULE_DETAIL (
    INTERNAL_KEY
);