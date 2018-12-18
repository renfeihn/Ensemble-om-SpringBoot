drop table if exists IRL_PRE_ACCT_AMT;
/*==============================================================*/
/* Table: IRL_PRE_ACCT_AMT                                           */
/*==============================================================*/
create table IRL_PRE_ACCT_AMT
(
    IRL_INTERNAL_KEY varchar(50) not null comment '账户键值',
    INPUT_DATE varchar(8) not null comment '计提日期',
    AMT_TYPE varchar(10) not null comment '金额类型',
    SYSTEM_ID varchar(20) not null comment '系统标识',
    AMT Decimal(17,2) comment '金额',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (IRL_INTERNAL_KEY,INPUT_DATE,AMT_TYPE,SYSTEM_ID)
);
alter table IRL_PRE_ACCT_AMT comment '分户上日金额信息表  undefined';