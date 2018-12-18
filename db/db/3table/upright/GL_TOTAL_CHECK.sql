drop table if exists GL_TOTAL_CHECK;
/*==============================================================*/
/* Table: GL_TOTAL_CHECK                                           */
/*==============================================================*/
create table GL_TOTAL_CHECK
(
    BRANCH varchar(20) not null comment '机构代码',
    RUN_DATE varchar(8) not null comment '运行日期',
    CCY varchar(3) not null comment '币种',
    PROD_TYPE varchar(50) not null comment '产品类型',
    GL_CODE varchar(20) not null comment '科目代码 AC_SUBJECT.SUBJECT_CODE',
    BALANCE_GL Decimal(17,2) not null comment '总账余额',
    BALANCE_ACCT Decimal(17,2) not null comment '分户余额',
    EQUAL_FLAG Decimal(17,2) not null comment '平账标志  ',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码',
    primary  key (BRANCH,RUN_DATE,CCY,PROD_TYPE,GL_CODE)
);
alter table GL_TOTAL_CHECK comment '总分核对结果表 undefined';