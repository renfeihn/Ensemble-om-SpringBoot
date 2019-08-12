drop table if exists IRL_INT_TYPE;
/*==============================================================*/
/* Table: IRL_INT_TYPE                                           */
/*==============================================================*/
create table IRL_INT_TYPE
(
    INT_TAX_TYPE varchar(3) not null comment '利率税率类型',
    INT_TAX_TYPE_DESC varchar(50) not null comment '利率税率类型描述',
    PROD_GRP varchar(20) not null comment '产品组',
    RATE_LADDER varchar(1) not null comment '利息计算模型',
    COMPANY varchar(20) comment '法人代码',
    INT_TAX_FLAG varchar(3) not null comment '利率类型税率类型标志 ',
    TAX_LADDER varchar(1) comment '税率计算模型',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (INT_TAX_TYPE)
);
alter table IRL_INT_TYPE comment '利率税率类型表 undefined';