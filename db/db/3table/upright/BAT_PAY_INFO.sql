drop table if exists BAT_PAY_INFO;
/*==============================================================*/
/* Table: BAT_PAY_INFO                                           */
/*==============================================================*/
create table BAT_PAY_INFO
(
    SERIAL_NO varchar(50) comment '支付流水号',
    PAYMENT_STATUS varchar(10) comment '支付状态'
);
alter table BAT_PAY_INFO comment '利率信息接口 undefined';