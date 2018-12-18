drop table if exists IRL_INT_MATRIX;
/*==============================================================*/
/* Table: IRL_INT_MATRIX                                           */
/*==============================================================*/
create table IRL_INT_MATRIX
(
    MATRIX_NO varchar(50) not null comment '阶梯序号',
    IRL_SEQ_NO varchar(50) not null comment '序号',
    MATRIX_AMT Decimal(17,2) not null comment '阶梯金额',
    PERIOD_FREQ varchar(2) comment '频率类型',
    DAY_NUM varchar(5) comment '每期天数 ',
    INT_BASIS varchar(2) comment '基准利率类型',
    BASE_RATE Decimal(15,8) comment '基准利率',
    SPREAD_RATE Decimal(15,8) comment '浮动点数',
    SPREAD_PERCENT Decimal(5,2) comment '利率浮动百分比 ',
    ACTUAL_RATE Decimal(15,8) comment '实际利率',
    MIN_RATE Decimal(15,8) comment '最小利率',
    MAX_RATE Decimal(15,8) comment '最大利率',
    SUB_INT_TYPE varchar(3) comment '子利率类型',
    IS_OVER varchar(1) comment '利率终结标志',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (MATRIX_NO)
);
alter table IRL_INT_MATRIX comment '利率税率阶梯表 undefined';