drop table if exists MB_AMEND;
/*==============================================================*/
/* Table: MB_AMEND                                           */
/*==============================================================*/
create table MB_AMEND
(
    AMEND_SEQ_NO varchar(50) not null comment '变更序号',
    AMEND_BUSI_SORT varchar(3) comment '变更业务分类：1-账户 2-客户',
    AMEND_KEY varchar(30) comment '变更内容的关键值，比如账户的内部键internal_key，,客户的client_key等',
    AMEND_TYPE varchar(25) comment '变更类型：  BASE  基本信息变更  MAT   期限变更   PRA   额度变更  RATE  利率变更  SETT  结算信息变更  SCHE  计划变更  PROD  产品变更  CLIT  客户变更  BRAH  机构变更  STAS  状态变更  ATAS  核算状态变更  INDV  对私客户附属信息变更  CORP 对公跟客户附属信息变更  DOCU 客户证件信息变更  CONT 客户联系信息变更',
    AMEND_ITEM varchar(60) comment '修改项，修改的字段名称，比如账户属性，客户中文名称等的字段名称',
    AMEND_DATE varchar(8) comment '变更日期',
    BEFORE_VAL varchar(4000) comment '变更前值',
    AFTER_VAL varchar(4000) comment '变更后值',
    USER_ID varchar(30) comment '交易柜员',
    TRAN_TIMESTAMP varchar(17) comment '交易时间',
    TRAN_BRANCH varchar(20) comment '交易机构',
    APPROVAL_STATUS varchar(1) comment '复核标志',
    APPR_USER_ID varchar(30) comment '复核柜员',
    APPROVAL_DATE varchar(8) comment '复核日期',
    NARRATIVE varchar(300) comment '摘要',
    BASE_ACCT_NO varchar(150) comment '账号',
    PROD_TYPE varchar(50) comment '产品类型',
    CCY varchar(3) comment '账户币种',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    CLIENT_NO varchar(20) not null comment '客户号',
    REFERENCE varchar(50) comment '交易参考号',
    AMEND_BATCH_NO varchar(50) comment '变更批次号',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    BEFORE_VAL_1 varchar(4000) comment '变更前值1',
    AFTER_VAL_1 varchar(4000) comment '变更后值1',
    COMPANY varchar(20) comment '法人代码',
    primary  key (AMEND_SEQ_NO)
);
alter table MB_AMEND comment '业务信息变更操作记录 undefined';