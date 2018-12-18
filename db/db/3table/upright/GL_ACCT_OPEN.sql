drop table if exists GL_ACCT_OPEN;
/*==============================================================*/
/* Table: GL_ACCT_OPEN                                           */
/*==============================================================*/
create table GL_ACCT_OPEN
(
    GL_TYPE varchar(1) not null comment '总帐类型 N：往帐,V：来帐,I：内部账',
    ACCT_OPEN_DATE varchar(8) comment '开户日期',
    REACTIVATE_IND varchar(1) comment '账户活动状态 A-活动,N-新开,R-恢复使用,C-关闭',
    ACCT_CLOSE_DATE varchar(8) comment '闭户日期',
    USER_ID varchar(30) comment '用户名',
    TERMINAL_ID varchar(200) comment '终端Id',
    ONLINE_BATCH varchar(1) comment '联机批量标识',
    LAST_CHANGE_DATE varchar(8) comment '上一次更改日期',
    TRAN_DATE varchar(8) comment '交易日期',
    COMPANY varchar(20) comment '法人代码',
    INTERNAL_KEY Decimal(15) not null comment '内部键值',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (INTERNAL_KEY)
);
alter table GL_ACCT_OPEN comment '总账开户信息表 undefined';