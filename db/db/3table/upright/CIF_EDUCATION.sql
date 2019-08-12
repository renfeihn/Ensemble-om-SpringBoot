drop table if exists CIF_EDUCATION;
/*==============================================================*/
/* Table: CIF_EDUCATION                                           */
/*==============================================================*/
create table CIF_EDUCATION
(
    EDUCATION varchar(3) not null comment '教育程度编号',
    EDUCATION_DESC varchar(30) comment '教育程度描述',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (EDUCATION)
);
alter table CIF_EDUCATION comment '教育程度 undefined';