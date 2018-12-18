drop table if exists MB_ACCT_LIMIT;
/*==============================================================*/
/* Table: MB_ACCT_LIMIT                                           */
/*==============================================================*/
create table MB_ACCT_LIMIT
(
    INTERNAL_KEY Decimal(15) not null comment '账户标识符',
    SOURCE_TYPE varchar(10) not null comment '渠道类型  ',
    TOTAL_LIMIT Decimal(17,2) comment '总放款额度',
    TOTAL_TIMES varchar(5) not null comment '总放款次数',
    HOLDING_LIMIT Decimal(17,2) not null comment '已占用额度',
    HOLDING_TIMES varchar(5) comment '已占用次数',
    RELEASE_PRIORITY varchar(5) not null comment '还款释放优先级',
    LAST_CHANGE_USER_ID varchar(30) not null comment '上次动户柜员编号',
    LAST_CHANGE_DATE varchar(8) not null comment '上次动户日期',
    DAC_VALUE varchar(32) comment 'DAC值  防篡改加密',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (INTERNAL_KEY,SOURCE_TYPE)
);
alter table MB_ACCT_LIMIT comment '账户额度表 undefined';