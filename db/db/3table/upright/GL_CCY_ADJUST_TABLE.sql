drop table if exists GL_CCY_ADJUST_TABLE;
/*==============================================================*/
/* Table: GL_CCY_ADJUST_TABLE                                           */
/*==============================================================*/
create table GL_CCY_ADJUST_TABLE
(
    CCY varchar(3) not null comment '币种',
    ADJUST_CCY varchar(3) not null comment '结转币种',
    SUBJECT_CODE varchar(20) not null comment '兑换科目',
    RATE_TYPE varchar(3) not null comment '汇率类型',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    COMPANY varchar(20) comment '法人代码',
    primary  key (CCY)
);
alter table GL_CCY_ADJUST_TABLE comment '损益币种结转表 undefined';