drop table if exists GL_EVENT_MAPPING;
/*==============================================================*/
/* Table: GL_EVENT_MAPPING                                           */
/*==============================================================*/
create table GL_EVENT_MAPPING
(
    MAPPING_TYPE varchar(50) not null comment '映射事件类型',
    EVENT_TYPE varchar(50) not null comment '事件类型',
    MAPPING_NAME varchar(100) comment '映射名称',
    EVENT_TYPE_DESC varchar(100) comment '事件类型描述',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    COMPANY varchar(20) comment '法人代码',
    primary  key (MAPPING_TYPE)
);
alter table GL_EVENT_MAPPING comment '事件类型映射表 undefined';