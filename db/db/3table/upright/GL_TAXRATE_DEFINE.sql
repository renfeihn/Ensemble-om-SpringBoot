drop table if exists GL_TAXRATE_DEFINE;
/*==============================================================*/
/* Table: GL_TAXRATE_DEFINE                                           */
/*==============================================================*/
create table GL_TAXRATE_DEFINE
(
    TAXRATE_TYPE varchar(3) not null comment '税率类型',
    TAXRATE_DESC varchar(30) not null comment '税率类型描述',
    START_METHOD varchar(1) not null comment '启动方式',
    COMPANY varchar(20) comment '法人代码',
    primary  key (TAXRATE_TYPE)
);
alter table GL_TAXRATE_DEFINE comment '增值税税率类型定义表 undefined';