drop table if exists MB_EVENT_DEFAULT_TYPE;
/*==============================================================*/
/* Table: MB_EVENT_DEFAULT_TYPE                                           */
/*==============================================================*/
create table MB_EVENT_DEFAULT_TYPE
(
    EVENT_DEFAULT_TYPE varchar(50) not null comment '基础事件类型',
    EVENT_DEFAULT_DESC varchar(100) not null comment '基础事件描述',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (EVENT_DEFAULT_TYPE)
);
alter table MB_EVENT_DEFAULT_TYPE comment '产品基础事件定义表 undefined';