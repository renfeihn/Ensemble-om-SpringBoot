drop table if exists IRL_PRE_ACCT_INT;
/*==============================================================*/
/* Table: IRL_PRE_ACCT_INT                                           */
/*==============================================================*/
create table IRL_PRE_ACCT_INT
(
    IRL_INTERNAL_KEY varchar(50) not null comment '账户键值',
    INPUT_DATE varchar(8) not null comment '录入日期',
    INT_CLASS varchar(20) not null comment '利息分类',
    SYSTEM_ID varchar(20) not null comment '系统ID',
    INT_START_DATE varchar(8) comment '开户起息日',
    INT_IND varchar(1) comment '是否计息',
    INT_TYPE varchar(3) comment '利率类型',
    ACTUAL_RATE Decimal(15,8) comment '行内利率',
    REAL_RATE Decimal(15,8) comment '执行利率',
    ACCT_SPREAD_RATE Decimal(15,8) comment '分户浮动点数',
    ACCT_PERCENT_RATE Decimal(5,2) comment '分户浮动百分比',
    ACCT_FIXED_RATE Decimal(15,8) comment '分户固定利率',
    INT_APPL_TYPE varchar(1) comment '利率启用方式',
    NEXT_ROLL_DATE varchar(8) comment '下一个利率变更日期',
    ROLL_FREQ varchar(2) comment '利率变更周期',
    ROLL_DAY varchar(2) comment '利率变更日',
    CYCLE_PERIOD_FREQ varchar(2) comment '结息周期',
    CYCLE_INT_DAY varchar(50) comment '结息日',
    NEXT_CYCLE_DATE varchar(8) comment '下一结息日期',
    ACCR_PERIOD_FREQ varchar(2) comment '计提周期',
    ACCR_INT_DAY varchar(2) comment '计提日',
    NEXT_ACCR_DATE varchar(8) comment '下一计提日期',
    LAST_ACCR_DATE varchar(8) comment '上一计提日期',
    INT_ADJ_CTD Decimal(17,2) comment '计提日利息调整',
    AGG_ADJ_CTD Decimal(38,2) comment '计提日积数调整',
    COMPANY varchar(20) comment '法人代码',
    ACCR_STATUS varchar(3) comment '状态  N：未处理 Y：已处理',
    FLOAT_RATE Decimal(15,8) comment '浮动利率',
    MONTH_BASIS varchar(3) comment '月基准',
    YEAR_BASIS varchar(3) comment '年基准',
    IS_CYCLE varchar(1) default 'Y'   comment '是否结息  ',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (IRL_INTERNAL_KEY,INPUT_DATE,INT_CLASS,SYSTEM_ID)
);
alter table IRL_PRE_ACCT_INT comment '分户上日利息分类明细信息表 undefined';