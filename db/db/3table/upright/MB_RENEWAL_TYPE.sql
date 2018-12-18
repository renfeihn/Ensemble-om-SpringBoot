drop table if exists MB_RENEWAL_TYPE;
/*==============================================================*/
/* Table: MB_RENEWAL_TYPE                                           */
/*==============================================================*/
create table MB_RENEWAL_TYPE
(
    RENEWAL_TYPE varchar(50) not null comment '比例类型',
    RENEWAL_RATE Decimal(15,8) comment '比率',
    PROD_TYPE varchar(50) comment '产品类型',
    TERM varchar(5) comment '存期',
    TERM_TYPE varchar(1) comment '存期类型',
    WTD_TRAN_TYPE varchar(10) comment '支取交易类型',
    DEP_TRAN_TYPE varchar(10) comment '存入交易类型',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (RENEWAL_TYPE)
);
alter table MB_RENEWAL_TYPE comment '定期产品比例定义表 undefined';