drop table if exists MB_PROD_DEFINE;
/*==============================================================*/
/* Table: MB_PROD_DEFINE                                           */
/*==============================================================*/
create table MB_PROD_DEFINE
(
    PROD_TYPE varchar(50) not null comment '产品类型',
    SEQ_NO varchar(50) not null comment '序号',
    ASSEMBLE_TYPE varchar(20) not null comment '组装类型',
    ASSEMBLE_ID varchar(50) not null comment '组件ID',
    EVENT_DEFAULT varchar(50) comment '产品基础事件',
    ATTR_KEY varchar(30) comment '参数KEY',
    ATTR_VALUE varchar(400) comment '参数值',
    STATUS varchar(3) not null comment '状态',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (PROD_TYPE,SEQ_NO)
);
alter table MB_PROD_DEFINE comment '产品定义表 undefined';