drop table if exists OC_PARAMETER;
/*==============================================================*/
/* Table: OC_PARAMETER                                           */
/*==============================================================*/
create table OC_PARAMETER
(
    PARA_KEY varchar(30) not null comment '参数名',
    PARA_VALUE varchar(500) comment '参数值',
    PARA_DESC varchar(200) comment '参数描述',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (PARA_KEY)
);
alter table OC_PARAMETER comment '同城票交参数表 undefined';