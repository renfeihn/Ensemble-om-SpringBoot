drop table if exists MB_ANALYSIS3;
/*==============================================================*/
/* Table: MB_ANALYSIS3                                           */
/*==============================================================*/
create table MB_ANALYSIS3
(
    ANALYSIS3 varchar(6) not null comment '分类代码',
    ANALYSIS3_DESC varchar(30) not null comment '描述',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (ANALYSIS3)
);
alter table MB_ANALYSIS3 comment '分析类型3 undefined';