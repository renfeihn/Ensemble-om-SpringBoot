drop table if exists MB_PROD_PREFERENCE;
/*==============================================================*/
/* Table: MB_PROD_PREFERENCE                                           */
/*==============================================================*/
create table MB_PROD_PREFERENCE
(
    PROD_TYPE varchar(50) comment '产品类型 ',
    PREFERENCE_TYPE varchar(50) comment '优惠方式',
    PREFERENCE_VALUE varchar(50) comment '优惠值定义',
    PREFERENCE_PERCENT_RATE Decimal(5,2) comment '利率优惠浮动百分比',
    PREFERENCE_SPREAD_RATE Decimal(15,8) comment '利率优惠浮动百分点',
    PREFERENCE_FIXED_RATE Decimal(15,8) comment '利率优惠固定利率',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间'
);
alter table MB_PROD_PREFERENCE comment '产品利率优惠表 undefined';