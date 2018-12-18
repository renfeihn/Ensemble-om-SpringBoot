drop table if exists MB_ANALYSIS1;
/*==============================================================*/
/* Table: MB_ANALYSIS1                                           */
/*==============================================================*/
create table MB_ANALYSIS1
(
    ANALYSIS1 varchar(6) not null comment '分类代码',
    ANALYSIS1_DESC varchar(30) not null comment '描述',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (ANALYSIS1)
);
alter table MB_ANALYSIS1 comment '分析类型1 undefined';