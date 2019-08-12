drop table if exists TB_RCV_DETAIL;
/*==============================================================*/
/* Table: TB_RCV_DETAIL                                           */
/*==============================================================*/
create table TB_RCV_DETAIL
(
    APPLY_ID varchar(30) not null comment '预约编号',
    SEQ Decimal(15) not null comment '序号',
    AMT Decimal(17,2) comment '金额',
    REMARK varchar(200) comment '摘要',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (APPLY_ID,SEQ)
);
alter table TB_RCV_DETAIL comment '上门收款记账明细表 undefined';