drop table if exists FM_CCY_HOLIDAY;
/*==============================================================*/
/* Table: FM_CCY_HOLIDAY                                           */
/*==============================================================*/
create table FM_CCY_HOLIDAY
(
    CCY varchar(3) not null comment '币种',
    HOLIDAY_DATE varchar(8) not null comment '假日日期',
    HOLIDAY_DESC varchar(30) not null comment '假日描述',
    HOLIDAY_TYPE varchar(1) not null comment '假日类型',
    APPLY_IND varchar(1) not null default 'B'   comment '适用范围',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (CCY,HOLIDAY_DATE)
);
alter table FM_CCY_HOLIDAY comment '币种节假日定义 undefined';