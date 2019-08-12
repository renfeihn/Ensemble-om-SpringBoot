drop table if exists MB_AGREEMENT_SWEEP_HIST;
/*==============================================================*/
/* Table: MB_AGREEMENT_SWEEP_HIST                                           */
/*==============================================================*/
create table MB_AGREEMENT_SWEEP_HIST
(
    AGREEMENT_ID varchar(30) not null comment '协议编号',
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    SCHED_NO varchar(30) not null comment '计划编号',
    RENEW_REG_SEQ_NO varchar(50) not null comment '约定转存协议号。序列号，采用顺序数字',
    RENEW_TYPE varchar(4) not null comment '转存类型',
    TRAN_AMT Decimal(17,2) comment '交易金额',
    MIN_AMT Decimal(17,2) comment '最低转存金额',
    RENEW_METHOD varchar(1) comment '定期的转存方式',
    OTH_ACCT_SORT varchar(3) not null comment '转入方账户类型',
    OTH_INTERNAL_KEY Decimal(15) comment '转账时对方账户标识符',
    OTH_BASE_ACCT_NO varchar(150) comment '对方帐号/卡号',
    OTH_PROD_TYPE varchar(50) comment '第三方产品类型',
    OTH_ACCT_CCY varchar(3) comment '对方账户币种 ',
    OTH_ACCT_SEQ_NO varchar(8) comment '对方账户序列号',
    OTH_BANK_CODE varchar(20) comment '其他行代码',
    OTH_ACCT_DESC varchar(150) comment '对方账户名称',
    REASON_CODE varchar(6) comment '账户用途',
    PRIORITY varchar(5) comment '优先级',
    SIGN_DATE varchar(8) comment '登记时间',
    USER_ID varchar(30) comment '交易柜员',
    STATUS varchar(3) comment '状态',
    TERM varchar(5) comment '存期',
    TERM_TYPE varchar(1) comment '存期类型 ',
    ACCT_FIXED_RATE Decimal(15,8) comment '分户级固定利率',
    ACCT_SPREAD_RATE Decimal(15,8) comment '分户级浮动百分点',
    ACCT_PERCENT_RATE Decimal(5,2) comment '分户浮动百分比',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    SEQ_NO varchar(50) not null comment '序号',
    SCHEDULE_STATUS varchar(1) comment '计划执行状态',
    DEAL_DATE varchar(8) comment '处理日期',
    TRAN_CCY varchar(3) comment '交易币种',
    BAL_RATIO Decimal(5,2) comment '余额比例',
    RENEW_MULTIPLE varchar(5) comment '转账倍数',
    primary  key (AGREEMENT_ID,SEQ_NO)
);
alter table MB_AGREEMENT_SWEEP_HIST comment '账户约定转账流水表 undefined';