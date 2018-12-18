drop table if exists MB_ACCT_CLOSE_REASON;
/*==============================================================*/
/* Table: MB_ACCT_CLOSE_REASON                                           */
/*==============================================================*/
create table MB_ACCT_CLOSE_REASON
(
    REASON_CODE varchar(6) not null comment '原因代码',
    REASON_CODE_DESC varchar(30) not null comment '原因代码描述',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (REASON_CODE)
);
alter table MB_ACCT_CLOSE_REASON comment '账户销户原因定义表 undefined';