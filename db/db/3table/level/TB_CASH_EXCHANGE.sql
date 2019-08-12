drop table if exists TB_CASH_EXCHANGE;
/*==============================================================*/
/* Table: TB_CASH_EXCHANGE                                           */
/*==============================================================*/
create table TB_CASH_EXCHANGE
(
    EXCHANGE_ID varchar(30) not null comment '交接ID',
    CCY varchar(3) not null comment '币种',
    AMT Decimal(17,2) not null comment '金额',
    COMPANY varchar(20) comment '法人代码',
    REFERENCE varchar(50) comment '交易参考号',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字'
);
alter table TB_CASH_EXCHANGE comment '尾箱交接现金信息表 undefined';