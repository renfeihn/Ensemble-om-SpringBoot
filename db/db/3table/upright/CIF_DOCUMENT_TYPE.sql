drop table if exists CIF_DOCUMENT_TYPE;
/*==============================================================*/
/* Table: CIF_DOCUMENT_TYPE                                           */
/*==============================================================*/
create table CIF_DOCUMENT_TYPE
(
    DOCUMENT_TYPE varchar(3) not null comment '证件类型',
    DOCUMENT_TYPE_DESC varchar(30) not null comment '证件类型描述',
    DOCUMENT_TYPE_SHORT varchar(30) comment '证件类型简称',
    APP_IND varchar(1) not null comment '适用范围 I-个体客户 C-非个体 B-个体或者非个体',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (DOCUMENT_TYPE)
);
alter table CIF_DOCUMENT_TYPE comment '证件类型 undefined';