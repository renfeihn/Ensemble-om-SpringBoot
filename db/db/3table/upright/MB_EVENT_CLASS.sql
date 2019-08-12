drop table if exists MB_EVENT_CLASS;
/*==============================================================*/
/* Table: MB_EVENT_CLASS                                           */
/*==============================================================*/
create table MB_EVENT_CLASS
(
    EVENT_CLASS varchar(20) not null comment '事件分类',
    EVENT_CLASS_DESC varchar(100) not null comment '事件分类描述',
    EVENT_CLASS_LEVEL varchar(10) comment '事件分类层级',
    PARENT_EVENT_CLASS varchar(20) comment '上级事件分类',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (EVENT_CLASS)
);
alter table MB_EVENT_CLASS comment '事件分类定义表 undefined';