drop table if exists MB_ORDER_PROD;
/*==============================================================*/
/* Table: MB_ORDER_PROD                                           */
/*==============================================================*/
create table MB_ORDER_PROD
(
    ORDER_SEQ_NO varchar(50) not null comment '预约顺序号',
    OLD_PROD_TYPE varchar(50) comment '原产品类型',
    NEW_PROD_TYPE varchar(50) comment '变更后的产品类型',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码',
    primary  key (ORDER_SEQ_NO)
);
alter table MB_ORDER_PROD comment '产品变更预约表 undefined';