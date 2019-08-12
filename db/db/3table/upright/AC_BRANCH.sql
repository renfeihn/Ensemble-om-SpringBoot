drop table if exists AC_BRANCH;
/*==============================================================*/
/* Table: AC_BRANCH                                           */
/*==============================================================*/
create table AC_BRANCH
(
    BRANCH varchar(20) not null comment '机构',
    SETTLE_LEVEL varchar(20) not null comment '清算层级',
    SETTLE_BRANCH varchar(20) comment '清算机构',
    SETTLE_SUBJECT varchar(30) comment '清算科目',
    SETTLE_ACCT_SEQ varchar(20) comment '清算账户序号',
    SETTLE_SUBJECT_UP varchar(30) comment '上级清算科目',
    SETTLE_ACCT_SEQ_UP varchar(20) comment '上级清算账户序号',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    COMPANY varchar(20) comment '法人代码',
    primary  key (BRANCH)
);
alter table AC_BRANCH comment '清算规则表 undefined';