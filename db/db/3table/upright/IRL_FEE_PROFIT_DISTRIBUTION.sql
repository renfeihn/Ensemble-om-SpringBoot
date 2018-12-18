drop table if exists IRL_FEE_PROFIT_DISTRIBUTION;
/*==============================================================*/
/* Table: IRL_FEE_PROFIT_DISTRIBUTION                                           */
/*==============================================================*/
create table IRL_FEE_PROFIT_DISTRIBUTION
(
    FEE_TYPE varchar(8) not null comment '费率类型',
    BRANCH varchar(20) not null comment '机构代码',
    PERCENT Decimal(5,2) not null comment '百分比',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (FEE_TYPE)
);
alter table IRL_FEE_PROFIT_DISTRIBUTION comment '分润规则表 undefined';