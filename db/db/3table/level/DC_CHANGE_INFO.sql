drop table if exists DC_CHANGE_INFO;
/*==============================================================*/
/* Table: DC_CHANGE_INFO                                           */
/*==============================================================*/
create table DC_CHANGE_INFO
(
    BASE_ACCT_NO varchar(150) comment '账号',
    INTERNAL_KEY Decimal(15) comment '帐户主键',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    CCY varchar(3) comment '币种',
    PROD_TYPE varchar(50) comment '产品类型',
    STAGE_CODE varchar(50) comment '期次代码 ',
    BRANCH varchar(20) comment '机构代码',
    CLIENT_NO varchar(20) comment '客户号',
    NEW_SETTLE_BASE_ACCT_NO varchar(150) comment '新利息入账账号',
    OLD_SETTLE_BASE_ACCT_NO varchar(150) comment '原利息入账账号',
    TRAN_DATE varchar(8) comment '交易日期',
    TRAN_BRANCH varchar(20) comment '交易支行',
    USER_ID varchar(30) comment '交易柜员',
    OLD_BASE_ACCT_NO varchar(150) comment '原账号',
    OLD_ACCT_SEQ_NO varchar(8) comment '原账户序列号',
    OLD_CCY varchar(3) comment '原币种',
    OLD_PROD_TYPE varchar(50) comment '原产品类型 ',
    OLD_CLIENT_NO varchar(20) comment '原客户号  ',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    APPL_USER_ID varchar(30) comment '授权柜员',
    ACCT_NAME varchar(200) comment '账户名称，一般指中文账户名称',
    OLD_ACCT_NAME varchar(200) comment '原账户名称',
    NEW_SETTLE_ACCT_SEQ_NO varchar(8) comment '新利息入账账户序列号',
    NEW_SETTLE_PROD_TYPE varchar(50) comment '新利息入账账户产品类型',
    NEW_SETTLE_ACCT_CCY varchar(3) comment '新利息入账账户币种',
    OLD_SETTLE_ACCT_SEQ_NO varchar(8) comment '原利息入账账户序列号',
    OLD_SETTLE_PROD_TYPE varchar(50) comment '原利息入账账户产品类型',
    OLD_SETTLE_ACCT_CCY varchar(3) comment '原利息入账账户币种',
    NEW_SETTLE_ACCT_NAME varchar(200) comment '新利息入账账户名称',
    OLD_SETTLE_ACCT_NAME varchar(200) comment '原利息入账账户名称',
    STAGE_PROD_CLASS varchar(4) comment '期次产品分类'
);
alter table DC_CHANGE_INFO comment '大额存单转让信息登记簿 undefined';