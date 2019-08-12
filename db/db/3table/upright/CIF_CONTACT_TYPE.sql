drop table if exists CIF_CONTACT_TYPE;
/*==============================================================*/
/* Table: CIF_CONTACT_TYPE                                           */
/*==============================================================*/
create table CIF_CONTACT_TYPE
(
    CONTACT_TYPE varchar(3) not null comment '联系类型',
    CONTACT_TYPE_DESC varchar(30) not null comment '联系类型描述',
    ROUTE varchar(8) not null comment '联系方式',
    SWIFT_ID varchar(12) comment 'SWIFT ID',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (CONTACT_TYPE)
);
alter table CIF_CONTACT_TYPE comment '联系类型 undefined';