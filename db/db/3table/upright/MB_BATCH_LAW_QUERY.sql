drop table if exists MB_BATCH_LAW_QUERY;
/*==============================================================*/
/* Table: MB_BATCH_LAW_QUERY                                           */
/*==============================================================*/
create table MB_BATCH_LAW_QUERY
(
    BATCH_NO varchar(50) not null comment '批次号',
    SEQ_NO varchar(50) not null comment '序号',
    DOCUMENT_TYPE varchar(3) not null comment '证件类型',
    DOCUMENT_ID varchar(75) not null comment '证件号码',
    ISS_COUNTRY varchar(3) not null comment '发证国家',
    CLIENT_NO varchar(20) comment '客户号',
    CLIENT_NAME varchar(200) comment '客户名称',
    STATUS varchar(3) not null comment '状态 ',
    ERROR_DESC varchar(4000) comment '失败原因',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (BATCH_NO,SEQ_NO)
);
alter table MB_BATCH_LAW_QUERY comment '批量司法查询明细表 undefined';