drop table if exists MM_RENEW_DEFAULTS;
/*==============================================================*/
/* Table: MM_RENEW_DEFAULTS                                           */
/*==============================================================*/
create table MM_RENEW_DEFAULTS
(
    INTERNAL_KEY Decimal(15) not null comment '内部流水号',
    TENOR varchar(5) comment '到期日更新天数',
    MATURITY_DATE varchar(8) comment '新到期日',
    INT_TYPE varchar(3) comment '利率类型',
    ACTUAL_RATE Decimal(15,8) comment '行内利率',
    FLOAT_RATE Decimal(15,8) comment '浮动利率',
    SPREAD_RATE Decimal(15,8) comment '浮动点数',
    SPREAD_PERCENT Decimal(5,2) comment '浮动百分比',
    ACCT_FIXED_RATE Decimal(15,8) comment '分户级固定利率',
    ACCT_SPREAD_RATE Decimal(15,8) comment '分户级浮动百分点',
    ACCT_PERCENT_RATE Decimal(5,2) comment '分户级浮动百分比',
    REAL_RATE Decimal(15,8) comment '执行利率',
    TREASURY_MARGIN Decimal(15,8) comment '资金利差',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (INTERNAL_KEY)
);
alter table MM_RENEW_DEFAULTS comment '续拆缺省信息 undefined';