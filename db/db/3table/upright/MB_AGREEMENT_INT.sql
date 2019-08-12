drop table if exists MB_AGREEMENT_INT;
/*==============================================================*/
/* Table: MB_AGREEMENT_INT                                           */
/*==============================================================*/
create table MB_AGREEMENT_INT
(
    AGREEMENT_TYPE varchar(3) not null comment '协议类型',
    FACTOR_TYPE varchar(50) not null comment '算息要素类型',
    FACTOR_VALUE varchar(50) comment '算息要素值',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (AGREEMENT_TYPE,FACTOR_TYPE)
);
alter table MB_AGREEMENT_INT comment '协议利息要素明细表 undefined';