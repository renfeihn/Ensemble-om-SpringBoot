drop table if exists TB_ATTR_EXCHANGE;
/*==============================================================*/
/* Table: TB_ATTR_EXCHANGE                                           */
/*==============================================================*/
create table TB_ATTR_EXCHANGE
(
    EXCHANGE_ID varchar(30) not null comment '交接ID',
    NAME varchar(200) not null comment '物品名称',
    AMOUNT Decimal(17,2) comment '数量',
    START_NO varchar(50) comment '起始号码',
    END_NO varchar(50) comment '终止号码',
    REFERENCE varchar(50) comment '交易参考号',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字'
);
alter table TB_ATTR_EXCHANGE comment '尾箱交接附属物品信息表 undefined';