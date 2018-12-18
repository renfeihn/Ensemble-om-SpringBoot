drop table if exists OC_CHANGE_SESSION;
/*==============================================================*/
/* Table: OC_CHANGE_SESSION                                           */
/*==============================================================*/
create table OC_CHANGE_SESSION
(
    CHANGE_TYPE varchar(3) comment '交换机构类型',
    CHANGE_SESSION varchar(2) comment '交换场次',
    CHANGE_DATE_FLAG varchar(1) comment '切换到当前场次是否日切',
    EFFECT_FLAG varchar(1) comment '是否生效',
    CHANGE_REGION varchar(4) comment '交换地区 '
);
alter table OC_CHANGE_SESSION comment '同城票交扎差清算表 undefined';