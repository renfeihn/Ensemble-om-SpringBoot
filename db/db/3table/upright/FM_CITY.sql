drop table if exists FM_CITY;
/*==============================================================*/
/* Table: FM_CITY                                           */
/*==============================================================*/
create table FM_CITY
(
    COUNTRY varchar(3) not null comment '国家',
    STATE varchar(10) not null comment '省、州',
    CITY varchar(8) not null comment '城市代码',
    CITY_TEL varchar(4) not null comment '电话区号',
    CITY_DESC varchar(100) not null comment '描述',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (COUNTRY,STATE,CITY)
);
alter table FM_CITY comment '城市代码 undefined';