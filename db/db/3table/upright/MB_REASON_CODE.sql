drop table if exists MB_REASON_CODE;
/*==============================================================*/
/* Table: MB_REASON_CODE                                           */
/*==============================================================*/
create table MB_REASON_CODE
(
    REASON_CODE varchar(6) not null comment '原因代码',
    REASON_CODE_DESC varchar(30) not null comment '原因代码描述',
    SOURCE_MODE varchar(10) comment '模块',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    REASON_CLASS varchar(1) comment '原因分类',
    BORROW_FOR_REPAY varchar(1) comment '是否借新还旧或续存标志',
    primary  key (REASON_CODE)
);
alter table MB_REASON_CODE comment '原因代码 undefined';