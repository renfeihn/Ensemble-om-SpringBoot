drop table if exists FM_MARITAL_STATUS;
/*==============================================================*/
/* Table: FM_MARITAL_STATUS                                           */
/*==============================================================*/
create table FM_MARITAL_STATUS
(
    REF_LANG varchar(20) not null comment '语言',
    FIELD_VALUE varchar(8) not null comment '取值范围',
    MEANING varchar(30) not null comment '取值的含义说明',
    NARRATIVE1 varchar(300) comment '备注',
    primary  key (REF_LANG,FIELD_VALUE)
);
alter table FM_MARITAL_STATUS comment '婚姻状况表 undefined';