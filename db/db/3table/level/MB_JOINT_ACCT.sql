drop table if exists MB_JOINT_ACCT;
/*==============================================================*/
/* Table: MB_JOINT_ACCT                                           */
/*==============================================================*/
create table MB_JOINT_ACCT
(
    INTERNAL_KEY Decimal(15) not null comment '账户标识符',
    CLIENT_NO varchar(20) not null comment '客户号',
    CLIENT_SHORT varchar(30) comment '客户简称',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (INTERNAL_KEY,CLIENT_NO)
);
alter table MB_JOINT_ACCT comment '联名账户或者账户公有责任人信息 undefined';