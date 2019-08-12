drop table if exists MB_ACCT_SEC_BALANCE;
/*==============================================================*/
/* Table: MB_ACCT_SEC_BALANCE                                           */
/*==============================================================*/
create table MB_ACCT_SEC_BALANCE
(
    INTERNAL_KEY Decimal(15) not null comment '账户标识符',
    AMT_TYPE varchar(10) not null comment '金额类型:                  PRI  本金   BAL  余额   OSL  未到期本金                  PD   逾期本金   PF   净本金                                   DDA:发放金额  ',
    TOTAL_AMOUNT Decimal(17,2) comment '汇总金额',
    LAST_CHANGE_DATE varchar(8) not null comment '上次动户日期',
    DAC_VALUE varchar(32) comment 'DAC值  防篡改加密',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (INTERNAL_KEY,AMT_TYPE)
);
alter table MB_ACCT_SEC_BALANCE comment '账户其他余额 undefined';

drop index MB_ACCT_SEC_BALANCE_IND1 on MB_ACCT_SEC_BALANCE;
/*==============================================================*/
/* Index: MB_ACCT_SEC_BALANCE_IND1                                           */
/*==============================================================*/
create index MB_ACCT_SEC_BALANCE_IND1 on MB_ACCT_SEC_BALANCE (
    INTERNAL_KEY,AMT_TYPE
);