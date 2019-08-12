drop table if exists MB_AGREEMENT_ASSEMBLE;
/*==============================================================*/
/* Table: MB_AGREEMENT_ASSEMBLE                                           */
/*==============================================================*/
create table MB_AGREEMENT_ASSEMBLE
(
    AGREEMENT_ID varchar(30) not null comment '协议号',
    PROD_TYPE varchar(50) comment '组合产品类型',
    LOAN_PROD_TYPE varchar(50) comment '贷款产品类型',
    RB_PROD_TYPE varchar(50) comment '存款产品类型',
    FAVORABLE_RULER varchar(1) comment '优惠规则  1 账户余额  2 超额金额',
    OVER_AMT Decimal(17,2) comment '超额金额',
    RATE_RULER varchar(1) comment '利率优惠规则  1、浮动百分点  2、浮动百分比  3、固定利率值',
    AGREE_SPREAD_RATE Decimal(15,8) comment '协议浮动百分点',
    AGREE_PERCENT_RATE Decimal(5,2) comment '协议浮动百分比',
    AGREE_FIXED_RATE Decimal(15,8) comment '协议固定利率',
    CLIENT_NO varchar(20) comment '客户号',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (AGREEMENT_ID)
);
alter table MB_AGREEMENT_ASSEMBLE comment '存贷组合签约表 undefined';