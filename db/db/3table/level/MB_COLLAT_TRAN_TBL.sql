drop table if exists MB_COLLAT_TRAN_TBL;
/*==============================================================*/
/* Table: MB_COLLAT_TRAN_TBL                                           */
/*==============================================================*/
create table MB_COLLAT_TRAN_TBL
(
    COLL_REF varchar(50) not null comment '抵押品编号',
    COUNTER varchar(50) not null comment '序号',
    OPTION_TYPE varchar(2) not null comment '操作类型',
    STATUS varchar(3) not null comment '状态',
    GL_POSTED varchar(1) not null comment '过账标志',
    TRAN_NO varchar(50) not null comment '交易流水号',
    REFERENCE varchar(50) not null comment '交易参考号',
    TRAN_DATE varchar(8) not null comment '交易日期',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字'
);
alter table MB_COLLAT_TRAN_TBL comment '抵质押品交易明细表 undefined';