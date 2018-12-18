drop table if exists TB_CASH_UNIT;
/*==============================================================*/
/* Table: TB_CASH_UNIT                                           */
/*==============================================================*/
create table TB_CASH_UNIT
(
    PAR_VALUE_ID varchar(20) not null comment '券别代号 取值 TB_PAR_VALUE.PAR_VALUE_ID',
    UNIT_SUM_K varchar(10) not null comment '每捆张数',
    UNIT_SUM_B varchar(10) not null comment '每把张数',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (PAR_VALUE_ID)
);
alter table TB_CASH_UNIT comment '现金预约汇总统计单元表 undefined';