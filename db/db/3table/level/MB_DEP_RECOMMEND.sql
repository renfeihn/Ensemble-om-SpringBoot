drop table if exists MB_DEP_RECOMMEND;
/*==============================================================*/
/* Table: MB_DEP_RECOMMEND                                           */
/*==============================================================*/
create table MB_DEP_RECOMMEND
(
    INTERNAL_KEY Decimal(15) not null comment '账户标识符',
    SEQ_NO varchar(50) not null comment '序号',
    USER_ID varchar(30) not null comment '柜员ID',
    PERCENT Decimal(5,2) not null comment '揽存比例',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码',
    USER_NAME varchar(200) comment '柜员名称',
    primary  key (INTERNAL_KEY,SEQ_NO)
);
alter table MB_DEP_RECOMMEND comment '揽存信息表 undefined';