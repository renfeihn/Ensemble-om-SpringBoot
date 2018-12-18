drop table if exists MB_EVENT_NODES;
/*==============================================================*/
/* Table: MB_EVENT_NODES                                           */
/*==============================================================*/
create table MB_EVENT_NODES
(
    PROD_TYPE varchar(50) not null comment '产品类型',
    EVENT_TYPE varchar(50) not null comment '事件类型',
    EVENT_NODE varchar(50) not null comment '事件节点序号',
    EVENT_NODE_DESC varchar(50) comment '事件节点描述',
    ALIAS varchar(100) comment '事件节点返回数据别名',
    CLAZZ varchar(300) not null comment '事件节点类型路径',
    METHOD_TYPE varchar(50) not null comment '事件节点调用方法类型',
    METHOD_NAME varchar(50) not null comment '事件节点调用方法名称',
    ARGS varchar(300) comment '事件节点调用方法入参 来源于业务模型与同一级节点别名',
    ARG_CLAZZ varchar(300) comment '事件节点调用方法入参类全路径',
    VAR varchar(20) comment '暂不使用',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (PROD_TYPE,EVENT_TYPE,EVENT_NODE,METHOD_TYPE)
);
alter table MB_EVENT_NODES comment '事件节点表 undefined';