drop table if exists FM_LOC_HOLIDAY;
/*==============================================================*/
/* Table: FM_LOC_HOLIDAY                                           */
/*==============================================================*/
create table FM_LOC_HOLIDAY
(
    COUNTRY varchar(3) not null comment '国家 ',
    STATE varchar(10) not null comment '省市 ',
    HOLIDAY_DATE varchar(8) not null comment '节假日日期',
    HOLIDAY_DESC varchar(30) not null comment '节假日描述',
    HOLIDAY_TYPE varchar(1) not null comment '节假日类型',
    WORKING_HOLIDAY varchar(1) not null comment '工作日_假日 ',
    APPLY_IND varchar(1) not null default 'B'   comment '适用范围 ',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (COUNTRY,STATE,HOLIDAY_DATE)
);
alter table FM_LOC_HOLIDAY comment '地区节假日 undefined';