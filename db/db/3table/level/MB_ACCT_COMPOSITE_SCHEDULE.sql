drop table if exists MB_ACCT_COMPOSITE_SCHEDULE;
/*==============================================================*/
/* Table: MB_ACCT_COMPOSITE_SCHEDULE                                           */
/*==============================================================*/
create table MB_ACCT_COMPOSITE_SCHEDULE
(
    INTERNAL_KEY Decimal(15) comment '帐户主键',
    COMPOSITE_NO varchar(30) comment '组合还款计划使用，用于记录该条还款计划于组合还款计划表的哪段匹配',
    SCHED_MODE varchar(3) comment '计划方式  MB_SCHED_MODE.SCHED_MODE',
    START_DATE varchar(8) comment '生效日期',
    END_DATE varchar(8) comment '终止日期',
    PERIOD_FREQ varchar(2) comment '频率类型',
    NEXT_DEAL_DATE varchar(8) comment '下一处理日',
    DEAL_DAY varchar(2) comment '处理日',
    TOTAL_AMT Decimal(17,2) comment '计划总金额',
    CUR_BASIC_DAY varchar(2) comment '当前回收日 ',
    SECOND_REC_DAY varchar(2) comment '第二回收日 ',
    FIR_PERIOD varchar(5) comment '首段期数 ',
    MID_PERIOD varchar(5) comment '累进间隔期数 ',
    ADD_AMT Decimal(17,2) comment '累进金额 ',
    ADD_RATIO Decimal(5,2) comment '累进比例',
    GRACE_PERIOD varchar(5) comment '宽限期的天数',
    GRACE_END_MONTH varchar(3) comment '是否宽限到月末（宽限期类型）',
    INT_PERIOD_FREQ varchar(2) comment '结息周期',
    INT_NEXT_DEAL_DATE varchar(8) comment '下一结息日',
    INT_DEAL_DAY varchar(2) comment '结息日期',
    DAC_VALUE varchar(32) comment 'DAC值  防篡改加密',
    ACCT_FIXED_RATE Decimal(15,8) comment '分户级固定利率',
    ACCT_PERCENT_RATE Decimal(5,2) comment '分户浮动百分比',
    ACCT_SPREAD_RATE Decimal(15,8) comment '分户级浮动百分点',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    AGREE_CHANGE_TYPE varchar(1) comment '协议变动方式'
);
alter table MB_ACCT_COMPOSITE_SCHEDULE comment '组合还款计划表 undefined';