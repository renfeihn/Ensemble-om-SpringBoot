drop table if exists IRL_PRE_ACCT_MATRIX;
/*==============================================================*/
/* Table: IRL_PRE_ACCT_MATRIX                                           */
/*==============================================================*/
create table IRL_PRE_ACCT_MATRIX
(
    MATRIX_NO varchar(50) not null comment '阶梯序号',
    SYSTEM_ID varchar(20) not null comment '系统标识',
    IRL_INTERNAL_KEY varchar(50) not null comment '账户键值',
    INT_CLASS varchar(20) not null comment '利息分类',
    INPUT_DATE varchar(8) not null comment '录入日期',
    MATRIX_AMT Decimal(17,2) not null comment '阶梯金额',
    PERIOD_FREQ varchar(2) comment '频率类型',
    DAY_NUM varchar(5) comment '每期天数',
    ACTUAL_RATE Decimal(15,8) comment '行内利率',
    REAL_RATE Decimal(15,8) comment '执行利率',
    FLOAT_RATE Decimal(15,8) comment '浮动利率',
    ACCT_SPREAD_RATE Decimal(15,8) comment '分户浮动点数',
    ACCT_PERCENT_RATE Decimal(5,2) comment '分户浮动百分比',
    ACCT_FIXED_RATE Decimal(15,8) comment '分户固定利率',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (MATRIX_NO,SYSTEM_ID,IRL_INTERNAL_KEY,INT_CLASS,INPUT_DATE)
);
alter table IRL_PRE_ACCT_MATRIX comment '户上日利率阶梯信息表 undefined';