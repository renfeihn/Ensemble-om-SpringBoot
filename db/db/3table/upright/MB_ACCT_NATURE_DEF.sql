drop table if exists MB_ACCT_NATURE_DEF;
/*==============================================================*/
/* Table: MB_ACCT_NATURE_DEF                                           */
/*==============================================================*/
create table MB_ACCT_NATURE_DEF
(
    ACCT_NATURE varchar(4) not null comment '账户属性',
    DESCRIPTION varchar(50) not null comment '账户属性描述',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    NATURE_CLASS varchar(10) comment '账户属性分类',
    primary  key (ACCT_NATURE)
);
alter table MB_ACCT_NATURE_DEF comment '账户属性定义 undefined';