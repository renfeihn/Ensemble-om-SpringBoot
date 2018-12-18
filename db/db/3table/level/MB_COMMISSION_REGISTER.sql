drop table if exists MB_COMMISSION_REGISTER;
/*==============================================================*/
/* Table: MB_COMMISSION_REGISTER                                           */
/*==============================================================*/
create table MB_COMMISSION_REGISTER
(
    INTERNAL_KEY Decimal(15) comment '帐户主键',
    EVENT_TYPE varchar(50) comment '事件类型',
    BASE_ACCT_NO varchar(150) comment '账号',
    PROD_TYPE varchar(50) comment '产品类型',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    CCY varchar(3) comment '币种',
    CLIENT_NO varchar(20) comment '客户号',
    ACCT_NAME varchar(200) comment '账户名称，一般指中文账户名称',
    DOC_TYPE varchar(10) comment '凭证类型',
    PREFIX varchar(10) comment '前缀',
    VOUCHER_NO varchar(50) comment '凭证号码',
    COMMISSION_DOC_TYPE varchar(3) comment '代办人证件类型',
    COMMISSION_DOC_ID varchar(75) comment '代办人证件号码',
    COMMISSION_CLIENT_NAME varchar(200) comment '代办人客户名称',
    COMMISSION_CLIENT_NO varchar(20) comment '代办人客户号',
    COUNTRY varchar(3) comment '国家',
    PROGRAM_ID varchar(20) comment '交易码',
    BRANCH varchar(20) comment '机构代码',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TYPE varchar(10) comment '交易类型',
    TRAN_CCY varchar(3) comment '交易币种',
    TRAN_AMT Decimal(17,2) comment '交易金额',
    REFERENCE varchar(50) comment '交易参考号',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    TRAN_DATE varchar(8) comment '交易日期',
    CHANNEL_SEQ_NO varchar(50) comment '渠道流水号'
);
alter table MB_COMMISSION_REGISTER comment '代办人登记表 undefined';