drop table if exists IRL_ACCT_AMT;
/*==============================================================*/
/* Table: IRL_ACCT_AMT                                           */
/*==============================================================*/
create table IRL_ACCT_AMT
(
    IRL_INTERNAL_KEY varchar(50) not null comment '账户键值',
    AMT_TYPE varchar(10) not null comment '金额类型',
    AMT Decimal(17,2) not null comment '金额',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (IRL_INTERNAL_KEY,AMT_TYPE)
);
alter table IRL_ACCT_AMT comment '分户金额信息表 undefined';