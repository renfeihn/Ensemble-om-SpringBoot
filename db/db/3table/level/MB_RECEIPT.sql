drop table if exists MB_RECEIPT;
/*==============================================================*/
/* Table: MB_RECEIPT                                           */
/*==============================================================*/
create table MB_RECEIPT
(
    RECEIPT_NO varchar(30) not null comment '回收号',
    ACCT_INTERNAL_KEY varchar(50) not null comment '主账户KEY即贷款KEY',
    RECEIPT_DATE varchar(8) not null comment '回收日期',
    RECEIPT_TYPE varchar(10) comment '回收类型 NS-正常回收 ER-提前回收 PO-结清 WV-豁免 TR-终止',
    PAYER varchar(20) comment '付款人',
    CCY varchar(3) comment '币种',
    LOCAL_XRATE Decimal(15,8) comment '对人民币汇率 ',
    LOCAL_XRATE_ID varchar(1) comment '汇兑方式 ',
    RECEIPT_AMT Decimal(17,2) comment '回收金额',
    TRAN_DATE varchar(8) comment '交易日期',
    RECEIPT_GEN_CODE varchar(1) comment '回收产生方式',
    REFERENCE varchar(50) comment '交易参考号',
    TRAN_BRANCH varchar(20) comment '交易机构',
    PRE_REPAY_DEAL varchar(1) comment '等额还款计划变更方式 A-变额不变期 T-变期不变额',
    PRE_FEE_AMT Decimal(17,2) comment '提前还款费用金额 ',
    PRE_PRI_AMT Decimal(17,2) comment '提前还款本金金额 ',
    REASON_CODE varchar(6) comment '原因代码',
    NARRATIVE varchar(300) comment '摘要',
    SETTLE varchar(1) comment '结算标志',
    SETTLE_USER_ID varchar(30) comment '结算柜员',
    SETTLE_DATE varchar(8) comment '结算日期',
    APPROVAL_STATUS varchar(1) comment '复核标志',
    APPR_USER_ID varchar(30) comment '复核柜员',
    APPROVAL_DATE varchar(8) comment '复核日期',
    USER_ID varchar(30) comment '录入柜员',
    LAST_CHANGE_DATE varchar(8) comment '最后变更日期 ',
    COMPANY varchar(20) comment '法人代码',
    REVERSAL varchar(1) comment '回收冲正标识',
    REVERSAL_REASON varchar(200) comment '冲正原因',
    SELL_NOT varchar(1) comment '是否卖断式 Y-是N-否',
    EVENT_TYPE varchar(50) comment '事件类型 MB_EVENT_CLASS.EVENT_CLASS',
    TRAN_TYPE varchar(10) comment '交易类型',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    AUTH_USER_ID varchar(30) comment '授权柜员',
    primary  key (RECEIPT_NO)
);
alter table MB_RECEIPT comment '回收表 undefined';