drop table if exists MB_BATCH_DIS_DETAILS;
/*==============================================================*/
/* Table: MB_BATCH_DIS_DETAILS                                           */
/*==============================================================*/
create table MB_BATCH_DIS_DETAILS
(
    BATCH_NO varchar(50) not null comment '批处理号',
    SEQ_NO varchar(50) not null comment '序号',
    CONTRACT_NO varchar(50) comment '合同号',
    PROD_TYPE varchar(50) comment '产品类型',
    DISC_SUB_TYPE varchar(50) comment '贴现子类型',
    BASE_ACCT_NO varchar(150) comment '账号',
    BRANCH varchar(20) comment '机构代码',
    CLIENT_NO varchar(20) comment '客户号',
    BILL_AMT Decimal(17,2) comment '汇票金额',
    CCY varchar(3) comment '币种',
    INT_RATE Decimal(15,8) comment '支取利率',
    DISCOUNT_DATE varchar(8) comment '贴现日期',
    MATURITY_DATE varchar(8) comment '账户到期日',
    ADD_DAYS varchar(5) comment '补充天数',
    BILL_NO varchar(50) comment '汇票号码',
    SELL_OWN_DRAFT varchar(1) comment '是否本行票据',
    PAY_BRANCH varchar(20) comment '付款行行号',
    DRAFT_MATURE_DATE varchar(8) comment '票面到期日',
    ISSUE_CLIENT_NAME varchar(200) comment '出票人全称',
    ISSUE_ACCT_NO varchar(150) comment '出票人账号',
    ISSUE_DATE varchar(8) comment '出票日期',
    PAYER_NAME varchar(200) comment '收款人名称',
    PAYER_ACCT_NO varchar(150) comment '收款人账号',
    PAYER_BANK varchar(20) comment '收款人开户行',
    DISC_BASE_RATE Decimal(15,8) comment '基准利率',
    DISC_ACCT_NO varchar(50) comment '买方付息账号',
    DRW_ACCT_NO varchar(50) comment '放款账号',
    DRW_ACCT_SEQ_NO varchar(50) comment '放款账号',
    DISCOUNT_AMT Decimal(17,2) comment '贴现金额',
    DISCOUNT_INT Decimal(17,2) comment '贴现利息',
    ERROR_DESC varchar(4000) comment '错误描述',
    TRAN_STATUS varchar(3) comment '交易状态 S:成功 F:失败',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (BATCH_NO,SEQ_NO)
);
alter table MB_BATCH_DIS_DETAILS comment '批量贴现明细表 undefined';