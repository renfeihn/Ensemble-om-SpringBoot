drop table if exists TB_VOUCHER_STATUS_PARAMETER;
/*==============================================================*/
/* Table: TB_VOUCHER_STATUS_PARAMETER                                           */
/*==============================================================*/
create table TB_VOUCHER_STATUS_PARAMETER
(
    STATUS varchar(3) comment '状态 A:有效 E:失效',
    STATUS_INFO varchar(80) comment '状态描述',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字'
);
alter table TB_VOUCHER_STATUS_PARAMETER comment '凭证状态参数表 undefined';