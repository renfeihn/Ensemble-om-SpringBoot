drop table if exists TB_CASH_EQUAL_DETAIL;
/*==============================================================*/
/* Table: TB_CASH_EQUAL_DETAIL                                           */
/*==============================================================*/
create table TB_CASH_EQUAL_DETAIL
(
    EQUAL_DETAIL_SEQ_NO varchar(30) not null comment '凭证碰库详情序号',
    EQUAL_SEQ_NO varchar(30) not null comment '碰库序号',
    USER_ID varchar(30) not null comment '柜员',
    TRAILBOX_ID varchar(30) not null comment '尾箱号',
    AMT Decimal(17,2) not null comment '金额',
    CCY varchar(3) not null comment '币种',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (EQUAL_DETAIL_SEQ_NO)
);
alter table TB_CASH_EQUAL_DETAIL comment '现金碰库详情信息表 undefined';