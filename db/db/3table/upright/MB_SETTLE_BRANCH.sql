drop table if exists MB_SETTLE_BRANCH;
/*==============================================================*/
/* Table: MB_SETTLE_BRANCH                                           */
/*==============================================================*/
create table MB_SETTLE_BRANCH
(
    BRANCH varchar(20) not null comment '机构',
    SETTLE_LEVEL varchar(20) not null comment '清算层级',
    SETTLE_BRANCH varchar(20) comment '清算机构',
    SETTLE_BASE_ACCT varchar(50) comment '本机构清算账号',
    SETTLE_BASE_ACCT_UP varchar(50) comment '上级机构清算账号',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码',
    primary  key (BRANCH)
);
alter table MB_SETTLE_BRANCH comment '机构清算配置表 undefined';