drop table if exists IRL_BEFORE_INT_HIST;
/*==============================================================*/
/* Table: IRL_BEFORE_INT_HIST                                           */
/*==============================================================*/
create table IRL_BEFORE_INT_HIST
(
    IRL_SEQ_NO varchar(50) not null comment '序号  ',
    REFERENCE varchar(50) comment '交易参考号',
    OTH_REFERENCE varchar(50) comment '对方交易参考号',
    INTERNAL_KEY Decimal(15) comment '帐户主键',
    SYSTEM_ID varchar(20) comment '系统ID',
    TRAN_DATE varchar(8) comment '交易日期',
    START_DATE varchar(8) comment '生效日期',
    END_DATE varchar(8) comment '终止日期',
    ACCR_DAYS varchar(10) comment '计息天数',
    INT_AMT Decimal(17,2) comment '利息金额',
    ACTUAL_RATE Decimal(15,8) comment '行内利率',
    FLOAT_RATE Decimal(15,8) comment '浮动利率',
    REAL_RATE Decimal(15,8) comment '执行利率',
    NEAR_AMT Decimal(17,2) comment '靠档金额',
    INT_ADJ Decimal(17,2) comment '利息调整(累计)',
    INT_AGG Decimal(38,2) comment '调整积数',
    REVERSAL varchar(1) comment '冲正标志 Y:是 N:否',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (IRL_SEQ_NO)
);
alter table IRL_BEFORE_INT_HIST comment '倒起息计息明细表 undefined';