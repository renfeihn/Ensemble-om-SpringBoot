drop table if exists MB_PROD_CHARGE;
/*==============================================================*/
/* Table: MB_PROD_CHARGE                                           */
/*==============================================================*/
create table MB_PROD_CHARGE
(
    PROD_TYPE varchar(50) not null comment '产品类型',
    FEE_TYPE varchar(8) not null comment '费用类型',
    CHARGE_PERIOD_FREQ varchar(2) not null comment '收取频率',
    CHARGE_DAY varchar(2) comment '收取日',
    NEXT_CHARGE_DATE varchar(8) not null comment '下一收费日期',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (PROD_TYPE,FEE_TYPE)
);
alter table MB_PROD_CHARGE comment '产品类型费用类型关联表 undefined';