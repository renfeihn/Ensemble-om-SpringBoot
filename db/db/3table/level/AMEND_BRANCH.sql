create table AMEND_BRANCH
(
    AMEND_SEQ_NO Varchar2(50) not null,
    AMEND_BUSI_SORT Varchar2(3),
    AMEND_KEY Varchar2(30),
    AMEND_DATE Varchar2(8),
    BEFORE_VAL Varchar2(4000),
    AFTER_VAL Varchar2(4000),
    USER_ID Varchar2(30),
    TRAN_TIMESTAMP Varchar2(17),
    TRAN_BRANCH Varchar2(20),
    AUTH_USER_ID Varchar2(30),
    AUTH_DATE Varchar2(8),
    NARRATIVE Varchar2(300),
    BASE_ACCT_NO Varchar2(150),
    PROD_TYPE Varchar2(50),
    CCY Varchar2(3),
    ACCT_SEQ_NO Varchar2(8),
    CLIENT_NO Varchar2(20) not null,
    REFERENCE Varchar2(50),
    ROUTER_KEY Varchar2(100),
    constraint PK_AMEND_BRANCH primary key (AMEND_SEQ_NO)
) tablespace core_data;
comment on table AMEND_BRANCH is '业务信息变更操作记录';
comment on column AMEND_BRANCH.AMEND_SEQ_NO is '变更序号 ';
comment on column AMEND_BRANCH.AMEND_BUSI_SORT is '变更业务分类 1:账户,2:客户';
comment on column AMEND_BRANCH.AMEND_KEY is '变更内容的关键值，比如账户的内部键internal_key，,客户的client_key等 ';
comment on column AMEND_BRANCH.AMEND_DATE is '变更日期 ';
comment on column AMEND_BRANCH.BEFORE_VAL is '变更前值 ';
comment on column AMEND_BRANCH.AFTER_VAL is '变更后值 ';
comment on column AMEND_BRANCH.USER_ID is '交易柜员 FM_USER.USER_ID ';
comment on column AMEND_BRANCH.TRAN_TIMESTAMP is '时间戳 ';
comment on column AMEND_BRANCH.TRAN_BRANCH is '交易支行 FM_BRANCH.BRANCH ';
comment on column AMEND_BRANCH.AUTH_USER_ID is '授权柜员 ';
comment on column AMEND_BRANCH.AUTH_DATE is '审批日期 ';
comment on column AMEND_BRANCH.NARRATIVE is '摘要，开户时的账号用途，销户时的销户原因 ';
comment on column AMEND_BRANCH.BASE_ACCT_NO is '账号 ';
comment on column AMEND_BRANCH.PROD_TYPE is '产品类型 取值于MB_PROD_TYPE.PROD_TYPE';
comment on column AMEND_BRANCH.CCY is '币种 FM_CURRENCY.CCY';
comment on column AMEND_BRANCH.ACCT_SEQ_NO is '账户序列号 ';
comment on column AMEND_BRANCH.CLIENT_NO is '客户号 CIF_CLIENT.CLIENT_NO,如果成功记录生成的客户号  CIF_CLIENT.CLIENT_NO';
comment on column AMEND_BRANCH.REFERENCE is '交易参考号 计提:INPUT_DATE|| PROD_TYPE,结息:RUN_DATE||INTERNAL_KEY|| PROD_TYPE  ';
comment on column AMEND_BRANCH.ROUTER_KEY is '分库路由关键字 ';