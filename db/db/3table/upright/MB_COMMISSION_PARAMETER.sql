drop table if exists MB_COMMISSION_PARAMETER;
/*==============================================================*/
/* Table: MB_COMMISSION_PARAMETER                                           */
/*==============================================================*/
create table MB_COMMISSION_PARAMETER
(
    PROGRAM_ID varchar(20) comment '交易码',
    CLIENT_TYPE varchar(3) comment '客户类型',
    STATUS varchar(3) comment '状态',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间'
);
alter table MB_COMMISSION_PARAMETER comment '交易代办人参数表 undefined';