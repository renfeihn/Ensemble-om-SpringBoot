drop table if exists CIF_CLIENT_NATURE;
/*==============================================================*/
/* Table: CIF_CLIENT_NATURE                                           */
/*==============================================================*/
create table CIF_CLIENT_NATURE
(
    CLIENT_NO varchar(20) comment '客户号',
    CLIENT_NATURE varchar(10) not null comment '属性类型',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字'
);
alter table CIF_CLIENT_NATURE comment '客户属性 undefined';