drop table if exists CIF_CLASS_1;
/*==============================================================*/
/* Table: CIF_CLASS_1                                           */
/*==============================================================*/
create table CIF_CLASS_1
(
    CLASS_1 varchar(6) not null comment '分类1',
    CLASS_1_DESC varchar(30) not null comment '分类描述',
    COUNTER_PARTY varchar(10) comment '交易对手代码',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (CLASS_1)
);
alter table CIF_CLASS_1 comment '客户分类1 undefined';