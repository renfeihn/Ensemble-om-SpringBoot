drop table if exists IRL_ACCT_MATRIX;
/*==============================================================*/
/* Table: IRL_ACCT_MATRIX                                           */
/*==============================================================*/
create table IRL_ACCT_MATRIX
(
    MATRIX_NO varchar(50) not null comment '阶梯序号',
    IRL_INTERNAL_KEY varchar(50) not null comment '账户键值',
    INT_CLASS varchar(20) not null comment '利息分类 取自表fm_ref_code中的domain取值为INT_CLASS时对应的值，比如：  INT  利息 ODP  罚息 ODI  复利 ODODI复利的复利  ODODP 罚息的复利  ODF 透支利息 PDUE 超期利息 ',
    MATRIX_AMT Decimal(17,2) not null comment '阶梯金额',
    PERIOD_FREQ varchar(2) comment '频率类型',
    DAY_NUM varchar(5) comment '每期天数',
    SUB_AMT Decimal(17,2) comment '明细金额',
    SUB_INTEREST Decimal(17,2) comment '利息明细金额',
    ACTUAL_RATE Decimal(15,8) comment '行内利率',
    FLOAT_RATE Decimal(15,8) comment '浮动利率',
    REAL_RATE Decimal(15,8) comment '执行利率',
    ACCT_SPREAD_RATE Decimal(15,8) comment '分户浮动点数',
    ACCT_PERCENT_RATE Decimal(5,2) comment '分户浮动百分比',
    ACCT_FIXED_RATE Decimal(15,8) comment '分户固定利率',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (MATRIX_NO)
);
alter table IRL_ACCT_MATRIX comment '分户利率阶梯信息表 undefined';