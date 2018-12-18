drop table if exists CIF_CLIENT_BLOCK;
/*==============================================================*/
/* Table: CIF_CLIENT_BLOCK                                           */
/*==============================================================*/
create table CIF_CLIENT_BLOCK
(
    SEQ_NO varchar(50) not null comment '序号',
    CLIENT_NO varchar(20) not null comment '客户号',
    BLOCK_DATE varchar(8) not null comment '冻结日期',
    BLOCK_REASON varchar(2) not null comment '冻结原因 01-睡眠户冻结 02-资料不全冻结 03-黑名单批量冻结 04-黑名单增量冻结 05-其它',
    BLOCK_USER_ID varchar(30) not null comment '冻结柜员',
    UNBLOCK_DATE varchar(8) comment '解冻日期',
    UNBLOCK_USER_ID varchar(30) comment '解冻柜员',
    BLOCK_GROUP varchar(1) not null comment '是否群冻结 Y-是 N-否',
    IS_UNBLOCKED varchar(1) not null comment '是否解冻 Y-是 N-否',
    BLOCK_AUTH_USER_ID varchar(30) comment '冻结授权柜员',
    UNBLOCK_AUTH_USER_ID varchar(30) comment '解冻授权柜员',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (SEQ_NO)
);
alter table CIF_CLIENT_BLOCK comment '客户冻结信息 undefined';