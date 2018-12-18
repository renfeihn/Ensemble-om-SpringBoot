drop table if exists MB_ORDER;
/*==============================================================*/
/* Table: MB_ORDER                                           */
/*==============================================================*/
create table MB_ORDER
(
    ORDER_SEQ_NO varchar(50) not null comment '预约登记号',
    ORDER_NO varchar(50) not null comment '预约编号',
    ORDER_EFFECT_DATE varchar(8) not null comment '预约生效日期',
    ORDER_TYPE varchar(50) not null comment '预约类型',
    ORDER_STATUS varchar(1) not null comment '预约状态',
    CLIENT_NO varchar(20) comment '客户号',
    BASE_ACCT_NO varchar(150) comment '账号',
    PROD_TYPE varchar(50) comment '产品类型',
    ACCT_CCY varchar(3) comment '账户币种',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    TRAN_BRANCH varchar(20) not null comment '交易机构',
    USER_ID varchar(30) not null comment '录入柜员',
    TRAN_DATE varchar(8) not null comment '交易日期',
    APPR_USER_ID varchar(30) comment '复核柜员',
    AUTH_USER_ID varchar(30) comment '授权柜员',
    ORDER_EXEC_STATUS varchar(1) comment '预约执行状态',
    FAILURE_REASON varchar(4000) comment '失败原因',
    SOURCE_MODULE varchar(10) comment '源模块',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码',
    primary  key (ORDER_SEQ_NO)
);
alter table MB_ORDER comment '预约业务登记表 undefined';