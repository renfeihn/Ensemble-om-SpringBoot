drop table if exists GL_RESERVE_PAY_SUBJECT;
/*==============================================================*/
/* Table: GL_RESERVE_PAY_SUBJECT                                           */
/*==============================================================*/
create table GL_RESERVE_PAY_SUBJECT
(
    PAY_TYPE varchar(8) not null comment '准备金类型',
    PAY_GL_CODE varchar(20) not null comment '缴存科目',
    COUNT_RATE Decimal(5,2) comment '缴存比例',
    SUM_BAL_FLAG varchar(1) comment '余额汇总方式',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    COMPANY varchar(20) comment '法人代码',
    primary  key (PAY_TYPE,PAY_GL_CODE)
);
alter table GL_RESERVE_PAY_SUBJECT comment '科目范围定义 undefined';