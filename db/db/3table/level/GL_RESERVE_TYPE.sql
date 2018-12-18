drop table if exists GL_RESERVE_TYPE;
/*==============================================================*/
/* Table: GL_RESERVE_TYPE                                           */
/*==============================================================*/
create table GL_RESERVE_TYPE
(
    PAY_TYPE varchar(8) not null comment '准备金类型 GL_RESERVE_PAY_CCY.PAY_TYPE',
    PAY_TYPE_DESC varchar(50) not null comment '准备金类型描述信息',
    BASE_RATE_TYPE varchar(3) not null comment '基础汇率类型',
    PERIOD_PAY_IND varchar(1) not null comment '是否按询上缴',
    PAY_PERIOD_FREQ varchar(2) comment '缴存频率  FM_PERIOD_FREQ.PERIOD_FREQ',
    FREQ_DAY varchar(2) comment '缴存日,默认为5',
    PAY_RATE Decimal(5,2) not null comment '准备金率',
    PAY_WAY varchar(3) not null comment '缴存方式',
    AUTO_ACCOUNTING varchar(1) not null comment '是否记账',
    MIDDLE_TEN_DAY varchar(2) comment '中旬',
    FIRST_TEN_DAY varchar(2) comment '上旬',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    NEXT_PAY_DATE varchar(8) comment '下一缴存日期',
    LAST_PAY_DATE varchar(8) comment '上一缴存日',
    primary  key (PAY_TYPE)
);
alter table GL_RESERVE_TYPE comment '准备金缴存类型定义表 undefined';