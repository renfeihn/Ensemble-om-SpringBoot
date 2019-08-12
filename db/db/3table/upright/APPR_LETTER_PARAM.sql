drop table if exists APPR_LETTER_PARAM;
/*==============================================================*/
/* Table: APPR_LETTER_PARAM                                           */
/*==============================================================*/
create table APPR_LETTER_PARAM
(
    PARA_KEY varchar(30) comment '参数名',
    PARA_VALUE varchar(500) comment '参数值',
    PARA_DESC varchar(200) comment '参数描述',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳'
);
alter table APPR_LETTER_PARAM comment '核准件限额参数表 undefined';