drop table if exists GL_CCY_CTRL_ACCT_TBL;
/*==============================================================*/
/* Table: GL_CCY_CTRL_ACCT_TBL                                           */
/*==============================================================*/
create table GL_CCY_CTRL_ACCT_TBL
(
    GL_CODE varchar(20) not null comment '损益重估科目',
    GL_CODE_PROFIT varchar(20) not null comment '利润科目',
    GL_CODE_LOSS varchar(20) not null comment '损益科目',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    COMPANY varchar(20) comment '法人代码',
    primary  key (GL_CODE)
);
alter table GL_CCY_CTRL_ACCT_TBL comment '汇兑损益重估科目定义 undefined';