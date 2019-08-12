drop table if exists IRL_INT_SPLIT_BAK;
/*==============================================================*/
/* Table: IRL_INT_SPLIT_BAK                                           */
/*==============================================================*/
create table IRL_INT_SPLIT_BAK
(
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    SYSTEM_ID varchar(20) not null comment '系统ID',
    START_DATE varchar(8) not null comment '生效日期',
    END_DATE varchar(8) comment '终止日期',
    INT_CLASS varchar(20) not null comment '利息分类 IRL_INT_ROLL.INT_CLASS',
    INT_AMT Decimal(17,2) comment '利息金额',
    MONTH_BASIS varchar(3) comment '月基准 ACT:实际天数 30D:每月30天',
    YEAR_BASIS varchar(3) comment '年基准天数 360天 365天',
    INT_TYPE varchar(3) comment '利率类型 IRL_INT_TYPE.INT_TAX_TYPE',
    ACTUAL_RATE Decimal(15,8) comment '行内利率',
    FLOAT_RATE Decimal(15,8) comment '浮动利率',
    REAL_RATE Decimal(15,8) comment '执行利率',
    SPLIT_RATE_FLAG varchar(1) comment '利率分段标志',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (INTERNAL_KEY,SYSTEM_ID,START_DATE,INT_CLASS)
);
alter table IRL_INT_SPLIT_BAK comment '分户分段信息备份表 undefined';