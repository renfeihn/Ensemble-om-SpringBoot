drop table if exists CIF_BUSINESS;
/*==============================================================*/
/* Table: CIF_BUSINESS                                           */
/*==============================================================*/
create table CIF_BUSINESS
(
    BUSINESS varchar(6) not null comment '行业代码',
    BUSINESS_DESC varchar(32) not null comment '行业代码说明',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (BUSINESS)
);
alter table CIF_BUSINESS comment '行业代码表 undefined';