drop table if exists TB_SPALL_EXCHANGE_HIST;
/*==============================================================*/
/* Table: TB_SPALL_EXCHANGE_HIST                                           */
/*==============================================================*/
create table TB_SPALL_EXCHANGE_HIST
(
    SEQ_NO varchar(50) not null comment '序号',
    TRAILBOX_ID varchar(30) comment '尾箱ID',
    CCY varchar(3) comment '币种',
    PAR_VALUE_ID varchar(20) comment '券别',
    CASH_NUM varchar(15) comment '数量',
    AMT Decimal(17,2) comment '金额',
    TRAN_DATE varchar(8) comment '交易日期',
    TIME_STAMP varchar(17) comment '时间戳',
    BRANCH varchar(20) comment '兑换机构',
    USER_ID varchar(30) comment '兑换柜员',
    REFERENCE varchar(50) comment '交易参考号',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (SEQ_NO)
);
alter table TB_SPALL_EXCHANGE_HIST comment '残损币兑换历史表 undefined';