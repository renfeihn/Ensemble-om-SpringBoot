drop table if exists MB_AGREEMENT_ACCORD;
/*==============================================================*/
/* Table: MB_AGREEMENT_ACCORD                                           */
/*==============================================================*/
create table MB_AGREEMENT_ACCORD
(
    AGREEMENT_ID varchar(30) not null comment '协议号',
    SEQ_NO varchar(50) not null comment '协议序号',
    TERM_PERIOD varchar(5) comment '存期',
    TERM_TYPE varchar(1) comment '存期类型',
    ACCORD_PROD_TYPE varchar(50) comment '协定协议产品类型',
    NEAR_AMT Decimal(17,2) comment '靠档金额',
    INT_CLASS varchar(20) comment '利息分类',
    INT_TYPE varchar(3) comment '利率类型',
    ACTUAL_RATE Decimal(15,8) comment '行内利率',
    FLOAT_RATE Decimal(15,8) comment '浮动利率',
    ACCT_PERCENT_RATE Decimal(5,2) comment '分户浮动百分比',
    ACCT_SPREAD_RATE Decimal(15,8) comment '分户浮动百分点',
    ACCT_FIXED_RATE Decimal(15,8) comment '分户固定值',
    REAL_RATE Decimal(15,8) comment '执行利率',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (AGREEMENT_ID,SEQ_NO)
);
alter table MB_AGREEMENT_ACCORD comment '协定协议登记簿 undefined';