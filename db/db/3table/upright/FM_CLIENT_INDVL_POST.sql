drop table if exists FM_CLIENT_INDVL_POST;
/*==============================================================*/
/* Table: FM_CLIENT_INDVL_POST                                           */
/*==============================================================*/
create table FM_CLIENT_INDVL_POST
(
    REF_LANG varchar(20) not null comment '语言',
    FIELD_VALUE varchar(8) not null comment '取值范围',
    MEANING varchar(30) not null comment '取值的含义说明',
    NARRATIVE1 varchar(300) comment '备注',
    primary  key (REF_LANG,FIELD_VALUE)
);
alter table FM_CLIENT_INDVL_POST comment '职位表 undefined';