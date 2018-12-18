drop table if exists TB_TRAILBOX_OVERDRAW;
/*==============================================================*/
/* Table: TB_TRAILBOX_OVERDRAW                                           */
/*==============================================================*/
create table TB_TRAILBOX_OVERDRAW
(
    PROGRAM_ID varchar(20) not null comment '交易编号',
    OVERDRAW_AMT Decimal(17,2) comment '允许透支金额',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (PROGRAM_ID)
);
alter table TB_TRAILBOX_OVERDRAW comment '尾箱透支表 undefined';