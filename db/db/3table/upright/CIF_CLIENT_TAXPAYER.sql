drop table if exists CIF_CLIENT_TAXPAYER;
/*==============================================================*/
/* Table: CIF_CLIENT_TAXPAYER                                           */
/*==============================================================*/
create table CIF_CLIENT_TAXPAYER
(
    FIELD_VALUE varchar(8) not null comment '取值范围',
    MEANING varchar(30) not null comment '取值的含义说明',
    primary  key (FIELD_VALUE)
);
alter table CIF_CLIENT_TAXPAYER comment '纳税人类型码值表 undefined';