drop table if exists MB_BATCH_TRAN_ATTACH;
/*==============================================================*/
/* Table: MB_BATCH_TRAN_ATTACH                                           */
/*==============================================================*/
create table MB_BATCH_TRAN_ATTACH
(
    BATCH_NO varchar(50) not null comment '批处理号',
    ATTR_KEY varchar(30) not null comment '参数KEY ',
    ATTR_VALUE varchar(400) comment '参数值',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    COMPANY varchar(20) comment '法人代码',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (BATCH_NO,ATTR_KEY)
);
alter table MB_BATCH_TRAN_ATTACH comment '批量交易子表 undefined';