drop table if exists CIF_CLIENT_BLOCK_LOG;
/*==============================================================*/
/* Table: CIF_CLIENT_BLOCK_LOG                                           */
/*==============================================================*/
create table CIF_CLIENT_BLOCK_LOG
(
    SOURCE_MODULE varchar(10) not null comment '模块',
    PROGRAM_ID varchar(20) not null comment '交易名称',
    CLIENT_NO varchar(20) not null comment '客户号',
    REFERENCE varchar(50) comment '参考号',
    CHECK_DATE varchar(8) not null comment '检查日期',
    CHECK_USER_ID varchar(30) not null comment '检查柜员',
    CHECK_REASON varchar(300) comment '检查描述',
    APPR_USER_ID varchar(30) comment '复核柜员',
    BL_DESC varchar(200) comment '描述',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字'
);
alter table CIF_CLIENT_BLOCK_LOG comment '客户冻结黑名单检查登记簿 undefined';