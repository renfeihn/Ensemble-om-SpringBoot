drop table if exists BAT_GUARANTY_INFO;
/*==============================================================*/
/* Table: BAT_GUARANTY_INFO                                           */
/*==============================================================*/
create table BAT_GUARANTY_INFO
(
    COLL_REF varchar(50) comment '抵押品编号',
    STATUS varchar(3) comment '状态'
);
alter table BAT_GUARANTY_INFO comment '信贷抵押品信息表 undefined';