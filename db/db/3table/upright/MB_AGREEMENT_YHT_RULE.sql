drop table if exists MB_AGREEMENT_YHT_RULE;
/*==============================================================*/
/* Table: MB_AGREEMENT_YHT_RULE                                           */
/*==============================================================*/
create table MB_AGREEMENT_YHT_RULE
(
    AGREEMENT_ID varchar(30) not null comment '协议编号',
    DIFF_INT_RULE varchar(3) comment '分息规则',
    INTERNAL_KEY Decimal(15) comment '帐户主键',
    MAIN_AGREEMENT_ID varchar(30) comment '主协议协议号',
    DIFF_BAL_RULE varchar(3) comment '差额分配规则',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字'
);
alter table MB_AGREEMENT_YHT_RULE comment '一户通利息分配规则表 undefined';