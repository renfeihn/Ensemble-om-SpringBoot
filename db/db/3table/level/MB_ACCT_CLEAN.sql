drop table if exists MB_ACCT_CLEAN;
/*==============================================================*/
/* Table: MB_ACCT_CLEAN                                           */
/*==============================================================*/
create table MB_ACCT_CLEAN
(
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    BASE_ACCT_NO varchar(150) comment '账号',
    PROD_TYPE varchar(50) comment '产品类型',
    CCY varchar(3) comment '币种',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    CLIENT_NO varchar(20) comment '客户号',
    ACCT_NAME varchar(200) comment '账户名称，一般指中文账户名称',
    CLEAN_TYPE varchar(4) comment '清扫类型',
    STATUS varchar(3) comment '状态',
    ACCT_CLOSE_DATE varchar(8) comment '关闭日期',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (INTERNAL_KEY)
);
alter table MB_ACCT_CLEAN comment '账户清理登记 undefined';