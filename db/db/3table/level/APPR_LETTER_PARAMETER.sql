drop table if exists APPR_LETTER_PARAMETER;
/*==============================================================*/
/* Table: APPR_LETTER_PARAMETER                                           */
/*==============================================================*/
create table APPR_LETTER_PARAMETER
(
    PARA_KEY varchar(30) not null comment '参数名',
    PARA_VALUE varchar(500) not null comment '参数值',
    PARA_DESC varchar(200) comment '参数描述',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (PARA_KEY)
);
alter table APPR_LETTER_PARAMETER comment '核准件限额检查参数表 undefined';