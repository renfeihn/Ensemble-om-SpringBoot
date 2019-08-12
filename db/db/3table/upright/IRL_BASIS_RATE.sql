drop table if exists IRL_BASIS_RATE;
/*==============================================================*/
/* Table: IRL_BASIS_RATE                                           */
/*==============================================================*/
create table IRL_BASIS_RATE
(
    INT_BASIS varchar(2) not null comment '基准利率类型代码',
    CCY varchar(3) not null comment '币种',
    EFFECT_DATE varchar(8) not null comment '生效日期',
    INT_BASIS_RATE Decimal(15,8) not null comment '利率',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (INT_BASIS,CCY,EFFECT_DATE)
);
alter table IRL_BASIS_RATE comment '基准利率信息表 undefined';