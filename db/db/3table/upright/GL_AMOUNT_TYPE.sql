drop table if exists GL_AMOUNT_TYPE;
/*==============================================================*/
/* Table: GL_AMOUNT_TYPE                                           */
/*==============================================================*/
create table GL_AMOUNT_TYPE
(
    AMOUNT_TYPE varchar(50) not null comment '金额类型',
    AMOUNT_TYPE_DESC varchar(100) not null comment '金额类型描述',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    COMPANY varchar(20) comment '法人代码',
    primary  key (AMOUNT_TYPE)
);
alter table GL_AMOUNT_TYPE comment '金额类型表 undefined';