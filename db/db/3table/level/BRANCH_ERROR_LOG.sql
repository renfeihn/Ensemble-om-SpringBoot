create table BRANCH_ERROR_LOG
(
    SEQ_NO Varchar2(50) not null,
    ERROR_BUSI_SORT Varchar2(10),
    ERROR_DATE Varchar2(8) not null,
    TRAN_TIMESTAMP Varchar2(17),
    ERR_MSG Varchar2(4000),
    BASE_ACCT_NO Varchar2(150) not null,
    ACCT_SEQ_NO Varchar2(8) not null,
    ACCT_CCY Varchar2(3) not null,
    PROD_TYPE Varchar2(50) not null,
    constraint PK_BRANCH_ERROR_LOG primary key (SEQ_NO)
) tablespace core_data;
comment on table BRANCH_ERROR_LOG is '机构错误信息';
comment on column BRANCH_ERROR_LOG.SEQ_NO is '序号 ';
comment on column BRANCH_ERROR_LOG.ERROR_BUSI_SORT is '错误业务分类 file-批量文件 prod-按产品';
comment on column BRANCH_ERROR_LOG.ERROR_DATE is '出错会计日期 ';
comment on column BRANCH_ERROR_LOG.TRAN_TIMESTAMP is '时间戳 ';
comment on column BRANCH_ERROR_LOG.ERR_MSG is '错误信息 ';
comment on column BRANCH_ERROR_LOG.BASE_ACCT_NO is '账号 ';
comment on column BRANCH_ERROR_LOG.ACCT_SEQ_NO is '账户序列号 ';
comment on column BRANCH_ERROR_LOG.ACCT_CCY is '账户币种， 对于AIO账户和一本通账户，账户币种为XXX FM_CURRENCY.CCY';
comment on column BRANCH_ERROR_LOG.PROD_TYPE is '产品类型 取值于MB_PROD_TYPE.PROD_TYPE';