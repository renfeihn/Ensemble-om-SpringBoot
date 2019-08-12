drop table if exists FM_CHANGE_REGION;
/*==============================================================*/
/* Table: FM_CHANGE_REGION                                           */
/*==============================================================*/
create table FM_CHANGE_REGION
(
    REF_LANG varchar(20) not null comment '语言',
    FIELD_VALUE varchar(8) not null comment '取值范围',
    MEANING varchar(30) not null comment '取值的含义说明',
    NARRATIVE1 varchar(300) comment '备注',
    primary  key (REF_LANG,FIELD_VALUE)
);
alter table FM_CHANGE_REGION comment '交换地区表 undefined';