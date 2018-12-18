drop table if exists IRL_CAPT_RATE_INFO;
/*==============================================================*/
/* Table: IRL_CAPT_RATE_INFO                                           */
/*==============================================================*/
create table IRL_CAPT_RATE_INFO
(
    MATRIX_NO varchar(50) not null comment '阶梯序号',
    IRL_SEQ_NO varchar(50) not null comment '序号',
    IRL_INTERNAL_KEY varchar(50) not null comment '账户键值',
    COUNTER varchar(50) not null comment '序号',
    INT_CLASS varchar(20) not null comment '利息分类',
    START_DATE varchar(8) not null comment '起始日期',
    END_DATE varchar(8) not null comment '终止日期',
    INT_AMT Decimal(17,2) comment '计提金额',
    DAYS varchar(5) comment '计提天数',
    FLOAT_RATE Decimal(15,8) comment '浮动利率',
    ACTUAL_RATE Decimal(15,8) comment '行内利率',
    REAL_RATE Decimal(15,8) comment '实际利率',
    YEAR_BASIS varchar(3) comment '年基准天数',
    SUB_INTEREST Decimal(17,2) comment '明细利息',
    TAX Decimal(17,2) comment '利息税',
    INT_ADJ Decimal(17,2) comment '利息调整',
    RATE_AMT Decimal(17,2) comment '靠档金额',
    INT_TYPE varchar(3) comment '利率类型',
    INT_TYPE_DESC varchar(30) comment '利率类型描述',
    TAX_TYPE varchar(3) comment '税率类型',
    TAX_RATE Decimal(15,8) comment '税率',
    TAX_TYPE_DESC varchar(30) comment '税率类型描述',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (MATRIX_NO)
);
alter table IRL_CAPT_RATE_INFO comment '分户结息利率明细流水信息表 undefined';