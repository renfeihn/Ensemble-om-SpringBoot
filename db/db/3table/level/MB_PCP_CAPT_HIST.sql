drop table if exists MB_PCP_CAPT_HIST;
/*==============================================================*/
/* Table: MB_PCP_CAPT_HIST                                           */
/*==============================================================*/
create table MB_PCP_CAPT_HIST
(
    SEQ_NO varchar(50) not null comment '序号',
    GROUP_ID varchar(50) comment '账户组ID',
    AGREEMENT_ID varchar(30) comment '协议编号',
    CLIENT_NO varchar(20) comment '客户号',
    INTERNAL_KEY Decimal(15) comment '帐户主键',
    INNER_PRICE_WAY varchar(10) comment '计价方式',
    PRICE_DAY varchar(8) comment '结息日',
    TRAN_DATE varchar(8) comment '交易日期',
    DR_RATE Decimal(15,8) comment '借方利率',
    CR_RATE Decimal(15,8) comment '贷方利率',
    OTH_INTERNAL_KEY Decimal(15) comment '转账时对方账户标识符',
    NOW_UP_AGG Decimal(17,2) comment '当前归集积数',
    NOW_DOWN_AGG Decimal(17,2) comment '当前下拨积数',
    TOTAL_INT_EXPENSE Decimal(17,8) comment '累计利息支出',
    TOTAL_INT_INCOME Decimal(17,8) comment '累计利息收入',
    STATUS varchar(3) comment '状态 A:有效 E:失效',
    REFERENCE varchar(50) comment '交易参考号',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码',
    primary  key (SEQ_NO)
);
alter table MB_PCP_CAPT_HIST comment ' 资金池结息流水表 undefined';