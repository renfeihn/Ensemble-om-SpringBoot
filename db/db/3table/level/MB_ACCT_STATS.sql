drop table if exists MB_ACCT_STATS;
/*==============================================================*/
/* Table: MB_ACCT_STATS                                           */
/*==============================================================*/
create table MB_ACCT_STATS
(
    INTERNAL_KEY Decimal(15) not null comment '账户标识符',
    CTRL_DATE varchar(8) not null comment '统计日期',
    ACTUAL_BAL Decimal(17,2) comment '可用余额',
    AGG_BAL_CTD Decimal(17,2) comment '开户至今累计积数',
    AGG_BAL_MTD Decimal(17,2) comment '月初至今累计积数',
    AGG_BAL_QTD Decimal(17,2) comment '季初至今累计积数',
    AGG_BAL_STD Decimal(17,2) comment '半年初至今累计积数',
    AGG_BAL_YTD Decimal(17,2) comment '年初至今累计积数',
    CTD_DAYS varchar(5) comment '开户至今累计天数',
    MTD_DAYS varchar(5) comment '(自然日)当月累计天数',
    QTD_DAYS varchar(5) comment '(自然日)当季累计天数',
    STD_DAYS varchar(5) comment '(自然日)半年累计天数',
    YTD_DAYS varchar(5) comment '(自然日)当年累计天数',
    ACT_MTD_DAYS varchar(5) comment '(账户实际)当月累计天数',
    ACT_QTD_DAYS varchar(5) comment '(账户实际)当季累计天数',
    ACT_STD_DAYS varchar(5) comment '(账户实际)半年累计天数',
    ACT_YTD_DAYS varchar(5) comment '(账户实际)当年累计天数',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字'
);
alter table MB_ACCT_STATS comment '账户积数统计表 undefined';