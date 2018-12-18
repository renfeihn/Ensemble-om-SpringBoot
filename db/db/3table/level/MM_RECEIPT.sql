drop table if exists MM_RECEIPT;
/*==============================================================*/
/* Table: MM_RECEIPT                                           */
/*==============================================================*/
create table MM_RECEIPT
(
    RECEIPT_NO varchar(30) not null comment '支还回收号',
    INTERNAL_KEY Decimal(15) not null comment '内部流水号',
    RECEIPT_DATE varchar(8) not null comment '支还日期',
    RECEIPT_TYPE varchar(10) comment '支还类型 ER-提前还款 PO-结清 EW-提前支取 AW-全部支取',
    CLIENT_NO varchar(20) comment '客户号',
    CCY varchar(3) comment '币种',
    LOCAL_XRATE Decimal(15,8) comment '对人民币汇率 ',
    LOCAL_XRATE_ID varchar(1) comment '汇兑方式 ',
    RECEIPT_AMT Decimal(17,2) comment '支还金额',
    TRAN_DATE varchar(8) comment '交易日期',
    REFERENCE varchar(50) comment '交易参考号',
    TRAN_BRANCH varchar(20) comment '交易机构',
    RECEIPT_PRI_AMT Decimal(17,2) comment '支还本金',
    RECEIPT_INT_AMT Decimal(17,2) comment '支还利息',
    NARRATIVE varchar(300) comment '摘要',
    RECEIPT_RATE Decimal(15,8) comment '支还利率',
    APPROVAL_STATUS varchar(1) comment '复核标志',
    APPR_USER_ID varchar(30) comment '复核柜员',
    APPROVAL_DATE varchar(8) comment '复核日期',
    USER_ID varchar(30) comment '录入柜员',
    LAST_CHANGE_DATE varchar(8) comment '最后变更日期 ',
    COMPANY varchar(20) comment '法人代码',
    REVERSAL varchar(1) comment '支还冲正标识',
    REVERSAL_REASON varchar(200) comment '冲正原因',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (RECEIPT_NO)
);
alter table MM_RECEIPT comment '资金拆借支还信息表 undefined';