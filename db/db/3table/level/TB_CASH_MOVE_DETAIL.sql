drop table if exists TB_CASH_MOVE_DETAIL;
/*==============================================================*/
/* Table: TB_CASH_MOVE_DETAIL                                           */
/*==============================================================*/
create table TB_CASH_MOVE_DETAIL
(
    CASH_MOVE_DETAIL_ID varchar(30) not null comment '现金转移明细ID',
    CASH_MOVE_ID varchar(30) not null comment '现金转移ID',
    CCY varchar(3) not null comment '币种',
    PAR_VALUE_ID varchar(20) comment '券别代号',
    CASH_NUM varchar(15) comment '数量',
    AMT Decimal(17,2) comment '金额',
    PA_FLAG varchar(1) comment '检查标志',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (CASH_MOVE_DETAIL_ID)
);
alter table TB_CASH_MOVE_DETAIL comment '现金转移明细表 undefined';