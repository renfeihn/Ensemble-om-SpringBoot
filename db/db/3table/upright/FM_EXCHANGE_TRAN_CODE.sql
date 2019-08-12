drop table if exists FM_EXCHANGE_TRAN_CODE;
/*==============================================================*/
/* Table: FM_EXCHANGE_TRAN_CODE                                           */
/*==============================================================*/
create table FM_EXCHANGE_TRAN_CODE
(
    TRAN_CODE varchar(10) comment '结售汇项目编码',
    TRAN_CODE_DESC varchar(100) comment '结售汇项目编码描述',
    INC_EXP_IND varchar(2) comment '升降标志',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间'
);
alter table FM_EXCHANGE_TRAN_CODE comment '结售汇项目编码表 undefined';