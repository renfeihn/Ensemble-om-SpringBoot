drop table if exists TB_RCV_PAR;
/*==============================================================*/
/* Table: TB_RCV_PAR                                           */
/*==============================================================*/
create table TB_RCV_PAR
(
    APPLY_ID varchar(30) not null comment '预约编号',
    PAR_VALUE_ID varchar(20) not null comment '券别代码',
    AMT Decimal(17,2) not null comment '金额',
    SUM varchar(15) not null comment '数量',
    CCY varchar(3) not null comment '币种',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字'
);
alter table TB_RCV_PAR comment '上门收款记账券别明细表 undefined';