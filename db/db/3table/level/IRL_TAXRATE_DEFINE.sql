drop table if exists IRL_TAXRATE_DEFINE;
/*==============================================================*/
/* Table: IRL_TAXRATE_DEFINE                                           */
/*==============================================================*/
create table IRL_TAXRATE_DEFINE
(
    TAXRATE_TYPE varchar(3) not null comment '税率类型',
    TAXRATE_DESC varchar(30) not null comment '税率类型描述',
    START_METHOD varchar(1) not null comment '启动方式',
    primary  key (TAXRATE_TYPE)
);
alter table IRL_TAXRATE_DEFINE comment '税率类型定义表 undefined';