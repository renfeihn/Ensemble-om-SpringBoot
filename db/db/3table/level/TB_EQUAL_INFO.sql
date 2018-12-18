drop table if exists TB_EQUAL_INFO;
/*==============================================================*/
/* Table: TB_EQUAL_INFO                                           */
/*==============================================================*/
create table TB_EQUAL_INFO
(
    EQUAL_SEQ_NO varchar(30) not null comment '碰库序号',
    TRAILBOX_ID varchar(30) not null comment '尾箱代号',
    USER_ID varchar(30) not null comment '柜员',
    BRANCH varchar(20) not null comment '机构',
    EQUAL_TYPE varchar(10) not null comment '碰库类型,取值1-日始碰库2-日间碰库3-日终碰库  ',
    EQUAL_CLASS varchar(10) not null comment '碰库种类 取值V-凭证C-现金  ',
    EQUAL_DATE varchar(8) comment '碰库日期',
    TIME_STAMP varchar(17) comment '交易时间戳',
    CHECK_USER varchar(30) comment '复核柜员',
    IS_CHECK varchar(1) comment '是否复核 取值Y-已复核N-未复核  ',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    AGENT_USER varchar(30) comment '代碰库柜员',
    AUTH_USER varchar(30) comment '授权柜员',
    primary  key (EQUAL_SEQ_NO)
);
alter table TB_EQUAL_INFO comment '碰库信息表 undefined';