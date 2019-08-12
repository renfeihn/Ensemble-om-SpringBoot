drop table if exists FM_DIST_CODE;
/*==============================================================*/
/* Table: FM_DIST_CODE                                           */
/*==============================================================*/
create table FM_DIST_CODE
(
    DIST_CODE varchar(6) not null comment '地区代码',
    DIST_NAME varchar(30) not null comment '名称',
    DIST_GRADE varchar(10) not null comment '级别',
    CITY varchar(8) not null comment '城市',
    PROVINCE varchar(30) not null comment '省',
    STATE varchar(10) comment '州/省代码',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (DIST_CODE,DIST_NAME,CITY,PROVINCE)
);
alter table FM_DIST_CODE comment '地区代码 此表作为静态参数表。 undefined';