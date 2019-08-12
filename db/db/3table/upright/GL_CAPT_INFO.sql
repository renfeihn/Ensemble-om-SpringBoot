create table GL_CAPT_INFO
(
    SEQ_NO Varchar2(50) not null,
    INTERNAL_KEY number(15) not null,
    CAPT_DATE Varchar2(8) not null,
    INT_POSTED number(17,2),
    INT_POSTED_CTD number(17,2),
    CR_INT_ADJ number(17,2),
    CR_INT_ACCRUED number(17,2),
    DR_INT_ADJ number(17,2),
    DR_INT_ACCRUED number(17,2),
    COMPANY Varchar2(20),
    TRAN_TIME number(11,0),
    TRAN_TIMESTAMP Varchar2(17),
    ROUTER_KEY Varchar2(100),
    constraint PK_GL_CAPT_INFO primary key (SEQ_NO)
) tablespace account_data;
comment on table GL_CAPT_INFO is '总账结息信息表';
comment on column GL_CAPT_INFO.SEQ_NO is '序号 ';
comment on column GL_CAPT_INFO.INTERNAL_KEY is '帐户主键 ';
comment on column GL_CAPT_INFO.CAPT_DATE is '结息日期 ';
comment on column GL_CAPT_INFO.INT_POSTED is '结息利息金额（累计金额） ';
comment on column GL_CAPT_INFO.INT_POSTED_CTD is '结息日利息金额 ';
comment on column GL_CAPT_INFO.CR_INT_ADJ is '贷方累计利息调整 ';
comment on column GL_CAPT_INFO.CR_INT_ACCRUED is '贷方累计计提利息 ';
comment on column GL_CAPT_INFO.DR_INT_ADJ is '借方累计利息调整 ';
comment on column GL_CAPT_INFO.DR_INT_ACCRUED is '借方累计计提利息 ';
comment on column GL_CAPT_INFO.COMPANY is '法人代码 FM_COMPANY.COMPANY';
comment on column GL_CAPT_INFO.TRAN_TIME is '交易时间 ';
comment on column GL_CAPT_INFO.TRAN_TIMESTAMP is '交易时间戳 ';
comment on column GL_CAPT_INFO.ROUTER_KEY is '分库路由关键字 ';