drop table if exists MB_PROD_RELATION_DEFINE;
/*==============================================================*/
/* Table: MB_PROD_RELATION_DEFINE                                           */
/*==============================================================*/
create table MB_PROD_RELATION_DEFINE
(
    PROD_TYPE varchar(50) not null comment '产品类型',
    SUB_PROD_TYPE varchar(50) not null comment '子产品类型',
    EVENT_TYPE varchar(50) not null comment '事件类型',
    ASSEMBLE_TYPE varchar(20) not null comment '组件类型',
    ASSEMBLE_ID varchar(50) not null comment '组件ID',
    STATUS varchar(3) comment '状态',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (PROD_TYPE,SUB_PROD_TYPE,EVENT_TYPE,ASSEMBLE_ID)
);
alter table MB_PROD_RELATION_DEFINE comment '产品组装关系定义表 undefined';