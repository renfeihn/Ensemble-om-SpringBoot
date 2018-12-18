drop table if exists CIF_MERCHANT_TYPE_DEF;
/*==============================================================*/
/* Table: CIF_MERCHANT_TYPE_DEF                                           */
/*==============================================================*/
create table CIF_MERCHANT_TYPE_DEF
(
    CC_SUB_TYPE varchar(19) not null comment '商户类型',
    CC_TYPE varchar(19) not null comment '商户大类',
    CC_SUB_TYPE_DESC varchar(300) comment '商户类型说明',
    CC_TYPE_DESC varchar(300) comment '商户大类说明',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (CC_SUB_TYPE)
);
alter table CIF_MERCHANT_TYPE_DEF comment '商户类型定义表 undefined';