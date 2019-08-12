drop table if exists MB_ORDER_MATURITY;
/*==============================================================*/
/* Table: MB_ORDER_MATURITY                                           */
/*==============================================================*/
create table MB_ORDER_MATURITY
(
    ORDER_SEQ_NO varchar(50) not null comment '预约登记号',
    MATURITY_DATE varchar(8) not null comment '账户到期日',
    NEW_MATURITY_DATE varchar(8) not null comment '新到期日',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码',
    primary  key (ORDER_SEQ_NO)
);
alter table MB_ORDER_MATURITY comment '预约期限变更登记表 undefined';