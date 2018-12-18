drop table if exists MB_DEP_WTD_TRAN_TYPE;
/*==============================================================*/
/* Table: MB_DEP_WTD_TRAN_TYPE                                           */
/*==============================================================*/
create table MB_DEP_WTD_TRAN_TYPE
(
    DEP_TRAN_TYPE varchar(10) not null comment '存入交易类型',
    WTD_TRAN_TYPE varchar(10) not null comment '支取交易类型',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (DEP_TRAN_TYPE,WTD_TRAN_TYPE)
);
alter table MB_DEP_WTD_TRAN_TYPE comment '存入支取交易类型定义表 undefined';