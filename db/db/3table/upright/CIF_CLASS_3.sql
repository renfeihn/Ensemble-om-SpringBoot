drop table if exists CIF_CLASS_3;
/*==============================================================*/
/* Table: CIF_CLASS_3                                           */
/*==============================================================*/
create table CIF_CLASS_3
(
    CLASS_3 varchar(6) not null comment '用户自定义的分类代码',
    CLASS_3_DESC varchar(30) not null comment '对分类代码的描述',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (CLASS_3)
);
alter table CIF_CLASS_3 comment '客户分类3 undefined';