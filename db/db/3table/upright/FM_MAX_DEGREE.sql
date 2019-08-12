drop table if exists FM_MAX_DEGREE;
/*==============================================================*/
/* Table: FM_MAX_DEGREE                                           */
/*==============================================================*/
create table FM_MAX_DEGREE
(
    REF_LANG varchar(20) not null comment '语言',
    FIELD_VALUE varchar(8) not null comment '取值范围',
    MEANING varchar(30) not null comment '取值的含义说明',
    NARRATIVE1 varchar(300) comment '备注',
    primary  key (REF_LANG,FIELD_VALUE)
);
alter table FM_MAX_DEGREE comment '学位表 undefined';