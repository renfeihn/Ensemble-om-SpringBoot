drop table if exists FX_MB_CHANNEL_LIMIT_AMT;
/*==============================================================*/
/* Table: FX_MB_CHANNEL_LIMIT_AMT                                           */
/*==============================================================*/
create table FX_MB_CHANNEL_LIMIT_AMT
(
    CHANNEL_TYPE varchar(20) not null comment '渠道类型',
    LIMIT_AMT Decimal(17,2) comment '核准件总金额',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (CHANNEL_TYPE)
);
alter table FX_MB_CHANNEL_LIMIT_AMT comment '核心小额限额 undefined';