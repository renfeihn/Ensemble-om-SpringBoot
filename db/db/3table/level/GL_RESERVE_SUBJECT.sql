drop table if exists GL_RESERVE_SUBJECT;
/*==============================================================*/
/* Table: GL_RESERVE_SUBJECT                                           */
/*==============================================================*/
create table GL_RESERVE_SUBJECT
(
    PAY_GL_CODE varchar(20) not null comment '缴存科目',
    PAY_TYPE varchar(8) not null comment '准备金类型 GL_RESERVE_PAY_CCY.PAY_TYPE',
    COUNT_RATE Decimal(5,2) comment '缴存比例',
    SUM_BAL_FLAG varchar(1) comment '余额汇总方式',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    primary  key (PAY_GL_CODE,PAY_TYPE)
);
alter table GL_RESERVE_SUBJECT comment '准备金缴存科目定义表 undefined';