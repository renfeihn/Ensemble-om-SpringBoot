drop table if exists FX_IC_SETTLE_FILE_HISTORY;
/*==============================================================*/
/* Table: FX_IC_SETTLE_FILE_HISTORY                                           */
/*==============================================================*/
create table FX_IC_SETTLE_FILE_HISTORY
(
    CARD_NO varchar(50) not null comment 'IC卡卡号',
    TRAN_AMT Decimal(17,2) comment '交易金额',
    TRAN_DATE varchar(8) comment '交易日期',
    primary  key (CARD_NO)
);