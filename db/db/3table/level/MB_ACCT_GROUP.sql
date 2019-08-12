drop table if exists MB_ACCT_GROUP;
/*==============================================================*/
/* Table: MB_ACCT_GROUP                                           */
/*==============================================================*/
create table MB_ACCT_GROUP
(
    GROUP_ID varchar(50) not null comment '账户组ID',
    GROUP_NAME varchar(100) not null comment '账户组名称',
    GROUP_CCY varchar(10) not null comment '币种组  目标币种+源币种  FM_CURRENCY.CCY',
    WTD_DEP_TYPE varchar(4) not null comment '转入转出交易类型',
    BASE_ACCT_NO varchar(150) not null comment '账号',
    CCY varchar(3) not null comment '币种',
    ACCT_SEQ_NO varchar(8) not null comment '账户序列号',
    PROD_TYPE varchar(50) not null comment '产品类型',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (GROUP_ID)
);
alter table MB_ACCT_GROUP comment '账户组表 undefined';