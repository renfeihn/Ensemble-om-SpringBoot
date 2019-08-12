drop table if exists FM_DEFAULT_RATE_TYPE;
/*==============================================================*/
/* Table: FM_DEFAULT_RATE_TYPE                                           */
/*==============================================================*/
create table FM_DEFAULT_RATE_TYPE
(
    TRAN_SCENE varchar(50) not null comment '交易场景',
    RATE_TYPE varchar(3) not null comment '汇率类型',
    TRAN_SCENC_DESC varchar(30) comment '交易场景描述',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (TRAN_SCENE)
);
alter table FM_DEFAULT_RATE_TYPE comment '公共汇率类型定义表 undefined';