drop table if exists MM_ACCT_SETTLE;
/*==============================================================*/
/* Table: MM_ACCT_SETTLE                                           */
/*==============================================================*/
create table MM_ACCT_SETTLE
(
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    SETTLE_NO varchar(50) not null comment '结算编号',
    EVENT_TYPE varchar(50) comment '事件类型 MB_EVENT_CLASS.EVENT_CLASS',
    REF_NO varchar(50) comment '业务编号',
    SETTLE_ACCT_CLASS varchar(3) comment '结算账户分类   FM_REF_CODE.DOMAIN-SETTLE_ACCT_CLASS',
    SETTLE_METHOD varchar(3) comment '结算方式   ',
    PAY_REC_IND varchar(3) comment '收付款方向，可以配置ALL PAY:付款 REC:收款 ',
    TRAN_TYPE varchar(10) comment '交易类型',
    AMT_TYPE varchar(10) comment '金额类型',
    SETTLE_CLIENT varchar(20) comment '结算客户号',
    SETTLE_BANK_FLAG varchar(1) comment '资金转移账户银行标识 ',
    SETTLE_BANK_NAME varchar(50) comment '清算账号开户行行名',
    SETTLE_BRANCH varchar(20) comment '清算机构 FM_BRANCH.BRANCH',
    SETTLE_ACCT_INTERNAL_KEY Decimal(15) comment '结算账户标志符',
    SETTLE_BASE_ACCT_NO varchar(150) comment '账号',
    SETTLE_ACCT_NAME varchar(200) comment '账户户名',
    SETTLE_PROD_TYPE varchar(50) comment '结算账户产品类型  MB_PROD_TYPE.PROD_TYPE',
    SETTLE_ACCT_CCY varchar(3) comment '账户币种，对于AIO账户和一本通账户，账户币种为XXX  FM_CURRENCY.CCY',
    SETTLE_ACCT_SEQ_NO varchar(8) comment '序列号，采用顺序数字，表示在同一账号、账户类型、币种下的不同子账户，比如定期存款序列号',
    SETTLE_CCY varchar(3) comment '清算账号币种 FM_CURRENCY.CCY',
    SETTLE_AMT Decimal(17,2) comment '结算金额 ',
    SETTLE_XRATE Decimal(15,8) comment '结算汇率 ',
    SETTLE_XRATE_ID varchar(1) comment '汇兑方式 ',
    PRIORITY varchar(5) comment '优先级',
    SETTLE_WEIGHT Decimal(5,2) comment '结算权重',
    AUTO_BLOCKING varchar(1) comment '自动锁定标志',
    TRUSTED_PAY_NO varchar(50) comment '受托支付编号',
    RESTRAINT_SEQ_NO varchar(50) comment '冻结编号',
    DAC_VALUE varchar(32) comment 'DAC值  防篡改加密',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    PROFIT_RATIO varchar(17) comment '分润比例',
    CONTRIBUTIVE_RATIO Decimal(5,2) comment '出资比例',
    IS_SELF_SUPPORT varchar(17) comment '是否自营',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字'
);