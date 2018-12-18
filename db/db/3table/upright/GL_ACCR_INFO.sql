create table GL_ACCR_INFO
(
    SEQ_NO Varchar2(50) not null,
    INTERNAL_KEY number(15) not null,
    ACCR_DATE Varchar2(8) not null,
    INT_CLASS Varchar2(20) not null,
    INT_TYPE Varchar2(3) not null,
    ACTUAL_RATE number(15,8),
    FLOAT_RATE number(15,8),
    REAL_RATE number(15,8),
    INT_AMT number(17,2),
    INT_ACCRUED number(17,2),
    INT_ACCRUED_CTD number(17,2) not null,
    INT_ACCRUED_DIFF number(15,10),
    INT_ACCRUED_CALC_CTD number(25,10),
    COMPANY Varchar2(20),
    TRAN_TIME number(11,0),
    TRAN_TIMESTAMP Varchar2(17),
    ROUTER_KEY Varchar2(100),
    constraint PK_GL_ACCR_INFO primary key (SEQ_NO,ACCR_DATE,INT_CLASS,INT_ACCRUED_CTD)
) tablespace account_data;
comment on table GL_ACCR_INFO is '总账计提信息表';
comment on column GL_ACCR_INFO.SEQ_NO is '序号 ';
comment on column GL_ACCR_INFO.INTERNAL_KEY is '帐户主键 ';
comment on column GL_ACCR_INFO.ACCR_DATE is '计提日期 ';
comment on column GL_ACCR_INFO.INT_CLASS is '利息分类 IRL_INT_ROLL.INT_CLASS INT:正常利息,ODP:罚息,ODI:复利,ODODP:罚息的复利,ODODI:复利的复利,ODF:透支利息,PDUE:超期利息  ';
comment on column GL_ACCR_INFO.INT_TYPE is '利率类型 IRL_INT_TYPE.INT_TAX_TYPE ';
comment on column GL_ACCR_INFO.ACTUAL_RATE is '行内利率 ';
comment on column GL_ACCR_INFO.FLOAT_RATE is '浮动利率 ';
comment on column GL_ACCR_INFO.REAL_RATE is '执行利率 ';
comment on column GL_ACCR_INFO.INT_AMT is '利息金额 ';
comment on column GL_ACCR_INFO.INT_ACCRUED is '累计计提利息（结息周期内累计计提金额） ';
comment on column GL_ACCR_INFO.INT_ACCRUED_CTD is '计提日计提利息 ';
comment on column GL_ACCR_INFO.INT_ACCRUED_DIFF is '计提金额差额 ';
comment on column GL_ACCR_INFO.INT_ACCRUED_CALC_CTD is '计提日计提原金额（实际计算金额） ';
comment on column GL_ACCR_INFO.COMPANY is '法人代码 FM_COMPANY.COMPANY';
comment on column GL_ACCR_INFO.TRAN_TIME is '交易时间 ';
comment on column GL_ACCR_INFO.TRAN_TIMESTAMP is '交易时间戳 ';
comment on column GL_ACCR_INFO.ROUTER_KEY is '分库路由关键字 ';