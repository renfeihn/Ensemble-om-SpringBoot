drop table if exists IRL_INT_BASIS;
/*==============================================================*/
/* Table: IRL_INT_BASIS                                           */
/*==============================================================*/
create table IRL_INT_BASIS
(
    INT_BASIS varchar(2) not null comment '基准利率类型  ',
    INT_BASIS_DESC varchar(60) not null comment '基准利率类型描述',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (INT_BASIS)
);
alter table IRL_INT_BASIS comment '基准利率类型表 undefined';