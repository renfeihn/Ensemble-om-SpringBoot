drop table if exists MB_AMT_CALC_TYPE;
/*==============================================================*/
/* Table: MB_AMT_CALC_TYPE                                           */
/*==============================================================*/
create table MB_AMT_CALC_TYPE
(
    AMT_CALC_TYPE varchar(10) not null comment '金额计算类型',
    AMT_CALC_DESC varchar(50) not null comment '金额计算类型描述',
    AMT_TYPE varchar(10) not null comment '金额类型',
    CALC_FORMULA varchar(500) not null comment '计算公式',
    TRAN_HIST_AMT varchar(50) comment '登记交易流水金额类型',
    TRAN_HIST_FLAG varchar(10) comment '登记交流流水标志',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (AMT_CALC_TYPE)
);
alter table MB_AMT_CALC_TYPE comment '金额计算类型定义表 undefined';