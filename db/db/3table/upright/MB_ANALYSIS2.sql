drop table if exists MB_ANALYSIS2;
/*==============================================================*/
/* Table: MB_ANALYSIS2                                           */
/*==============================================================*/
create table MB_ANALYSIS2
(
    ANALYSIS2 varchar(6) not null comment '分类代码',
    ANALYSIS2_DESC varchar(30) not null comment '描述',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (ANALYSIS2)
);
alter table MB_ANALYSIS2 comment '分析类型2 undefined';