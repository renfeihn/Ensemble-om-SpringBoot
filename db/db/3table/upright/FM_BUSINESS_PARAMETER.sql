drop table if exists FM_BUSINESS_PARAMETER;
/*==============================================================*/
/* Table: FM_BUSINESS_PARAMETER                                           */
/*==============================================================*/
create table FM_BUSINESS_PARAMETER
(
    PARA_KEY varchar(30) comment '参数名',
    PARA_VALUE varchar(500) comment '参数值',
    PARA_DESC varchar(200) comment '参数描述',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (PARA_KEY)
);
alter table FM_BUSINESS_PARAMETER comment '业务参数表 undefined';