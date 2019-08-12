drop table if exists MB_ACCT_NATURE_RESTRAINTS;
/*==============================================================*/
/* Table: MB_ACCT_NATURE_RESTRAINTS                                           */
/*==============================================================*/
create table MB_ACCT_NATURE_RESTRAINTS
(
    ACCT_NATURE varchar(4) not null comment '账户属性 取值范围RB_ACCT_NATURE_DEF表ACCT_NATURE字段',
    RESTRAINT_TYPE varchar(3) not null comment '限制类型 取值范围RB_RESTRAINT_TYPE表RESTRAINT_TYPE',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TERM varchar(5) comment '存期',
    TERM_TYPE varchar(1) comment '存期类型',
    primary  key (ACCT_NATURE,RESTRAINT_TYPE)
);
alter table MB_ACCT_NATURE_RESTRAINTS comment '账户属性与账户限制关联配置 undefined';