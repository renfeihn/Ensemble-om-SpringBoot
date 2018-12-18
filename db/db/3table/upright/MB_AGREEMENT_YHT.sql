drop table if exists MB_AGREEMENT_YHT;
/*==============================================================*/
/* Table: MB_AGREEMENT_YHT                                           */
/*==============================================================*/
create table MB_AGREEMENT_YHT
(
    AGREEMENT_ID varchar(30) not null comment '协议编号',
    INTERNAL_KEY Decimal(15) comment '帐户主键',
    PROD_TYPE varchar(50) comment '产品类型',
    CCY varchar(3) comment '币种',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    BASE_ACCT_NO varchar(150) comment '账号',
    RELATED_STATUS varchar(1) comment '协议关联状态 ',
    ACCT_LEVEL varchar(2) comment '账户层级',
    PARENT_INTERNAL_KEY Decimal(15) comment '上级账户标识符',
    CLIENT_NO varchar(20) comment '客户号',
    SETTLE_IND varchar(2) comment '账户结算模式',
    INT_IND varchar(1) comment '是否计息',
    SELF_FLAG varchar(2) comment '自有资金子账户标识',
    ACCT_REAL_FLAG varchar(1) comment '账户虚实标志  ',
    MAIN_AGREEMENT_ID varchar(30) comment '主协议协议号',
    ACCT_FLAG varchar(6) comment '账户标志  ',
    ACCT_MAIN_FLAG varchar(1) comment '上级账户层级标识',
    SOURCE_TYPE varchar(10) comment '渠道',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    ACCT_ORG_SCHEMA varchar(2) comment '账户结构模式  ',
    YHT_PROD_TYPE varchar(50) comment '一户通产品类型',
    ISS_OD varchar(1) comment '是否透支',
    NEXT_MAX_SEQ_NO varchar(8) comment '下级账户最大序号',
    ACCT_NAME varchar(200) comment '账户名称，一般指中文账户名称',
    ALT_ACCT_NAME varchar(200) comment '备用账户名称，一般指英文账户名称'
);
alter table MB_AGREEMENT_YHT comment '一户通子协议表 undefined';