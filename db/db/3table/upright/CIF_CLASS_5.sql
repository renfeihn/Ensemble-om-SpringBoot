drop table if exists CIF_CLASS_5;
/*==============================================================*/
/* Table: CIF_CLASS_5                                           */
/*==============================================================*/
create table CIF_CLASS_5
(
    CLASS_5 varchar(6) not null comment '用户自定义的分类代码',
    CLASS_5_DESC varchar(30) not null comment '对分类代码的描述',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (CLASS_5)
);
alter table CIF_CLASS_5 comment '客户分类5  undefined';