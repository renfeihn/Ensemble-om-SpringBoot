drop table if exists FM_LANGUAGE;
/*==============================================================*/
/* Table: FM_LANGUAGE                                           */
/*==============================================================*/
create table FM_LANGUAGE
(
    LANGUAGE_CODE varchar(1) not null comment '用户语言 E:中文  C:中文',
    LANGUAGE_DESC varchar(30) not null comment '余户语言描述',
    COMPANY varchar(20) comment '法人',
    CHAR_VALUE varchar(1) not null comment '字符值',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (LANGUAGE_CODE)
);
alter table FM_LANGUAGE comment '用户语言表 undefined';