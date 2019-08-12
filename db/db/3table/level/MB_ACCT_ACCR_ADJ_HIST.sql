drop table if exists MB_ACCT_ACCR_ADJ_HIST;
/*==============================================================*/
/* Table: MB_ACCT_ACCR_ADJ_HIST                                           */
/*==============================================================*/
create table MB_ACCT_ACCR_ADJ_HIST
(
    ADJ_SEQ_NO varchar(50) not null comment '计提调整序号',
    ADJ_COUNTER varchar(5) comment '计提调整次数',
    INTERNAL_KEY Decimal(15) not null comment '账户标识符',
    INT_CLASS varchar(20) not null comment '利息分类 ',
    ADJ_ACCRUED Decimal(17,2) not null comment '调整计提值',
    TRAN_DATE varchar(8) not null comment '交易日期',
    ADJ_AMT varchar(30) not null comment '交易柜员',
    ADJ_REASON varchar(200) comment '调整原因',
    LAST_CHANGE_DATE varchar(8) comment '最后修改日期',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    REFERENCE varchar(50) comment '交易参考号',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码',
    primary  key (ADJ_SEQ_NO)
);
alter table MB_ACCT_ACCR_ADJ_HIST comment '账户计提调整历史表 undefined';