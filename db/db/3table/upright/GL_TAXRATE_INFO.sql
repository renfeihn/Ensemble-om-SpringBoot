drop table if exists GL_TAXRATE_INFO;
/*==============================================================*/
/* Table: GL_TAXRATE_INFO                                           */
/*==============================================================*/
create table GL_TAXRATE_INFO
(
    TAXRATE_TYPE varchar(3) not null comment '税率类型',
    TAX_RATE Decimal(15,8) not null comment '税率',
    EFFECT_DATE varchar(8) not null comment '生效日期',
    COMPANY varchar(20) comment '法人代码',
    primary  key (TAXRATE_TYPE,EFFECT_DATE)
);
alter table GL_TAXRATE_INFO comment '增值税税率维护表 undefined';