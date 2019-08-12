drop table if exists MB_AGREEMENT_PREFERENCE;
/*==============================================================*/
/* Table: MB_AGREEMENT_PREFERENCE                                           */
/*==============================================================*/
create table MB_AGREEMENT_PREFERENCE
(
    AGREEMENT_ID varchar(30) not null comment '协议编号',
    PREFERENCE_TYPE varchar(50) not null comment '优惠方式',
    PREFERENCE_VALUE varchar(50) not null comment '优惠值定义',
    PREFERENCE_PERCENT_RATE Decimal(5,2) comment '利率优惠浮动百分比',
    PREFERENCE_SPREAD_RATE Decimal(15,8) comment '利率优惠浮动百分点',
    PREFERENCE_FIXED_RATE Decimal(15,8) comment '利率优惠固定利率',
    TRAN_DATE varchar(8) comment '交易日期',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (AGREEMENT_ID,PREFERENCE_TYPE,PREFERENCE_VALUE)
);
alter table MB_AGREEMENT_PREFERENCE comment '利率优惠协议表 undefined';