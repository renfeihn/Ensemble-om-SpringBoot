drop table if exists MB_TRAN_PURPOSE;
/*==============================================================*/
/* Table: MB_TRAN_PURPOSE                                           */
/*==============================================================*/
create table MB_TRAN_PURPOSE
(
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_PURPOSE varchar(6) comment '目的',
    TRAN_PURPOSE_DESC varchar(200) comment '描述',
    primary  key (TRAN_PURPOSE,TRAN_PURPOSE_DESC)
);