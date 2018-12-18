drop table if exists MB_MATURITY_AMEND;
/*==============================================================*/
/* Table: MB_MATURITY_AMEND                                           */
/*==============================================================*/
create table MB_MATURITY_AMEND
(
    INTERNAL_KEY Decimal(15) not null comment '账户主键',
    SEQ_NO varchar(50) not null comment '交易序号',
    MATURITY_DATE varchar(8) comment '原到期日',
    NEW_MATURITY_DATE varchar(8) comment '新到期日',
    TERM varchar(5) comment '原期限',
    TERM_TYPE varchar(1) comment '原期限类型',
    NEW_TERM varchar(5) comment '新期限',
    NEW_TERM_TYPE varchar(1) comment '新期限类型',
    APPROVAL_STATUS varchar(1) comment '复核标志',
    USER_ID varchar(30) comment '交易柜员',
    APPR_USER_ID varchar(30) comment '复核柜员',
    TRAN_DATE varchar(8) comment '交易日期',
    LAST_CHANGE_DATE varchar(8) comment '变更日期',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (INTERNAL_KEY,SEQ_NO)
);
alter table MB_MATURITY_AMEND comment '账户期限变更表 undefined';