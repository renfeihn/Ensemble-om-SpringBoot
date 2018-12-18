drop table if exists FM_BRA_HOLIDAY;
/*==============================================================*/
/* Table: FM_BRA_HOLIDAY                                           */
/*==============================================================*/
create table FM_BRA_HOLIDAY
(
    BRANCH varchar(20) not null comment '机构代码',
    WORKING_HOLIDAY varchar(1) not null comment '工作日_假日 ',
    HOLIDAY_DESC varchar(30) not null comment '假日描述',
    HOLIDAY_TYPE varchar(1) not null comment '假日类型 ',
    APPLY_IND varchar(1) not null comment '适用范围 ',
    COMPANY varchar(20) not null comment '法人代码',
    HOLIDAY_DATE varchar(8) not null comment '假日日期',
    primary  key (BRANCH,HOLIDAY_TYPE,HOLIDAY_DATE)
);
alter table FM_BRA_HOLIDAY comment '机构假日 undefined';