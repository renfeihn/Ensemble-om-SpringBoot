drop table if exists MB_AVAILBAL_CALC_TYPE;
/*==============================================================*/
/* Table: MB_AVAILBAL_CALC_TYPE                                           */
/*==============================================================*/
create table MB_AVAILBAL_CALC_TYPE
(
    AVAILBAL_CALC_TYPE varchar(10) not null comment '金额计算类型',
    AVAILBAL_CALC_DESC varchar(50) not null comment '金额计算类型描述',
    CALC_FORMULA varchar(500) not null comment '计算公式',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (AVAILBAL_CALC_TYPE)
);
alter table MB_AVAILBAL_CALC_TYPE comment '可用余额计算类型定义表 undefined';