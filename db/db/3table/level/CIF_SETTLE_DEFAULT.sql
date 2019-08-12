drop table if exists CIF_SETTLE_DEFAULT;
/*==============================================================*/
/* Table: CIF_SETTLE_DEFAULT                                           */
/*==============================================================*/
create table CIF_SETTLE_DEFAULT
(
    SEQ_NO varchar(50) not null comment '序号',
    CLIENT_NO varchar(20) not null comment '客户编号',
    EVENT_TYPE varchar(50) not null comment '事件类型',
    BASE_ACCT_NO varchar(150) not null comment '账号',
    PROD_TYPE varchar(50) not null comment '产品类型',
    CCY varchar(3) not null comment '账户币种',
    ACCT_SEQ_NO varchar(8) not null comment '序列号，采用顺序数字，表示在同一账号、账户类型、币种下的不同子账户，比如定期存款序列号',
    OTH_CLIENT_NO varchar(20) not null comment '对手客户',
    OTH_BASE_ACCT_NO varchar(150) not null comment '对手账号',
    OTH_PROD_TYPE varchar(50) not null comment '对手账户产品类型',
    OTH_CCY varchar(3) not null comment '对手账户币种',
    OTH_ACCT_SEQ_NO varchar(8) not null comment '对手账户序列号，采用顺序数字，表示在同一账号、账户类型、币种下的不同子账户，比如定期存款序列号',
    COMPANY varchar(20) not null comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (SEQ_NO)
);
alter table CIF_SETTLE_DEFAULT comment '默认结算账户 undefined';