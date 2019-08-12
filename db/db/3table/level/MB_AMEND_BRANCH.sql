drop table if exists Mb_Amend_Branch;
/*==============================================================*/
/* Table: Mb_Amend_Branch                                           */
/*==============================================================*/
create table Mb_Amend_Branch
(
    AMEND_DATE varchar(8) comment '变更日期',
    OLD_BRANCH varchar(20) comment '变更前机构',
    NEW_BRANCH varchar(20) comment '变更后机构',
    USER_ID varchar(30) comment '交易柜员 FM_USER.USER_ID',
    TRAN_BRANCH varchar(20) comment '交易支行 FM_BRANCH.BRANCH',
    BASE_ACCT_NO varchar(150) comment '账号',
    PROD_TYPE varchar(50) comment '产品类型',
    ACCT_CCY varchar(3) comment '账户币种，',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    REFERENCE varchar(50) comment '交易参考号',
    AUTH_USER_ID varchar(30) comment '授权柜员',
    AUTH_DATE varchar(8) comment '审批日期',
    ERR_MSG varchar(4000) comment '错误信息',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    AMEND_SEQ_NO varchar(50) comment '变更序号',
    CLIENT_NO varchar(20) comment '客户号'
);
alter table Mb_Amend_Branch comment '机构变更登记表 undefined';