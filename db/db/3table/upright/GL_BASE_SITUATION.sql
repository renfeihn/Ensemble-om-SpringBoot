drop table if exists GL_BASE_SITUATION;
/*==============================================================*/
/* Table: GL_BASE_SITUATION                                           */
/*==============================================================*/
create table GL_BASE_SITUATION
(
    BRANCH varchar(20) not null comment '机构代码',
    RUN_DATE varchar(8) not null comment '运行日期',
    CCY varchar(3) not null comment '币种',
    GL_CODE varchar(20) not null comment '科目代码 AC_SUBJECT.SUBJECT_CODE',
    DR_BALANCE_PREV Decimal(17,2) not null comment '上日借方余额',
    CR_BALANCE_PREV Decimal(17,2) not null comment '上日贷方余额',
    DR_BALANCE Decimal(17,2) not null comment '当日借方余额',
    CR_BALANCE Decimal(17,2) not null comment '当日贷方余额',
    DR_TRAN_AMT Decimal(17,2) not null comment '当日借方发生额',
    DR_TRAN_COUNT varchar(10) not null comment '当日借方发生笔数',
    CR_TRAN_AMT Decimal(17,2) not null comment '当日贷方发生额',
    CR_TRAN_COUNT varchar(10) not null comment '当日贷方发生笔数',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码',
    primary  key (BRANCH,RUN_DATE,CCY,GL_CODE)
);
alter table GL_BASE_SITUATION comment '常规业务状况表 undefined';