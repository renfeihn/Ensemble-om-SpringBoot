drop table if exists FM_STATE;
/*==============================================================*/
/* Table: FM_STATE                                           */
/*==============================================================*/
create table FM_STATE
(
    COUNTRY varchar(3) not null comment '国家',
    STATE varchar(10) not null comment '省',
    STATE_DESC varchar(90) not null comment '省名称',
    WEEKEND_1 varchar(3) comment '周末1 FRI  周五 MON  周一 SAT  周六 SUN  周日 THU  周四 TUE  周二 WED  周三',
    WEEKEND_2 varchar(3) comment '周末2 FRI  周五 MON  周一 SAT  周六 SUN  周日 THU  周四 TUE  周二 WED  周三',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (COUNTRY,STATE)
);
alter table FM_STATE comment '省、州信息表 undefined';