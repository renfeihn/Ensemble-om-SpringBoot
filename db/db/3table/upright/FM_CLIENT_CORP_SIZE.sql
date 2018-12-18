drop table if exists FM_CLIENT_CORP_SIZE;
/*==============================================================*/
/* Table: FM_CLIENT_CORP_SIZE                                           */
/*==============================================================*/
create table FM_CLIENT_CORP_SIZE
(
    REF_LANG varchar(20) not null comment '语言',
    FIELD_VALUE varchar(8) not null comment '取值范围',
    MEANING varchar(30) not null comment '取值的含义说明',
    NARRATIVE1 varchar(300) comment '备注',
    primary  key (REF_LANG,FIELD_VALUE)
);
alter table FM_CLIENT_CORP_SIZE comment '企业规模表 undefined';