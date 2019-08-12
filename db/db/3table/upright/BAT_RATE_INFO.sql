drop table if exists BAT_RATE_INFO;
/*==============================================================*/
/* Table: BAT_RATE_INFO                                           */
/*==============================================================*/
create table BAT_RATE_INFO
(
    RATE_VALUE Decimal(10,4) comment '年利率',
    MIN_TERM varchar(32) comment '最低期限月',
    MAX_TERM varchar(32) comment '最高期限(含)月',
    EFFECT_DATE varchar(8) comment '生效日期',
    RATE_TYPE varchar(3) comment '利率类型',
    TERM_UNIT varchar(32) comment '利率单位',
    STATUS varchar(3) comment '状态'
);
alter table BAT_RATE_INFO comment '利率信息接口 undefined';