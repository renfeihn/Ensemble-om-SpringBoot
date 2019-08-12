drop table if exists MB_OPEN_CLOSE_REG;
/*==============================================================*/
/* Table: MB_OPEN_CLOSE_REG                                           */
/*==============================================================*/
create table MB_OPEN_CLOSE_REG
(
    SEQ_NO varchar(50) not null comment '序号',
    BASE_ACCT_NO varchar(150) not null comment '账号/卡号',
    PROD_TYPE varchar(50) comment '产品类型',
    CCY varchar(3) comment '账户币种',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    INTERNAL_KEY Decimal(15) comment '账户主键',
    ACCT_TYPE varchar(10) comment '账户类型',
    ACCT_NATURE varchar(4) comment '账户属性 ',
    REG_TYPE varchar(1) comment '登记簿类型',
    OP_METHOD varchar(1) comment '操作方式',
    BRANCH varchar(20) comment '交易机构',
    TRAN_DATE varchar(8) comment '交易日期',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    USER_ID varchar(30) comment '柜员ID',
    REFERENCE varchar(50) comment '交易参考号',
    CLIENT_NO varchar(20) comment '客户号',
    COMPANY varchar(20) comment '法人代码',
    NARRATIVE varchar(300) comment '摘要，开户时的账号用途，销户时的销户原因',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (SEQ_NO)
);
alter table MB_OPEN_CLOSE_REG comment '账户/卡开立注销登记簿 undefined';