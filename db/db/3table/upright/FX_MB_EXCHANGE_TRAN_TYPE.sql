drop table if exists FX_MB_EXCHANGE_TRAN_TYPE;
/*==============================================================*/
/* Table: FX_MB_EXCHANGE_TRAN_TYPE                                           */
/*==============================================================*/
create table FX_MB_EXCHANGE_TRAN_TYPE
(
    TRAN_TYPE varchar(10) not null comment '交易类型',
    EX_TYPE varchar(1),
    OP_TYPE varchar(2),
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (TRAN_TYPE)
);
alter table FX_MB_EXCHANGE_TRAN_TYPE comment '结售汇交易类型 undefined';