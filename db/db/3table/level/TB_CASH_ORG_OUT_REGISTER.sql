drop table if exists TB_CASH_ORG_OUT_REGISTER;
/*==============================================================*/
/* Table: TB_CASH_ORG_OUT_REGISTER                                           */
/*==============================================================*/
create table TB_CASH_ORG_OUT_REGISTER
(
    OUT_DATE varchar(8) comment '出库日期',
    TRAILBOX_ID varchar(30) comment '尾箱代号',
    CCY varchar(3) comment '币种',
    PAR_VALUE_ID varchar(20) comment '券别代号',
    AMT Decimal(17,2) comment '金额',
    BRANCH varchar(20) comment '机构',
    USER_ID varchar(30) comment '交易柜员',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字'
);
alter table TB_CASH_ORG_OUT_REGISTER comment '机构间现金调拨登记薄 undefined';