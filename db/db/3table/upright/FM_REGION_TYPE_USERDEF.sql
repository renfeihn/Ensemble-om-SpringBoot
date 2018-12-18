drop table if exists FM_REGION_TYPE_USERDEF;
/*==============================================================*/
/* Table: FM_REGION_TYPE_USERDEF                                           */
/*==============================================================*/
create table FM_REGION_TYPE_USERDEF
(
    REGION_TYPE varchar(10) not null comment '区域类型',
    REGION_TYPE_DESC varchar(150) not null comment '区域类型描述',
    CROSS_REGION_FLAG varchar(1) not null comment '是否允许机构跨区域存在',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    primary  key (REGION_TYPE)
);
alter table FM_REGION_TYPE_USERDEF comment '自定义区域类型定义 undefined';