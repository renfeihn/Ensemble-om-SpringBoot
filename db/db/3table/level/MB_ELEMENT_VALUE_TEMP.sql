drop table if exists MB_ELEMENT_VALUE_TEMP;
/*==============================================================*/
/* Table: MB_ELEMENT_VALUE_TEMP                                           */
/*==============================================================*/
create table MB_ELEMENT_VALUE_TEMP
(
    ELEM_SEQ_NO Decimal(20,0) not null comment '记录序号',
    INTERNAL_KEY Decimal(15) not null comment '账户标识符',
    FEE_TYPE varchar(8) not null comment '费用类型',
    ELEMENT_NAME varchar(20) not null comment '费用因子名称',
    ELEMENT_VALUE varchar(100) comment '费用因子值',
    RUN_DATE varchar(8) not null comment '会计日期',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (ELEM_SEQ_NO)
);
alter table MB_ELEMENT_VALUE_TEMP comment '费用因子值临时表 undefined';