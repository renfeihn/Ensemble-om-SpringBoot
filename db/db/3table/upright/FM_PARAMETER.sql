drop table if exists FM_PARAMETER;
/*==============================================================*/
/* Table: FM_PARAMETER                                           */
/*==============================================================*/
create table FM_PARAMETER
(
    PARA_KEY varchar(30) not null comment '参数名',
    PARA_VALUE varchar(500) not null comment '参数值',
    PARA_DESC varchar(200) comment '参数描述',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (PARA_KEY)
);
alter table FM_PARAMETER comment '公共业务参数表 undefined';