drop table if exists MB_ACCT_WITHDRAW_TYPE;
/*==============================================================*/
/* Table: MB_ACCT_WITHDRAW_TYPE                                           */
/*==============================================================*/
create table MB_ACCT_WITHDRAW_TYPE
(
    INTERNAL_KEY Decimal(15) not null comment '账户标识符',
    WITHDRAWAL_TYPE varchar(1) not null comment '支取方式 ',
    CHANNEL_MUSTER varchar(200) comment '支取渠道，支持多个渠道，逗号分隔',
    DAC_VALUE varchar(32) comment 'DAC值  防篡改加密',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (INTERNAL_KEY,WITHDRAWAL_TYPE)
);
alter table MB_ACCT_WITHDRAW_TYPE comment '账户支取方式 undefined';