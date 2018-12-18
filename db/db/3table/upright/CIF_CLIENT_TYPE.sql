drop table if exists CIF_CLIENT_TYPE;
/*==============================================================*/
/* Table: CIF_CLIENT_TYPE                                           */
/*==============================================================*/
create table CIF_CLIENT_TYPE
(
    CLIENT_TYPE varchar(3) not null comment '客户类型',
    CLIENT_TYPE_DESC varchar(30) not null comment '类型描述',
    IS_INDIVIDUAL varchar(1) not null comment '是否个体客户 Y-是 N-不是',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (CLIENT_TYPE)
);
alter table CIF_CLIENT_TYPE comment '客户类型-大类表 undefined';