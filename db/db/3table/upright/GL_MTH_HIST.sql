drop table if exists GL_MTH_HIST;
/*==============================================================*/
/* Table: GL_MTH_HIST                                           */
/*==============================================================*/
create table GL_MTH_HIST
(
    INTERNAL_KEY Decimal(15) not null comment '内部键值',
    MTH_END_DATE varchar(8) not null comment '月末日期',
    BRANCH varchar(20) not null comment '分行',
    CCY varchar(3) not null comment '币种',
    CLIENT_NO varchar(20) not null comment '客户号',
    GL_CODE varchar(20) not null comment '科目代码',
    SEQ_NO varchar(50) not null comment '序号',
    GL_TYPE varchar(1) not null comment '总账类型',
    PROFIT_CENTRE varchar(12) not null comment '利润中心',
    LEDGER_BAL Decimal(17,2) comment '帐面余额',
    ACTUAL_BAL Decimal(17,2) comment '实际余额',
    GL_CTRL_DATE varchar(8) comment '总账日期',
    AGG_BAL_CTD Decimal(17,2) comment '当前累计余额',
    CTD_DAYS varchar(5) comment '累计天数',
    AGG_BAL_MTD Decimal(17,2) comment '月累计余额',
    MTD_DAYS varchar(5) comment '月累计天数',
    AGG_BAL_YTD Decimal(17,2) comment '年累计余额',
    YTD_DAYS varchar(5) comment '年累计天数',
    ACCRUED_BAL Decimal(17,2) comment '计提余额',
    MTD_BAL Decimal(17,2) comment '月余额',
    YTD_BAL Decimal(17,2) comment '年余额',
    CR_INT_ACCRUED Decimal(17,2) comment '贷方利息增加额',
    DR_INT_ACCRUED Decimal(17,2) comment '借方利息增加额',
    ACTUAL_AGG_BAL_CTD Decimal(17,2) comment '一个计息周期内积数',
    ACTUAL_AGG_BAL_MTD Decimal(17,2) comment '月内积数',
    ACTUAL_AGG_BAL_YTD Decimal(17,2) comment '年内积数',
    ACTUAL_MTD_BAL Decimal(17,2) comment '实际月余额',
    ACTUAL_YTD_BAL Decimal(17,2) comment '实际年余额',
    ACTUAL_CTD_DAYS varchar(5) comment '一个计息周期内累计天数',
    ACTUAL_MTD_DAYS varchar(5) comment '月内累计天数',
    ACTUAL_YTD_DAYS varchar(5) comment '年内累计天数',
    LEDGER_CTRL_DATE varchar(8) comment '总账最后一次过账日期',
    ACTUAL_CTRL_DATE varchar(8) comment '总账实际过账日期',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码'
);
alter table GL_MTH_HIST comment '总账账户月末余额表 undefined';