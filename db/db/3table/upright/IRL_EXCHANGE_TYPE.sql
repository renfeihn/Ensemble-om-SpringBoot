drop table if exists IRL_EXCHANGE_TYPE;
/*==============================================================*/
/* Table: IRL_EXCHANGE_TYPE                                           */
/*==============================================================*/
create table IRL_EXCHANGE_TYPE
(
    RATE_TYPE varchar(3) not null comment '汇率类型',
    RATE_TYPE_DESC varchar(50) not null comment '汇率类型描述',
    QUOTE_CCY varchar(3) not null comment '报价币种',
    FLOAT_TYPE varchar(3) comment '浮动方式',
    COMPANY varchar(20) comment '法人代码',
    HBD_FLAG varchar(1) not null comment '货币对汇率标志',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (RATE_TYPE)
);
alter table IRL_EXCHANGE_TYPE comment '汇率类型表 undefined';