drop table if exists TB_EXCHANGE;
/*==============================================================*/
/* Table: TB_EXCHANGE                                           */
/*==============================================================*/
create table TB_EXCHANGE
(
    EXCHANGE_ID varchar(30) not null comment '交接ID',
    TRAILBOX_ID varchar(30) not null comment '尾箱ID',
    BRANCH varchar(20) not null comment '机构',
    LAST_USER_ID varchar(30) comment '移交柜员',
    USER_ID varchar(30) not null comment '接收柜员',
    ASSIGN_USER_ID varchar(30) comment '分配柜员',
    EXCHANGE_TIME varchar(17) comment '时间',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (EXCHANGE_ID)
);
alter table TB_EXCHANGE comment '尾箱交接确认表 undefined';