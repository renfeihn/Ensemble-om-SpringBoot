drop table if exists IRL_CAPT_MATRIX;
/*==============================================================*/
/* Table: IRL_CAPT_MATRIX                                           */
/*==============================================================*/
create table IRL_CAPT_MATRIX
(
    MATRIX_NO varchar(50) not null comment '阶梯序号',
    IRL_INTERNAL_KEY varchar(50) not null comment '账户键值',
    INT_CLASS varchar(20) not null comment '利息分类',
    MATRIX_AMT Decimal(17,2) not null comment '阶梯金额',
    CAPT_DATE varchar(8) not null comment '结息日期',
    IRL_SEQ_NO varchar(50) not null comment '序号 ',
    PERIOD_FREQ varchar(2) comment '频率类型',
    DAY_NUM varchar(5) comment '每期天数',
    ACTUAL_RATE Decimal(15,8) comment '行内利率',
    FLOAT_RATE Decimal(15,8) comment '浮动利率',
    REAL_RATE Decimal(15,8) comment '执行利率',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (MATRIX_NO)
);
alter table IRL_CAPT_MATRIX comment '分户结息利率阶梯流水信息表 undefined';