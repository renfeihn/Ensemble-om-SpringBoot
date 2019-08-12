drop table if exists FM_FTA_BRANCH;
/*==============================================================*/
/* Table: FM_FTA_BRANCH                                           */
/*==============================================================*/
create table FM_FTA_BRANCH
(
    FTA_CODE varchar(10) not null comment '自贸区代码',
    FTA_DESC varchar(50) not null comment '自贸区名称',
    FTA_TYPE varchar(17) not null comment '自贸区类型',
    FTA_NATURE varchar(17) not null comment '自贸区属性',
    FTA_RATE_TYPE varchar(3) not null comment '自贸区汇率类型',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (FTA_CODE)
);
alter table FM_FTA_BRANCH comment '自贸区结构表 undefined';