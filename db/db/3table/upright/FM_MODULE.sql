drop table if exists FM_MODULE;
/*==============================================================*/
/* Table: FM_MODULE                                           */
/*==============================================================*/
create table FM_MODULE
(
    MODULE_ID varchar(2) not null comment '模块号 ',
    MODULE_NAME varchar(30) not null comment '模块名称',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (MODULE_ID)
);
alter table FM_MODULE comment '模块说明表 undefined';