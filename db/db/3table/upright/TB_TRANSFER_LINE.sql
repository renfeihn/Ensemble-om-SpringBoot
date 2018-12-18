drop table if exists TB_TRANSFER_LINE;
/*==============================================================*/
/* Table: TB_TRANSFER_LINE                                           */
/*==============================================================*/
create table TB_TRANSFER_LINE
(
    LINE_CODE varchar(6) not null comment '线路编码',
    LINE_NAME varchar(50) not null comment '线路名称',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (LINE_CODE)
);
alter table TB_TRANSFER_LINE comment '钞车线路表 undefined';