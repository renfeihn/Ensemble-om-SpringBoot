drop table if exists BAT_MB_GUARANTYINFO;
/*==============================================================*/
/* Table: BAT_MB_GUARANTYINFO                                           */
/*==============================================================*/
create table BAT_MB_GUARANTYINFO
(
    COLL_REF varchar(50) comment '抵押品编号',
    STATUS varchar(3) comment '状态'
);
alter table BAT_MB_GUARANTYINFO comment '抵质押品出入库信息 undefined';