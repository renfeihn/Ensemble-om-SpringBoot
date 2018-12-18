drop table if exists FM_REGION_CODE_USERDEF;
/*==============================================================*/
/* Table: FM_REGION_CODE_USERDEF                                           */
/*==============================================================*/
create table FM_REGION_CODE_USERDEF
(
    REGION_CODE varchar(10) not null comment '区域代码',
    REGION_CODE_DESC varchar(100) not null comment '区域代码描述',
    REGION_TYPE_CODE varchar(20) not null comment '区域类型代码',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    primary  key (REGION_CODE)
);
alter table FM_REGION_CODE_USERDEF comment '自定义区域代码定义 undefined';