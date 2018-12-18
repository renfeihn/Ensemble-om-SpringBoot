drop table if exists MB_ACCT_TRAN_STATS_HIST;
/*==============================================================*/
/* Table: MB_ACCT_TRAN_STATS_HIST                                           */
/*==============================================================*/
create table MB_ACCT_TRAN_STATS_HIST
(
    INTERNAL_KEY Decimal(15) not null comment '账户标识符',
    LAST_CHANGE_DATE varchar(8) not null comment '上次动户日期',
    BACKUP_DATE varchar(8) not null comment '备份日期',
    SOURCE_TYPE varchar(10) comment '交易渠道',
    CR_DR_MAINT_IND varchar(1) comment '借贷方向',
    CCY varchar(3) comment '交易币种',
    CASH_TRAN varchar(1) comment '是否现金交易',
    TRAN_CLASS varchar(10) comment '交易大类',
    TOTAL_AMT_D Decimal(17,2) comment '日累计交易金额',
    TOTAL_AMT_W Decimal(17,2) comment '周累计交易金额',
    TOTAL_AMT_M Decimal(17,2) comment '月累计交易金额',
    TOTAL_AMT_Q Decimal(17,2) comment '季累计交易金额',
    TOTAL_AMT_Y Decimal(17,2) comment '年累计交易金额',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字'
);
alter table MB_ACCT_TRAN_STATS_HIST comment '账户交易额统计历史表 undefined';