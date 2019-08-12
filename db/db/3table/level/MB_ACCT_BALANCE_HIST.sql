drop table if exists MB_ACCT_BALANCE_HIST;
/*==============================================================*/
/* Table: MB_ACCT_BALANCE_HIST                                           */
/*==============================================================*/
create table MB_ACCT_BALANCE_HIST
(
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    TRAN_DATE varchar(8) not null comment '交易日期',
    AMT_TYPE varchar(10) not null comment '金额类型',
    TOTAL_AMOUNT Decimal(17,2) not null comment '汇总金额',
    CA_AMOUNT Decimal(17,2) not null comment '当日钞余额',
    TT_AMOUNT Decimal(17,2) not null comment '当日汇余额',
    DAC_VALUE varchar(32) comment 'DAC值  防篡改加密',
    LAST_CHANGE_USER_ID varchar(30) comment '上次修改柜员',
    LAST_CHANGE_DATE varchar(8) not null comment '最后变更日期 ',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (INTERNAL_KEY,TRAN_DATE,AMT_TYPE)
);
alter table MB_ACCT_BALANCE_HIST comment 'MB_ACCT_BALANCE_HIST undefined';