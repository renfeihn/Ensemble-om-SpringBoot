drop table if exists MB_ANNUAL_SURVEY;
/*==============================================================*/
/* Table: MB_ANNUAL_SURVEY                                           */
/*==============================================================*/
create table MB_ANNUAL_SURVEY
(
    ACCT_NATURE varchar(4) not null comment '账户属性',
    STOP_FLAG varchar(1) not null comment '是否止付Y:是 N:否',
    RESTRAINT_TYPE varchar(3) comment '限制类型',
    PERIOD_FREQ varchar(2) not null comment '频率类型',
    RESET_DATE varchar(4) not null comment '重置年检日期（MMDD）',
    STOP_DATE varchar(4) not null comment '年检截止日期（MMDD）',
    DAYS varchar(5) comment '天数',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    COMPANY varchar(20) comment '法人代码',
    primary  key (ACCT_NATURE)
);
alter table MB_ANNUAL_SURVEY comment '账户年检管理表 undefined';