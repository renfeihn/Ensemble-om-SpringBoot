drop table if exists MB_INT_TAX_HIST;
/*==============================================================*/
/* Table: MB_INT_TAX_HIST                                           */
/*==============================================================*/
create table MB_INT_TAX_HIST
(
    TAX_SEQ_NO varchar(50) comment '利息税序号',
    TRAN_SEQ_NO varchar(50) comment '费用交易序号',
    INTERNAL_KEY Decimal(15) comment '帐户主键',
    BASE_ACCT_NO varchar(150) comment '账号',
    PROD_TYPE varchar(50) comment '产品类型',
    CCY varchar(3) comment '币种',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    CLIENT_NO varchar(20) comment '客户号',
    CLIENT_TYPE varchar(3) comment '客户类型',
    PAY_INTEREST Decimal(17,2) comment '应付利息',
    TAX_AMT Decimal(17,2) comment '税金',
    TAX_CCY varchar(3) comment '利息税币种',
    TAX_TYPE varchar(3) comment '税率类型  IRL_INT_TYPE.INT_TAX_TYPE',
    TAX_RATE Decimal(15,8) comment '税率',
    TRAN_TYPE varchar(10) comment '交易类型',
    EVENT_TYPE varchar(50) comment '事件类型 MB_EVENT_CLASS.EVENT_CLASS',
    CR_DR_MAINT_IND varchar(1) comment '借贷标志  C:贷 D：借',
    BO_IND varchar(1) comment '日终/联机标志',
    TRAN_BRANCH varchar(20) comment '交易支行 FM_BRANCH.BRANCH',
    BANK_SEQ_NO varchar(50) comment '银行交易序号',
    REFERENCE varchar(50) comment '交易参考号',
    SOURCE_MODULE varchar(10) comment '模块',
    PROFIT_CENTRE varchar(12) comment '利润中心 FM_PROFIT_CENTRE.PROFIT_CENTRE',
    USER_ID varchar(30) comment '交易柜员 FM_USER.USER_ID',
    CHANNEL_SEQ_NO varchar(50) comment '渠道流水号',
    TRAN_DATE varchar(8) comment '交易日期',
    SOURCE_TYPE varchar(10) comment '渠道 FM_CHANNEL.CHANNEL',
    REVERSAL varchar(1) comment '冲正标志 Y:是 N:否',
    REVERSAL_DATE varchar(8) comment '冲正日期',
    REVERSAL_BRANCH varchar(20) comment '冲正机构',
    REVERSAL_USER_ID varchar(30) comment '冲正柜员',
    REVERSAL_AUTH_USER_ID varchar(30) comment '冲正授权柜员',
    REVERSAL_TAX_SEQ_NO varchar(50) comment '冲正序号',
    GL_POSTED varchar(1) comment '过账标志 Y:是 N:否',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (TAX_SEQ_NO)
);
alter table MB_INT_TAX_HIST comment '利息税流水表 undefined';