drop table if exists GL_RESERVE_PAY_GL_SUM;
/*==============================================================*/
/* Table: GL_RESERVE_PAY_GL_SUM                                           */
/*==============================================================*/
create table GL_RESERVE_PAY_GL_SUM
(
    PAY_TYPE varchar(8) comment '准备金类型 GL_RESERVE_PAY_CCY.PAY_TYPE',
    GL_CODE1 varchar(20) comment '科目代码 AC_SUBJECT.SUBJECT_CODE',
    GL_CODE2 varchar(20) comment '科目代码 AC_SUBJECT.SUBJECT_CODE',
    COUNT_RATE Decimal(5,2) comment '缴存比例',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    COMPANY varchar(20) comment '法人代码'
);