drop table if exists CD_AREA_DEF;
/*==============================================================*/
/* Table: CD_AREA_DEF                                           */
/*==============================================================*/
create table CD_AREA_DEF
(
    AREA_CODE varchar(6) not null comment '地区代码',
    AREA_NAME varchar(20) comment '地区名称',
    PROV_FLAG varchar(1) comment '省内省外',
    INLAND_OFFSHORE varchar(1) comment '境内境外',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (AREA_CODE)
);
alter table CD_AREA_DEF comment '地区参数表 undefined';