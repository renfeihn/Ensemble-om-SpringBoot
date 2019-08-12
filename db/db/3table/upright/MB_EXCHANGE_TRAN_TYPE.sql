drop table if exists MB_EXCHANGE_TRAN_TYPE;
/*==============================================================*/
/* Table: MB_EXCHANGE_TRAN_TYPE                                           */
/*==============================================================*/
create table MB_EXCHANGE_TRAN_TYPE
(
    TRAN_TYPE varchar(10) not null comment '交易类型',
    EX_TYPE varchar(1) comment '兑换类型',
    OP_TYPE varchar(2) comment '兑换方式',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (TRAN_TYPE)
);
alter table MB_EXCHANGE_TRAN_TYPE comment '结售汇交易类型 undefined';