drop table if exists MB_ACCT_TRAN_STATS;
/*==============================================================*/
/* Table: MB_ACCT_TRAN_STATS                                           */
/*==============================================================*/
create table MB_ACCT_TRAN_STATS
(
    INTERNAL_KEY Decimal(15) not null comment '账户标识符',
    LAST_CHANGE_DATE varchar(8) not null comment '上次动户日期',
    SOURCE_TYPE varchar(10) comment '交易渠道',
    CR_DR_MAINT_IND varchar(1) comment '借贷方向 C贷方 D借方 A全部/不区分借贷方向',
    CCY varchar(3) comment '交易币种',
    CASH_TRAN varchar(1) comment '是否现金交易 Y现金 N非现金 A不区分是否现金',
    TRAN_CLASS varchar(10) comment '交易大类 MB_TRAN_DEF.TRAN_CLASS, ALL不区分交易',
    TOTAL_AMT_D Decimal(17,2) comment '日累计交易金额',
    TOTAL_AMT_W Decimal(17,2) comment '周累计交易金额',
    TOTAL_AMT_M Decimal(17,2) comment '月累计交易金额',
    TOTAL_AMT_Q Decimal(17,2) comment '季累计交易金额',
    TOTAL_AMT_Y Decimal(17,2) comment '年累计交易金额',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字'
);
alter table MB_ACCT_TRAN_STATS comment '账户累计交易额统计表 undefined';