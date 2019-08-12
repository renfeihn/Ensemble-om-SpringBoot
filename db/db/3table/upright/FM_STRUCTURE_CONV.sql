drop table if exists FM_STRUCTURE_CONV;
/*==============================================================*/
/* Table: FM_STRUCTURE_CONV                                           */
/*==============================================================*/
create table FM_STRUCTURE_CONV
(
    CHAR_VALUE varchar(1) not null comment '字符值',
    NUMERIC_EQUIV varchar(50) not null comment '同等的数字',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (CHAR_VALUE)
);
alter table FM_STRUCTURE_CONV comment '结构转化规则定义表 undefined';