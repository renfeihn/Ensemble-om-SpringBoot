drop table if exists CIF_SIGNATURE;
/*==============================================================*/
/* Table: CIF_SIGNATURE                                           */
/*==============================================================*/
create table CIF_SIGNATURE
(
    CLIENT_NO varchar(20) not null comment '客户号',
    SIGNATORY_NO Decimal(2,0) not null comment '客户签名表序列号',
    SIGNATURE_NO Decimal(1,0) not null comment '客户签名图片表序列号',
    SIGNATURE_IMG blob comment '签名图片',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (CLIENT_NO,SIGNATORY_NO,SIGNATURE_NO)
);
alter table CIF_SIGNATURE comment '客户签名图片表 undefined';