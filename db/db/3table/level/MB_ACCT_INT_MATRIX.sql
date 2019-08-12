drop table if exists MB_ACCT_INT_MATRIX;
/*==============================================================*/
/* Table: MB_ACCT_INT_MATRIX                                           */
/*==============================================================*/
create table MB_ACCT_INT_MATRIX
(
    INTERNAL_KEY Decimal(15) not null comment '账户标识符',
    INT_CLASS varchar(20) not null comment '利息分类  INT         正常利息  ODP       罚息  ODI         复利  ODODP  罚息的复利  ODODI   复利的复利  ODF        透支利息  PDUE     超期利息  ',
    MATRIX_NO varchar(50) not null comment '阶梯序号',
    BALANCE Decimal(17,2) comment '余额',
    PERIOD_FREQ varchar(2) comment '期限类型',
    DAY_NUM varchar(5) comment '每期天数',
    SUB_AMT Decimal(17,2) comment '计提明细金额',
    SUB_INTEREST Decimal(17,2) comment '结息明细金额',
    ACTUAL_RATE Decimal(15,8) comment '行内利率',
    FLOAT_RATE Decimal(15,8) comment '浮动利率',
    SPREAD_RATE Decimal(15,8) comment '浮动点数',
    SPREAD_PERCENT Decimal(5,2) comment '浮动百分比',
    ACCT_FIXED_RATE Decimal(15,8) comment '分户级固定利率',
    ACCT_SPREAD_RATE Decimal(15,8) comment '分户级浮动百分点',
    ACCT_PERCENT_RATE Decimal(5,2) comment '分户级浮动百分比',
    REAL_RATE Decimal(15,8) comment '执行利率',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (INTERNAL_KEY,INT_CLASS,MATRIX_NO)
);
alter table MB_ACCT_INT_MATRIX comment '账户利率阶梯信息表 undefined';