drop table if exists MB_ORDER_BOND_RECEIPT;
/*==============================================================*/
/* Table: MB_ORDER_BOND_RECEIPT                                           */
/*==============================================================*/
create table MB_ORDER_BOND_RECEIPT
(
    ORDER_SEQ_NO varchar(50) not null comment '预约顺序号',
    RECEIPT_TYPE varchar(10) comment '还款类型 NS:正常回收 ER:部分提前还款 PO:结清 ',
    REASON_CODE varchar(6) comment '还款原因',
    EFFECT_DATE varchar(8) comment '生效日期',
    MATURITY_DATE varchar(8) comment '签约到期日期',
    BOND_ACCT_NO varchar(150) comment '保证金账号',
    BOND_ACCT_SEQ_NO varchar(8) comment '保证金账户序列号',
    BOND_ACCT_CCY varchar(3) comment '保证金账户币种',
    BOND_PROD_TYPE varchar(50) comment '保证金账户产品类型',
    CH_CLIENT_NAME varchar(200) comment '账户中文名称',
    CLIENT_NAME varchar(200) comment '账户英文名称',
    RETAIN_AMOUNT Decimal(17,2) comment '账户留存金额',
    DEDUCTION_AMOUNT Decimal(17,2) comment '最低抵扣金额',
    SYNC_FINAL_BILLING varchar(1) comment '利随本清标志 Y:是 N:否',
    PRE_REPAY_DEAL varchar(1) comment '还款计划变更方式 A:变额不变期 T:变期不变额',
    PRE_INT_DEAL varchar(1) comment '利息处理方式',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (ORDER_SEQ_NO)
);
alter table MB_ORDER_BOND_RECEIPT comment '保证金还款预约明细表 undefined';