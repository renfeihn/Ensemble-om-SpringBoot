drop table if exists MB_VOUCHER_LOST;
/*==============================================================*/
/* Table: MB_VOUCHER_LOST                                           */
/*==============================================================*/
create table MB_VOUCHER_LOST
(
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    LOST_NO varchar(16) not null comment '挂失编号',
    LOST_TYPE varchar(3) not null comment '挂失类型 ',
    LOST_VOUCHER_STATUS varchar(3) not null comment '挂失状态',
    RES_FLAG varchar(1) not null comment '冻结标志 ',
    START_SEQ_NO varchar(50) comment '冻结开始的序号',
    REPORTED_LOST_REASON varchar(200) comment '挂失原因',
    BRANCH varchar(20) comment '机构代码',
    TRAN_DATE varchar(8) comment '交易日期',
    USER_ID varchar(30) comment '交易柜员 FM_USER.USER_ID',
    AUTH_USER_ID varchar(30) comment '授权柜员',
    UNCHAIN_BRANCH varchar(20) comment '解挂机构',
    UNCHAIN_DATE varchar(8) comment '解挂日期',
    UNCHAIN_USER_ID varchar(30) comment '解挂柜员',
    UNCHAIN_AUTH_USER_ID varchar(30) comment '解挂授权柜员',
    COMPANY varchar(20) comment '法人代码',
    REFERENCE varchar(50) comment '交易参考号',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    DOC_TYPE varchar(10) comment '凭证类型 TB_VOUCHER_DEF.DOC_TYPE',
    PREFIX varchar(10) comment '前缀',
    VOUCHER_NO varchar(50) comment '凭证号',
    BASE_ACCT_NO varchar(150) comment '账号',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    ACCT_CCY varchar(3) comment '账户币种，',
    PROD_TYPE varchar(50) comment '产品类型',
    ACCT_NAME varchar(200) comment '账户名称，一般指中文账户名称',
    CLIENT_NO varchar(20) comment '客户号',
    SOURCE_TYPE varchar(10) comment '渠道 FM_CHANNEL.CHANNEL',
    primary  key (INTERNAL_KEY,LOST_NO)
);
alter table MB_VOUCHER_LOST comment '凭证挂失登记簿 undefined';