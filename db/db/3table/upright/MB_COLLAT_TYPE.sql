drop table if exists MB_COLLAT_TYPE;
/*==============================================================*/
/* Table: MB_COLLAT_TYPE                                           */
/*==============================================================*/
create table MB_COLLAT_TYPE
(
    COLLAT_TYPE varchar(10) not null comment '抵押品类型',
    COLLAT_TYPE_DESC varchar(100) not null comment '抵押品类型描述',
    primary  key (COLLAT_TYPE)
);
alter table MB_COLLAT_TYPE comment '抵押品类型 undefined';