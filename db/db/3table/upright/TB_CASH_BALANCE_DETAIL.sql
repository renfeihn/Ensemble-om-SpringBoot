drop table if exists TB_CASH_BALANCE_DETAIL;
/*==============================================================*/
/* Table: TB_CASH_BALANCE_DETAIL                                           */
/*==============================================================*/
create table TB_CASH_BALANCE_DETAIL
(
    TRAILBOX_ID varchar(30) not null comment '尾箱代号',
    CCY varchar(3) not null comment '币种',
    PAR_VALUE_ID varchar(20) not null comment '券别代号',
    SUM varchar(15) not null comment '数量',
    AMT Decimal(17,2) not null comment '金额',
    UPDATE_DATE varchar(8) comment '更新日期',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (TRAILBOX_ID,CCY,PAR_VALUE_ID)
);
alter table TB_CASH_BALANCE_DETAIL comment '尾箱现金余额明细表 undefined';