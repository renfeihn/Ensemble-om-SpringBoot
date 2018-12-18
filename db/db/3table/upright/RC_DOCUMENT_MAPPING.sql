drop table if exists RC_DOCUMENT_MAPPING;
/*==============================================================*/
/* Table: RC_DOCUMENT_MAPPING                                           */
/*==============================================================*/
create table RC_DOCUMENT_MAPPING
(
    RC_DOCUMENT_TYPE varchar(2) not null comment '人行证件类型  01  02  03  04  05  06  07  08  09  10  11  12  13  14  15  16  99',
    ES_DOCUMENT_TYPE varchar(3) not null comment '核心系统证件类型',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (RC_DOCUMENT_TYPE,ES_DOCUMENT_TYPE)
);
alter table RC_DOCUMENT_MAPPING comment '证件类型对照关系表 undefined';