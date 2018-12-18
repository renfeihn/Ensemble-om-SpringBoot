create table GL_CCY_RULE
(
    EVENT_TYPE Varchar2(50) not null,
    SELL_CCY Varchar2(3) not null,
    BUY_CCY Varchar2(3) not null,
    ACCOUNTING_NO Varchar2(30) not null,
    TRAN_TIME number(11,0),
    TRAN_TIMESTAMP Varchar2(17),
    constraint PK_GL_CCY_RULE primary key (EVENT_TYPE,SELL_CCY,BUY_CCY)
) tablespace account_data;
comment on table GL_CCY_RULE is '币种规则表';
comment on column GL_CCY_RULE.EVENT_TYPE is '事件类型 MB_EVENT_TYPE.EVENT_TYPE';
comment on column GL_CCY_RULE.SELL_CCY is '卖出币种 FM_CURRENCY.CCY';
comment on column GL_CCY_RULE.BUY_CCY is '买入币种 FM_CURRENCY.CCY';
comment on column GL_CCY_RULE.ACCOUNTING_NO is '会计分录编号 ';
comment on column GL_CCY_RULE.TRAN_TIME is '交易时间 ';
comment on column GL_CCY_RULE.TRAN_TIMESTAMP is '交易时间戳 ';