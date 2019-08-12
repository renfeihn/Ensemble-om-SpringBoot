drop table if exists BAT_MB_PAYINFO;
/*==============================================================*/
/* Table: BAT_MB_PAYINFO                                           */
/*==============================================================*/
create table BAT_MB_PAYINFO
(
    SERIALNO varchar(40) comment '受托支付流水号',
    PAYMENTSTATUS varchar(10) comment '支付状态'
);
alter table BAT_MB_PAYINFO comment '受托支付信息表 undefined';