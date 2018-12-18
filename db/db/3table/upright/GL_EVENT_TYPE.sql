drop table if exists GL_EVENT_TYPE;
/*==============================================================*/
/* Table: GL_EVENT_TYPE                                           */
/*==============================================================*/
create table GL_EVENT_TYPE
(
    EVENT_TYPE varchar(50) not null comment '事件类型',
    CR_DR varchar(1) not null comment '借贷方向',
    EVENT_TYPE_DESC varchar(100) not null comment '事件类型描述',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    COMPANY varchar(20) comment '法人代码',
    primary  key (EVENT_TYPE)
);
alter table GL_EVENT_TYPE comment '事件类型表 undefined';