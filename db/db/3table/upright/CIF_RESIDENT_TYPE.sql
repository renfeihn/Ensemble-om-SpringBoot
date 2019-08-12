drop table if exists CIF_RESIDENT_TYPE;
/*==============================================================*/
/* Table: CIF_RESIDENT_TYPE                                           */
/*==============================================================*/
create table CIF_RESIDENT_TYPE
(
    RESIDENT_TYPE varchar(1) not null comment '居住类型',
    RESIDENT_TYPE_DESC varchar(30) comment '居住类型说明',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (RESIDENT_TYPE)
);
alter table CIF_RESIDENT_TYPE comment '居住类型表 undefined';