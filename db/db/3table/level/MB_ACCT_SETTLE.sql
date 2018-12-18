drop table if exists MB_ACCT_SETTLE;
/*==============================================================*/
/* Table: MB_ACCT_SETTLE                                           */
/*==============================================================*/
create table MB_ACCT_SETTLE
(
    INTERNAL_KEY Decimal(15) not null comment '账户标识符',
    SETTLE_NO varchar(50) not null comment '结算编号',
    EVENT_TYPE varchar(50) comment '事件类型  REN-存款约定转存 ARO-存款自动续存 REC-贷款回收  DRW -贷款发放 PRN-定期本金转存 TAK-资金拆入 PLC-资金拆出',
    REF_NO varchar(50) comment '业务编号',
    SETTLE_ACCT_CLASS varchar(3) comment '结算账户分类  PAY-付款账户  REC-收款账户  AUT-自动扣款账户  TPP-第三方账户  WTR-委托存款账户  WTS-委托结算账户  INT  利息入账账户  PRI  本金入账账户  TRA 定期自动转活期账户',
    SETTLE_METHOD varchar(3) comment '结算方式   R 结算户  I 内部户  N 往账  V 来账',
    PAY_REC_IND varchar(3) comment '收付款标志  PAY 付款   REC 收款',
    TRAN_TYPE varchar(10) comment '交易类型',
    AMT_TYPE varchar(10) comment '金额类型   PRI       本金  PF          净金额  INT       正常利息  ODP     罚息  ODI      复利  ODF      透支利息  PDUE    超期利息',
    SETTLE_CLIENT varchar(20) comment '结算客户号',
    SETTLE_BANK_FLAG varchar(1) comment '资金转移账户银行标识 I-行内 O-行外',
    SETTLE_BANK_NAME varchar(50) comment '清算账号开户行行名',
    SETTLE_BRANCH varchar(20) comment '结算分行',
    SETTLE_ACCT_INTERNAL_KEY Decimal(15) comment '结算账户标志符',
    SETTLE_BASE_ACCT_NO varchar(150) comment '账号',
    SETTLE_ACCT_NAME varchar(200) comment '账户户名',
    SETTLE_PROD_TYPE varchar(50) comment '产品类型',
    SETTLE_ACCT_CCY varchar(3) comment '账户币种，对于AIO账户和一本通账户，账户币种为XXX',
    SETTLE_ACCT_SEQ_NO varchar(8) comment '序列号，采用顺序数字，表示在同一账号、账户类型、币种下的不同子账户，比如定期存款序列号',
    SETTLE_CCY varchar(3) comment '结算币种',
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
    PAYEE_BANK_CODE varchar(12) comment '收款行行号',
    PAYEE_BANK_NAME varchar(60) comment '收款行名称',
    FREEZE_TYPE varchar(1) comment '受托人账户冻结方式  B：冻结  P：支付',
    BANK_IN_OUT varchar(1) comment '是否行内行外（Y/N）',
    PROFIT_RATIO varchar(17) comment '分润比例',
    CONTRIBUTIVE_RATIO Decimal(5,2) comment '出资比例',
    IS_SELF_SUPPORT varchar(17) comment '是否自营',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    USER_ID varchar(30) comment '交易柜员 FM_USER.USER_ID',
    LAST_CHANGE_USER_ID varchar(30) comment '上次修改柜员',
    LAST_CHANGE_DATE varchar(8) comment '最后变更日期 ',
    SETTLE_MOBILE_PHONE varchar(20) comment '绑定账户手机号码',
    primary  key (INTERNAL_KEY,SETTLE_NO)
);
alter table MB_ACCT_SETTLE comment '账户结算信息表 undefined';

drop index MB_ACCT_SETTLE_IND1 on MB_ACCT_SETTLE;
/*==============================================================*/
/* Index: MB_ACCT_SETTLE_IND1                                           */
/*==============================================================*/
create index MB_ACCT_SETTLE_IND1 on MB_ACCT_SETTLE (
    SETTLE_ACCT_INTERNAL_KEY,SETTLE_ACCT_CLASS
);