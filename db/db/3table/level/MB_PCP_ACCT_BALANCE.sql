drop table if exists MB_PCP_ACCT_BALANCE;
/*==============================================================*/
/* Table: MB_PCP_ACCT_BALANCE                                           */
/*==============================================================*/
create table MB_PCP_ACCT_BALANCE
(
    GROUP_ID varchar(50) not null comment '账户组ID',
    CLIENT_NO varchar(20) not null comment '客户号',
    PCP_BALANCE Decimal(17,2) comment '资金池账户余额',
    TOTAL_UP_AMT Decimal(17,2) comment '累计归集金额',
    TOTAL_DOWN_AMT Decimal(17,2) comment '累计下拨金额',
    LAST_PCP_BALANCE Decimal(17,2) comment '上日账户余额',
    LAST_TOTAL_UP_AMT Decimal(17,2) comment '上日累计归集金额',
    LAST_TOTAL_DOWN_AMT Decimal(17,2) comment '上日累计下拨金额',
    LAST_CHANGE_DATE varchar(8) comment '最后变更日期 ',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码',
    primary  key (GROUP_ID,CLIENT_NO)
);
alter table MB_PCP_ACCT_BALANCE comment '资金池账户余额表 undefined';