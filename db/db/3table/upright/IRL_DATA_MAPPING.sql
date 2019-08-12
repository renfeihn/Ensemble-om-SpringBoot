drop table if exists IRL_DATA_MAPPING;
/*==============================================================*/
/* Table: IRL_DATA_MAPPING                                           */
/*==============================================================*/
create table IRL_DATA_MAPPING
(
    SYSTEM_ID varchar(20) not null comment '系统标识',
    OLD_VALUE_KEY varchar(20) not null comment '原参数字段 ',
    OLD_VALUE varchar(50) not null comment '原参数字段值',
    MAPPING_KEY varchar(20) not null comment '映射参数字段',
    MAPPING_VALUE varchar(50) not null comment '映射参数字段值',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (SYSTEM_ID,OLD_VALUE_KEY,OLD_VALUE,MAPPING_KEY,MAPPING_VALUE)
);
alter table IRL_DATA_MAPPING comment '因子映射表 undefined';