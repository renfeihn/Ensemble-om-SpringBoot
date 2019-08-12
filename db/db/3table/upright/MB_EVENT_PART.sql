drop table if exists MB_EVENT_PART;
/*==============================================================*/
/* Table: MB_EVENT_PART                                           */
/*==============================================================*/
create table MB_EVENT_PART
(
    EVENT_TYPE varchar(50) not null comment '事件类型 来源于MB_EVENT_TYPE.EVENT_TYPE',
    ASSEMBLE_ID varchar(50) not null comment '组件ID',
    ATTR_KEY varchar(30) not null comment '参数KEY 来源于MB_ATTR_TYPE.ATTR_KEY',
    ATTR_VALUE varchar(400) comment '参数值',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (EVENT_TYPE,ASSEMBLE_ID,ATTR_KEY)
);
alter table MB_EVENT_PART comment '事件与指标关系定义表 undefined';