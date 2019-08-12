drop table if exists MB_EVENT_ATTR;
/*==============================================================*/
/* Table: MB_EVENT_ATTR                                           */
/*==============================================================*/
create table MB_EVENT_ATTR
(
    EVENT_TYPE varchar(50) not null comment '事件类型 取值于MB_EVENT_TYPE.EVENT_TYPE',
    SEQ_NO varchar(50) not null comment '组装序号',
    ASSEMBLE_TYPE varchar(20) not null comment '组装类型',
    ASSEMBLE_ID varchar(50) not null comment '组件ID',
    ATTR_VALUE varchar(400) comment '参数值',
    ASSEMBLE_RULE varchar(10) comment '指标运行规则',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (EVENT_TYPE,SEQ_NO)
);
alter table MB_EVENT_ATTR comment '事件参数定义表 undefined';