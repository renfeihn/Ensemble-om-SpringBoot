drop table if exists FM_UC_AREACODE_MAPPING;
/*==============================================================*/
/* Table: FM_UC_AREACODE_MAPPING                                           */
/*==============================================================*/
create table FM_UC_AREACODE_MAPPING
(
    BRANCH varchar(20) not null comment '机构标识',
    BRANCH_NAME varchar(100) not null comment '机构名称',
    UC_CITY_AREA_CODE varchar(20) not null comment '银联地区码(市级)'
);
alter table FM_UC_AREACODE_MAPPING comment '开户机构 与 银联地区(市级) 映射表 undefined';