create table GL_TRAN_HIST1
(
    SEQ_NO Varchar2(50),
    REFERENCE Varchar2(50),
    TRAN_BRANCH Varchar2(20),
    EFFECT_DATE Varchar2(8),
    TRAN_CCY Varchar2(3),
    SOURCE_MODULE Varchar2(10),
    SOURCE_TYPE Varchar2(10),
    BUSINESS_UNIT Varchar2(10),
    AMT_TYPE Varchar2(10),
    AMOUNT number(17,2),
    PROD_TYPE Varchar2(50),
    BASE_ACCT_NO Varchar2(150),
    BRANCH Varchar2(20),
    ACCOUNTING_STATUS Varchar2(3),
    PROFIT_CENTRE Varchar2(12),
    CCY Varchar2(3),
    CLIENT_TYPE Varchar2(3),
    CLIENT_NO Varchar2(20),
    SYSTEM_ID Varchar2(20),
    REVERSAL Varchar2(1),
    NARRATIVE Varchar2(300),
    PRIAMT number(17,2),
    INTAMT number(17,2),
    ODPAMT number(17,2),
    ODIAMT number(17,2),
    TRAN_PROFIT_CENTRE Varchar2(12),
    EVENT_TYPE Varchar2(50),
    TRAN_TYPE Varchar2(10),
    TRAN_DATE Varchar2(8),
    BANK_SEQ_NO Varchar2(50),
    SUBJECT_CODE Varchar2(20),
    CHANNEL_DATE Varchar2(8),
    TAXAMT number(17,2),
    DATA_FLAG Varchar2(5),
    POST_FLAG Varchar2(1),
    TRAN_TIME number(11,0),
    TRAN_TIMESTAMP Varchar2(17),
    ROUTER_KEY Varchar2(100),
    CHANNEL_SEQ_NO Varchar2(50),
    REVERSAL_SEQ_NO Varchar2(50),
    REVERSAL_DATE Varchar2(8)
) tablespace account_data;
comment on table GL_TRAN_HIST1 is '会计分录流水备份表';
comment on column GL_TRAN_HIST1.SEQ_NO is '序号 ';
comment on column GL_TRAN_HIST1.REFERENCE is '交易流水号 计提:INPUT_DATE|| PROD_TYPE,结息:RUN_DATE||INTERNAL_KEY|| PROD_TYPE  ';
comment on column GL_TRAN_HIST1.TRAN_BRANCH is '交易机构 ';
comment on column GL_TRAN_HIST1.EFFECT_DATE is '生效日期 ';
comment on column GL_TRAN_HIST1.TRAN_CCY is '交易币种 ';
comment on column GL_TRAN_HIST1.SOURCE_MODULE is '源模块 RB:存款 CL:贷款 GL:总账';
comment on column GL_TRAN_HIST1.SOURCE_TYPE is '渠道类型 ';
comment on column GL_TRAN_HIST1.BUSINESS_UNIT is '核算单元 ';
comment on column GL_TRAN_HIST1.AMT_TYPE is '金额类型 MB_ATTR_VALUE.AMT_TYPE';
comment on column GL_TRAN_HIST1.AMOUNT is '交易金额 ';
comment on column GL_TRAN_HIST1.PROD_TYPE is '产品类型 取值于MB_PROD_TYPE.PROD_TYPE';
comment on column GL_TRAN_HIST1.BASE_ACCT_NO is '账号 ';
comment on column GL_TRAN_HIST1.BRANCH is '开户机构 FM_BRANCH.BRANCH';
comment on column GL_TRAN_HIST1.ACCOUNTING_STATUS is '核算状态 MB_ACCOUNTING_STATUS.ACCOUNTING_STATUS';
comment on column GL_TRAN_HIST1.PROFIT_CENTRE is '利润中心 取值FM_PROFIT_CENTRE_TBL.PROFIT_CENTRE';
comment on column GL_TRAN_HIST1.CCY is '币种 FM_CURRENCY.CCY';
comment on column GL_TRAN_HIST1.CLIENT_TYPE is '客户类型 CIF_CLIENT_TYPE.CLIENT_TYPE';
comment on column GL_TRAN_HIST1.CLIENT_NO is '客户号 CIF_CLIENT.CLIENT_NO,如果成功记录生成的客户号  CIF_CLIENT.CLIENT_NO';
comment on column GL_TRAN_HIST1.SYSTEM_ID is '系统ID ';
comment on column GL_TRAN_HIST1.REVERSAL is '冲正标志 Y:已冲正,N:未冲正';
comment on column GL_TRAN_HIST1.NARRATIVE is '描述 ';
comment on column GL_TRAN_HIST1.PRIAMT is '本金金额 ';
comment on column GL_TRAN_HIST1.INTAMT is '利息金额 ';
comment on column GL_TRAN_HIST1.ODPAMT is '罚息金额 ';
comment on column GL_TRAN_HIST1.ODIAMT is '复利金额 ';
comment on column GL_TRAN_HIST1.TRAN_PROFIT_CENTRE is '利润中心 ';
comment on column GL_TRAN_HIST1.EVENT_TYPE is '事件类型 ';
comment on column GL_TRAN_HIST1.TRAN_TYPE is '交易类型 ';
comment on column GL_TRAN_HIST1.TRAN_DATE is '交易日期 ';
comment on column GL_TRAN_HIST1.BANK_SEQ_NO is '银行账务序号 ';
comment on column GL_TRAN_HIST1.SUBJECT_CODE is '科目代码 ';
comment on column GL_TRAN_HIST1.CHANNEL_DATE is '渠道日期 ';
comment on column GL_TRAN_HIST1.TAXAMT is '税额 ';
comment on column GL_TRAN_HIST1.DATA_FLAG is '数据来源 ';
comment on column GL_TRAN_HIST1.POST_FLAG is '是否生成分录 ';
comment on column GL_TRAN_HIST1.TRAN_TIME is '交易时间 ';
comment on column GL_TRAN_HIST1.TRAN_TIMESTAMP is '交易时间戳 ';
comment on column GL_TRAN_HIST1.ROUTER_KEY is '分库路由关键字 ';
comment on column GL_TRAN_HIST1.CHANNEL_SEQ_NO is '渠道流水号 ';
comment on column GL_TRAN_HIST1.REVERSAL_SEQ_NO is '冲正流水号 ';
comment on column GL_TRAN_HIST1.REVERSAL_DATE is '冲正日期 ';