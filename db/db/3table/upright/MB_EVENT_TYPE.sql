drop table if exists MB_EVENT_TYPE;
/*==============================================================*/
/* Table: MB_EVENT_TYPE                                           */
/*==============================================================*/
create table MB_EVENT_TYPE
(
    EVENT_TYPE varchar(50) not null comment '事件类型',
    EVENT_DESC varchar(100) not null comment '事件类型描述',
    EVENT_CLASS varchar(20) not null comment '事件分类',
    PROCESS_METHOD varchar(1) not null comment '处理方式',
    STATUS varchar(3) not null comment '状态',
    IS_STANDARD varchar(1) not null comment '是否标准模板',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (EVENT_TYPE)
);
alter table MB_EVENT_TYPE comment '事件类型定义表 undefined';