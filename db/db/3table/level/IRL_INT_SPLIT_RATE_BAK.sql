drop table if exists IRL_INT_SPLIT_RATE_BAK;
/*==============================================================*/
/* Table: IRL_INT_SPLIT_RATE_BAK                                           */
/*==============================================================*/
create table IRL_INT_SPLIT_RATE_BAK
(
    IRL_SEQ_NO varchar(50) not null comment '序号  ',
    SYSTEM_ID varchar(20) not null comment '系统ID',
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    START_DATE varchar(8) not null comment '生效日期',
    END_DATE varchar(8) comment '终止日期',
    INT_CLASS varchar(20) not null comment '利息分类 IRL_INT_ROLL.INT_CLASS',
    INT_TYPE varchar(3) comment '利率类型 IRL_INT_TYPE.INT_TAX_TYPE',
    PERI_SPLIT_ID varchar(10) comment '周期分段ID',
    PERI_SEQ_NO varchar(5) comment '周期分段序号',
    AMT_SPLIT_ID varchar(10) comment '金额分段ID',
    AMT_SEQ_NO varchar(5) comment '金额分段序号',
    NEAR_AMT Decimal(17,2) comment '靠档金额',
    ACCR_AMT Decimal(17,2) comment '计提金额',
    NEAR_PERIOD_TYPE varchar(1) comment '分段周期类型',
    NEAR_PERIOD varchar(5) comment '分段周期',
    ACCR_DAYS varchar(10) comment '计息天数',
    YEAR_BASIS varchar(3) comment '年基准天数 360天 365天',
    MONTH_BASIS varchar(3) comment '月基准 ACT:实际天数 30D:每月30天',
    ACTUAL_RATE Decimal(15,8) comment '行内利率',
    FLOAT_RATE Decimal(15,8) comment '浮动利率',
    REAL_RATE Decimal(15,8) comment '执行利率',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (IRL_SEQ_NO)
);
alter table IRL_INT_SPLIT_RATE_BAK comment '分户分段信息利率备份表 undefined';