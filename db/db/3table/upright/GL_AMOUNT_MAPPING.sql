drop table if exists GL_AMOUNT_MAPPING;
/*==============================================================*/
/* Table: GL_AMOUNT_MAPPING                                           */
/*==============================================================*/
create table GL_AMOUNT_MAPPING
(
    MAPPING_TYPE varchar(50) not null comment '映射金额类型',
    AMOUNT_TYPE varchar(50) not null comment '金额类型',
    MAPPING_NAME varchar(100) comment '映射描述',
    AMOUNT_TYPE_DESC varchar(100) comment '金额类型描述',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    COMPANY varchar(20) comment '法人代码',
    primary  key (MAPPING_TYPE)
);
alter table GL_AMOUNT_MAPPING comment '金额映射表 undefined';