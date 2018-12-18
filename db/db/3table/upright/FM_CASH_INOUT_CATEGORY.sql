drop table if exists FM_CASH_INOUT_CATEGORY;
/*==============================================================*/
/* Table: FM_CASH_INOUT_CATEGORY                                           */
/*==============================================================*/
create table FM_CASH_INOUT_CATEGORY
(
    CLIENT_BRANCH_TYPE varchar(1) not null comment '敞口类型',
    CLIENT_TYPE varchar(3) comment '客户类型',
    CATEGORY_TYPE varchar(3) comment '敞口类型描述',
    PROD_TYPE varchar(50) comment '产品类型',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (CLIENT_BRANCH_TYPE)
);
alter table FM_CASH_INOUT_CATEGORY comment '现金出入库 undefined';