create table GL_INT_DETAIL
(
    INTERNAL_KEY number(15) not null,
    INT_CLASS Varchar2(20) not null,
    INT_TYPE Varchar2(3) not null,
    CYCLE_PERIOD_FREQ Varchar2(2),
    CYCLE_INT_DAY Varchar2(50),
    NEXT_CYCLE_DATE Varchar2(8),
    LAST_CYCLE_DATE Varchar2(8),
    ACCT_SPREAD_RATE number(15,8),
    ACCT_PERCENT_RATE number(5,2),
    ACCT_FIXED_RATE number(15,8),
    INT_ACCRUED_CTD number(17,2),
    INT_ACCRUED number(17,2),
    INT_ACCRUED_DIFF number(15,10),
    INT_ACCRUED_CALC_CTD number(25,10),
    INT_POSTED_CTD number(17,2),
    INT_POSTED number(17,2),
    INT_ADJ_CTD number(17,2),
    INT_ADJ number(17,2),
    NEXT_ACCR_DATE Varchar2(8),
    LAST_ACCR_DATE Varchar2(8),
    LAST_CHANGE_DATE Varchar2(8),
    LAST_CHANGE_OFFICER Varchar2(90),
    ACTUAL_RATE number(15,8),
    FLOAT_RATE number(15,8),
    REAL_RATE number(15,8),
    COMPANY Varchar2(20),
    TRAN_TIME number(11,0),
    TRAN_TIMESTAMP Varchar2(17),
    ROUTER_KEY Varchar2(100),
    constraint PK_GL_INT_DETAIL primary key (INTERNAL_KEY,INT_CLASS)
) tablespace account_data;
comment on table GL_INT_DETAIL is '总账利息信息表';
comment on column GL_INT_DETAIL.INTERNAL_KEY is '帐户主键 ';
comment on column GL_INT_DETAIL.INT_CLASS is '利息分类 IRL_INT_ROLL.INT_CLASS INT:正常利息,ODP:罚息,ODI:复利,ODODP:罚息的复利,ODODI:复利的复利,ODF:透支利息,PDUE:超期利息  ';
comment on column GL_INT_DETAIL.INT_TYPE is '利率类型 IRL_INT_TYPE.INT_TAX_TYPE ';
comment on column GL_INT_DETAIL.CYCLE_PERIOD_FREQ is '结息周期  FM_PERIOD_FREQ.PERIOD_FREQ ';
comment on column GL_INT_DETAIL.CYCLE_INT_DAY is '结息日 ';
comment on column GL_INT_DETAIL.NEXT_CYCLE_DATE is '下一结息日 ';
comment on column GL_INT_DETAIL.LAST_CYCLE_DATE is '上一结息日 ';
comment on column GL_INT_DETAIL.ACCT_SPREAD_RATE is '分户级浮动百分点 ';
comment on column GL_INT_DETAIL.ACCT_PERCENT_RATE is '分户浮动百分比 ';
comment on column GL_INT_DETAIL.ACCT_FIXED_RATE is '分户级固定利率 ';
comment on column GL_INT_DETAIL.INT_ACCRUED_CTD is '计提日计提利息 ';
comment on column GL_INT_DETAIL.INT_ACCRUED is '累计计提利息（结息周期内累计计提金额） ';
comment on column GL_INT_DETAIL.INT_ACCRUED_DIFF is '计提金额差额 ';
comment on column GL_INT_DETAIL.INT_ACCRUED_CALC_CTD is '计提日计提原金额（实际计算金额） ';
comment on column GL_INT_DETAIL.INT_POSTED_CTD is '结息日利息金额 ';
comment on column GL_INT_DETAIL.INT_POSTED is '结息利息金额（累计金额） ';
comment on column GL_INT_DETAIL.INT_ADJ_CTD is '计提日利息调整 ';
comment on column GL_INT_DETAIL.INT_ADJ is '利息调整(累计) ';
comment on column GL_INT_DETAIL.NEXT_ACCR_DATE is '下一计提日期 ';
comment on column GL_INT_DETAIL.LAST_ACCR_DATE is '上一计提日期 ';
comment on column GL_INT_DETAIL.LAST_CHANGE_DATE is '最后变更日期  ';
comment on column GL_INT_DETAIL.LAST_CHANGE_OFFICER is '上一个改变者 ';
comment on column GL_INT_DETAIL.ACTUAL_RATE is '行内利率 ';
comment on column GL_INT_DETAIL.FLOAT_RATE is '浮动利率 ';
comment on column GL_INT_DETAIL.REAL_RATE is '执行利率 ';
comment on column GL_INT_DETAIL.COMPANY is '法人代码 FM_COMPANY.COMPANY';
comment on column GL_INT_DETAIL.TRAN_TIME is '交易时间 ';
comment on column GL_INT_DETAIL.TRAN_TIMESTAMP is '交易时间戳 ';
comment on column GL_INT_DETAIL.ROUTER_KEY is '分库路由关键字 ';