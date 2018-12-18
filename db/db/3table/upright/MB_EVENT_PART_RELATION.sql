drop table if exists MB_EVENT_PART_RELATION;
/*==============================================================*/
/* Table: MB_EVENT_PART_RELATION                                           */
/*==============================================================*/
create table MB_EVENT_PART_RELATION
(
    EVENT_TYPE varchar(50) not null comment '基础事件类型',
    ASSEMBLE_TYPE varchar(20) not null comment '组件类型',
    ASSEMBLE_ID varchar(50) not null comment '指标或参数类型',
    PART_DESC varchar(100) comment '指标类型描述',
    STATUS varchar(3) comment '生效状态',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (EVENT_TYPE,ASSEMBLE_TYPE,ASSEMBLE_ID)
);
alter table MB_EVENT_PART_RELATION comment '事件与指标规则定义表 undefined';