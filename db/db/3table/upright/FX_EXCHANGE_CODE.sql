drop table if exists FX_EXCHANGE_CODE;
/*==============================================================*/
/* Table: FX_EXCHANGE_CODE                                           */
/*==============================================================*/
create table FX_EXCHANGE_CODE
(
    TRAN_CODE varchar(10) comment '交易代码',
    TRAN_CODE_DESC varchar(100) comment '结售汇项目编码描述',
    REMARK varchar(200) comment '备注，用来描述制卡原因，比如正常制卡，补换卡等'
);
alter table FX_EXCHANGE_CODE comment '结汇用途 undefined';