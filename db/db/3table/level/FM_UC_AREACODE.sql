drop table if exists FM_UC_AREACODE;
/*==============================================================*/
/* Table: FM_UC_AREACODE                                           */
/*==============================================================*/
create table FM_UC_AREACODE
(
    AREA_CODE varchar(6) not null comment '地区码',
    AREA_NAME varchar(20) not null comment '地区码',
    PARENT_CITY_AREA_CODE varchar(20) not null comment '所属市地区码',
    PARENT_PROV_AREA_CODE varchar(20) not null comment '所属省地区码'
);
alter table FM_UC_AREACODE comment '银联地区编码表 undefined';