drop table if exists MB_PCP_INNER_PRICE_HIST;
/*==============================================================*/
/* Table: MB_PCP_INNER_PRICE_HIST                                           */
/*==============================================================*/
create table MB_PCP_INNER_PRICE_HIST
(
    SEQ_NO varchar(50) not null comment '序号',
    TRAN_DATE varchar(8) comment '交易日期',
    GROUP_ID varchar(50) comment '账户组ID',
    CLIENT_NO varchar(20) comment '客户号',
    INTERNAL_KEY Decimal(15) comment '帐户主键',
    BASE_ACCT_NO varchar(150) comment '账号',
    PROD_TYPE varchar(50) comment '产品类型',
    CCY varchar(3) comment '币种',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    NOW_UP_AGG Decimal(17,2) comment '当前归集积数',
    NOW_DOWN_AGG Decimal(17,2) comment '当前下拨积数',
    NOW_BLANCE_AGG Decimal(17,2) comment '当前余额积数',
    DAY_INT_INCOME Decimal(17,8) comment '当日应收利息',
    DAY_INT_EXPENSE Decimal(17,8) comment '当日应付利息',
    PERIOD_INT_INCOME Decimal(17,8) comment '当期累计利息收入',
    PERIOD_INT_EXPENSE Decimal(17,8) comment '当期累计利息支出',
    TOTAL_INT_INCOME Decimal(17,8) comment '累计利息收入',
    TOTAL_INT_EXPENSE Decimal(17,8) comment '累计利息支出',
    DAY_INCOME_DIFF Decimal(17,8) comment '当日应收差额',
    DAY_EXPENSE_DIFF Decimal(17,8) comment '当日应付差额',
    TOTAL_ARRE_INCOME Decimal(17,2) comment '欠收',
    TOTAL_ARRE_EXPENSE Decimal(17,2) comment '欠收',
    DR_RATE Decimal(15,8) comment '借方利率',
    CR_RATE Decimal(15,8) comment '贷方利率',
    INT_CALC_BAL varchar(3) comment '计息方式 MB_ATTR_VALUE.INT_CALC_TYPE',
    LAST_PRICE_DATE date comment '上一计价日',
    NEXT_PRICE_DATE date comment '下一计价日',
    TRANSFER_CNT Decimal(5,0) comment '周期内已划拨次数',
    USER_ID varchar(30) comment '交易柜员 FM_USER.USER_ID',
    AUTH_USER_ID varchar(30) comment '授权柜员',
    TRAN_BRANCH varchar(20) comment '交易支行 FM_BRANCH.BRANCH',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '分库路由关键字',
    primary  key (SEQ_NO)
);
alter table MB_PCP_INNER_PRICE_HIST comment '资金池账户计价表历史表 undefined';