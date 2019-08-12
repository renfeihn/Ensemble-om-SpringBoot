drop table if exists MB_COLLAT_TBL;
/*==============================================================*/
/* Table: MB_COLLAT_TBL                                           */
/*==============================================================*/
create table MB_COLLAT_TBL
(
    COLL_REF varchar(50) not null comment '抵押品编号',
    BRANCH varchar(20) comment '机构号',
    CONTRACT_NO varchar(50) comment '合同号',
    OWNER_NO varchar(200) comment '客户号',
    OWNER varchar(50) comment '客户名称',
    COLLAT_TYPE varchar(10) comment '抵押品种类',
    COLLAT_NAME varchar(50) comment '抵押品名称',
    COLLAT_VALUE Decimal(17,2) comment '抵押品价值',
    CCY varchar(3) comment '币种',
    VOUCHER_NO varchar(50) comment '凭证号',
    BASE_ACCT_NO varchar(150) comment '账户',
    PROD_TYPE varchar(50) comment '产品类型',
    ACCT_CCY varchar(3) comment '账户币种',
    ACCT_SEQ_NO varchar(8) comment '账户序号',
    BEGIN_DATE varchar(8) comment '开始日期',
    END_DATE varchar(8) comment '结束日期',
    TRAN_DATE varchar(8) comment '交易日期',
    STATUS varchar(3) comment '状态',
    USER_ID varchar(30) comment '操作柜员',
    AUTH_USER_ID varchar(30) comment '复核柜员',
    APPR_USER_ID varchar(30) comment '授权柜员',
    WS_ID varchar(200) comment '操作机器码',
    NARRATIVE varchar(300) comment '备注',
    LAST_CHANGE_DATE varchar(8) comment '最后修改日期',
    IS_INNER varchar(2) comment '是否本行',
    SOURCE_TYPE varchar(10) comment '渠道类型',
    RESTRAINT_SEQ_NO varchar(50) comment '限制序号',
    VERIFY varchar(1) comment '是否确认',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (COLL_REF)
);
alter table MB_COLLAT_TBL comment '抵质押品登记薄 undefined';