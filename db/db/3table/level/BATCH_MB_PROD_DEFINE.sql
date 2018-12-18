drop table if exists BATCH_MB_PROD_DEFINE;
/*==============================================================*/
/* Table: BATCH_MB_PROD_DEFINE                                           */
/*==============================================================*/
create table BATCH_MB_PROD_DEFINE
(
    PROD_TYPE varchar(50) not null comment '产品类型',
    SEQ_NO varchar(50) not null comment '序号',
    ASSEMBLE_TYPE varchar(20) not null comment '组件类型',
    ASSEMBLE_ID varchar(50) not null comment '组件ID',
    EVENT_DEFAULT varchar(50) comment '产品基础事件 ',
    ATTR_KEY varchar(30) comment '参数KEY ',
    ATTR_VALUE varchar(400) comment '参数值',
    STATUS varchar(3) not null comment '状态'
);
alter table BATCH_MB_PROD_DEFINE comment '同步产品定义表 undefined';