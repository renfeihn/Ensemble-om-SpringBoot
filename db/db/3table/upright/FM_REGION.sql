drop table if exists FM_REGION;
/*==============================================================*/
/* Table: FM_REGION                                           */
/*==============================================================*/
create table FM_REGION
(
    REGION varchar(2) not null comment '地区',
    REGION_DESC varchar(90) not null comment '名称',
    INTERNAL_CODE varchar(1) comment '内部码',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (REGION)
);
alter table FM_REGION comment '区域代码 地区基本信息 undefined';