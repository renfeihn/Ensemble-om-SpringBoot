drop table if exists CIF_SIGNATORY;
/*==============================================================*/
/* Table: CIF_SIGNATORY                                           */
/*==============================================================*/
create table CIF_SIGNATORY
(
    CLIENT_NO varchar(20) not null comment '客户号',
    SIGNATORY_NO Decimal(2,0) not null comment '签字人编号',
    SIGNATORY_NAME varchar(200) comment '签字人姓名',
    SIGNATORY_DESC varchar(50) comment '签字人描述',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (CLIENT_NO,SIGNATORY_NO)
);
alter table CIF_SIGNATORY comment '客户签名表 undefined';