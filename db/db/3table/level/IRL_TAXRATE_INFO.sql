drop table if exists IRL_TAXRATE_INFO;
/*==============================================================*/
/* Table: IRL_TAXRATE_INFO                                           */
/*==============================================================*/
create table IRL_TAXRATE_INFO
(
    COUNTRY varchar(3) not null comment '国家',
    PROVINCE varchar(30) not null comment '省',
    EFFECT_DATE varchar(8) not null comment '生效日期',
    TAX_RATE Decimal(15,8) not null comment '税率',
    TAXRATE_CODE varchar(3) not null comment '税率代码',
    primary  key (COUNTRY,PROVINCE,EFFECT_DATE,TAXRATE_CODE)
);
alter table IRL_TAXRATE_INFO comment '税率维护表 undefined';