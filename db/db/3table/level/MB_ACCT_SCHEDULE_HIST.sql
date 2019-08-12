drop table if exists MB_ACCT_SCHEDULE_HIST;
/*==============================================================*/
/* Table: MB_ACCT_SCHEDULE_HIST                                           */
/*==============================================================*/
create table MB_ACCT_SCHEDULE_HIST
(
    INTERNAL_KEY Decimal(15) not null comment '账户标识符',
    SCHED_NO varchar(30) not null comment '计划编号',
    EVENT_TYPE varchar(50) comment '事件类型',
    AMT_TYPE varchar(10) comment '金额类型',
    SCHED_MODE varchar(3) comment '计划方式',
    START_DATE varchar(8) comment '起始日期',
    END_DATE varchar(8) comment '终止日期',
    NEXT_DEAL_DATE varchar(8) comment '下一处理日',
    GRACE_DATE varchar(8) comment '宽限日',
    PERIOD_FREQ varchar(2) comment '频率',
    DEAL_DAY varchar(2) comment '处理日',
    LAST_DEAL_DATE varchar(8) comment '上一处理日',
    AMOUNT Decimal(17,2) comment '金额',
    CUR_BASIC_DAY varchar(2) comment '当前回收日 ',
    SECOND_REC_DAY varchar(2) comment '第二回收日 ',
    FIR_PERIOD varchar(5) comment '首段期数 ',
    MID_PERIOD varchar(5) comment '累进间隔期数 ',
    ADD_AMT Decimal(17,2) comment '累进金额 ',
    TIMES_AMT Decimal(5,2) comment '累进比例 ',
    GRACE_PERIOD varchar(5) comment '宽限期的天数',
    GRACE_END_MONTH varchar(3) comment '是否宽限到月末',
    TOTAL_AMT Decimal(17,2) comment '计划总金额',
    TOTAL_TIMES varchar(5) comment '计划总次数',
    DAC_VALUE varchar(32) comment 'DAC值  防篡改加密',
    COMPANY varchar(20) comment '法人代码',
    LAST_CHANGE_DATE varchar(8) comment '最后更改日期',
    COMPOSITE_NO varchar(30) comment '组合还款计划使用，用于记录该条还款计划于组合还款计划表的哪段匹配',
    FORMULA_AMT Decimal(17,2) comment '每期计划还款额',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (INTERNAL_KEY,SCHED_NO)
);
alter table MB_ACCT_SCHEDULE_HIST comment '账户计划历史信息表 undefined';