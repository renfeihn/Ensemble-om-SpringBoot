drop table if exists MB_ACCT_INT_DETAIL_SPLIT;
/*==============================================================*/
/* Table: MB_ACCT_INT_DETAIL_SPLIT                                           */
/*==============================================================*/
create table MB_ACCT_INT_DETAIL_SPLIT
(
    IRL_SEQ_NO varchar(50) not null comment '序号  ',
    SYSTEM_ID varchar(20) not null default '10'   comment '系统ID',
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    INT_CLASS varchar(20) comment '利息分类',
    START_DATE varchar(8) comment '生效日期',
    END_DATE varchar(8) comment '终止日期',
    PERI_SPLIT_ID varchar(10) comment '周期分段ID',
    PERI_SEQ_NO varchar(5) comment '周期分段序号',
    AMT_SPLIT_ID varchar(10) comment '金额分段ID',
    AMT_SEQ_NO varchar(5) comment '金额分段序号',
    NEAR_AMT Decimal(17,2) comment '靠档金额',
    ACCR_AMT Decimal(17,2) comment '计提金额',
    NEAR_PERIOD_TYPE varchar(1) comment '分段周期类型',
    NEAR_PERIOD varchar(5) comment '分段周期',
    ACCR_DAYS varchar(10) comment '计息天数',
    ACTUAL_RATE Decimal(15,8) comment '行内利率',
    FLOAT_RATE Decimal(15,8) comment '浮动利率',
    REAL_RATE Decimal(15,8) comment '执行利率',
    ACCT_SPREAD_RATE Decimal(15,8) comment '分户级浮动百分点',
    ACCT_PERCENT_RATE Decimal(5,2) comment '分户浮动百分比',
    ACCT_FIXED_RATE Decimal(15,8) comment '分户级固定利率',
    INT_TYPE varchar(3) comment '利率类型',
    AMT_SPLIT_MODE varchar(1) comment '金额分段模型',
    PERI_SPLIT_MODE varchar(1),
    YEAR_BASIS varchar(3) comment '年基准天数',
    MONTH_BASIS varchar(3) comment '月基准 ',
    RECAL_METHOD varchar(1) comment '重算利息方法  ',
    AGREE_FIXED_RATE Decimal(15,8) comment '协议固定利率',
    AGREE_PERCENT_RATE Decimal(5,2) comment '协议浮动百分比',
    AGREE_SPREAD_RATE Decimal(15,8) comment '协议浮动百分点',
    AGREE_CHANGE_TYPE varchar(1) comment '协议变动方式',
    AGREE_REDUCE_AMT Decimal(38,2) comment '协议优惠金额',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (IRL_SEQ_NO)
);
alter table MB_ACCT_INT_DETAIL_SPLIT comment '账户利息明细分段明细 undefined';