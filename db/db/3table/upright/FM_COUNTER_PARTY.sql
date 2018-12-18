drop table if exists FM_COUNTER_PARTY;
/*==============================================================*/
/* Table: FM_COUNTER_PARTY                                           */
/*==============================================================*/
create table FM_COUNTER_PARTY
(
    COUNTER_PARTY varchar(10) not null comment '对手',
    COUNTER_PARTY_DESC varchar(60) not null comment '对手描述',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (COUNTER_PARTY)
);
alter table FM_COUNTER_PARTY comment '交易对手定义 undefined';