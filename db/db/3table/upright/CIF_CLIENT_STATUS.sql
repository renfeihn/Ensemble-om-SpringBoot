drop table if exists CIF_CLIENT_STATUS;
/*==============================================================*/
/* Table: CIF_CLIENT_STATUS                                           */
/*==============================================================*/
create table CIF_CLIENT_STATUS
(
    CLIENT_STATUS varchar(3) not null comment '客户状态',
    CLIENT_STATUS_DESC varchar(30) not null comment '状态描述',
    BAD_CLIENT_IND varchar(1) not null comment '是否为劣质客户  Y -是， N -否',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (CLIENT_STATUS)
);
alter table CIF_CLIENT_STATUS comment '客户状态 undefined';