create table BRANCH_CHANGE_INFO
(
    CHANGE_SEQ_NO Varchar2(50) not null,
    FILE_NAME Varchar2(500),
    BUSI_SORT Varchar2(10) not null,
    TRAN_DATE Varchar2(8) not null,
    SEQ_NO Varchar2(50),
    BASE_ACCT_NO Varchar2(150),
    ACCT_NAME Varchar2(200),
    SOURCE_MODULE Varchar2(10),
    PROD_TYPE Varchar2(50),
    NEW_BRANCH Varchar2(20) not null,
    OLD_BRANCH Varchar2(20) not null,
    FLAG Varchar2(1)
) tablespace core_data;
comment on table BRANCH_CHANGE_INFO is '机构变更表';
comment on column BRANCH_CHANGE_INFO.CHANGE_SEQ_NO is '找零信息 找零交易序号 ';
comment on column BRANCH_CHANGE_INFO.FILE_NAME is '文件名称 ';
comment on column BRANCH_CHANGE_INFO.BUSI_SORT is '错误业务分类 file-批量文件 prod-按产';
comment on column BRANCH_CHANGE_INFO.TRAN_DATE is '交易日期 ';
comment on column BRANCH_CHANGE_INFO.SEQ_NO is '序号 ';
comment on column BRANCH_CHANGE_INFO.BASE_ACCT_NO is '账号 ';
comment on column BRANCH_CHANGE_INFO.ACCT_NAME is '账户名称，一般指中文账户名称 ';
comment on column BRANCH_CHANGE_INFO.SOURCE_MODULE is '模块 RB:存款 CL:贷款 GL:总账';
comment on column BRANCH_CHANGE_INFO.PROD_TYPE is '产品类型 取值于MB_PROD_TYPE.PROD_TYPE';
comment on column BRANCH_CHANGE_INFO.NEW_BRANCH is '变更后机构 ';
comment on column BRANCH_CHANGE_INFO.OLD_BRANCH is '变更前机构 ';
comment on column BRANCH_CHANGE_INFO.FLAG is '处理标志 Y-已处理 N-未处理';