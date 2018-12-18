drop table if exists MB_SCHED_MODE;
/*==============================================================*/
/* Table: MB_SCHED_MODE                                           */
/*==============================================================*/
create table MB_SCHED_MODE
(
    SCHED_MODE varchar(3) not null comment '还款方式',
    SCHED_MODE_DESC varchar(50) comment '还款方式描述',
    PROCESS_TYPE varchar(1) comment '本息处理方式 E 等额本息 P 等额本金  A 本金单独 B 利息单独  N 本息合并 ',
    PRI_REPAY_TYPE varchar(1) comment '本金还款方式 B 一次性还款 I 不规则还款 R 定期还款',
    CALC_FORMULA_FLAG varchar(1) comment '计算公式：A 标准公式 B 基础公式  C 自定义公式',
    FIRST_BREAK varchar(1) comment '首期破期 Y 是 N 否',
    LAST_MERGE varchar(1) comment '末期合并 Y 是 N 否',
    COMPANY varchar(20) comment '法人',
    PAY_REC varchar(1) comment '收付方式：P：付款计划，存款用，R：收款计划，贷款用',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (SCHED_MODE)
);
alter table MB_SCHED_MODE comment '计划方式定义表 undefined';