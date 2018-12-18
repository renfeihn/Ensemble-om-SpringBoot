drop table if exists IRL_FEE_PACKAGE_MAP;
/*==============================================================*/
/* Table: IRL_FEE_PACKAGE_MAP                                           */
/*==============================================================*/
create table IRL_FEE_PACKAGE_MAP
(
    PACKAGE_ID varchar(10) not null comment '套餐代码',
    FEE_TYPE varchar(8) not null comment '费用类型',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (PACKAGE_ID,FEE_TYPE)
);
alter table IRL_FEE_PACKAGE_MAP comment '费用套餐费用类型关联表 undefined';