drop table if exists RC_LIST_DOCUMENT_TYPE;
/*==============================================================*/
/* Table: RC_LIST_DOCUMENT_TYPE                                           */
/*==============================================================*/
create table RC_LIST_DOCUMENT_TYPE
(
    DOCUMENT_TYPE varchar(3) not null comment '证件类型  01  02  03  04  05  06  07  08  09  10  11  12  13  14  15  16  99',
    DOCUMENT_TYPE_DESC varchar(30) comment '证件类型描述',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (DOCUMENT_TYPE)
);
alter table RC_LIST_DOCUMENT_TYPE comment '人行发送的黑灰名单用的证件类型 undefined';