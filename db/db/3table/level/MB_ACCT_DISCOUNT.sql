drop table if exists MB_ACCT_DISCOUNT;
/*==============================================================*/
/* Table: MB_ACCT_DISCOUNT                                           */
/*==============================================================*/
create table MB_ACCT_DISCOUNT
(
    INTERNAL_KEY Decimal(15) not null comment '发放internal_key值',
    BILL_NO varchar(50) not null comment '汇票号码',
    PAY_BRANCH varchar(20) comment '付款行行号',
    PAY_BRANCH_NAME varchar(50) comment '付款行全称',
    DRAFT_MATURE_DATE varchar(8) comment '票面到期日',
    ISSUE_CLIENT_NAME varchar(200) comment '出票人全称',
    ISSUE_ACCT_NO varchar(150) comment '出票人账号',
    ISSUE_DATE varchar(8) comment '出票日期',
    PAYER_NAME varchar(200) comment '收款人名称',
    PAYER_ACCT_NO varchar(150) comment '收款人账号',
    PAYER_BANK varchar(20) comment '收款人开户行',
    DISC_BASE_RATE Decimal(15,8) comment '基准利率',
    DISC_STATUS varchar(3) comment '票据状态标志 A-有效 M-到期',
    LAST_CHANGE_DATE varchar(8) comment '上次修改日期',
    ADD_DAYS varchar(5) comment '补充天数',
    TRAN_BRANCH varchar(20) comment '发起支行',
    DISCOUNT_DATE varchar(8) comment '贴现日期',
    BILL_AMT Decimal(17,2) comment '汇票金额',
    INT_RATE Decimal(15,8) comment '贴现利率',
    BOOK_BRANCH varchar(20) comment '贷款银行',
    CLIENT_NO varchar(20) comment '申请人客户号',
    CLIENT_NAME varchar(200) comment '申请人客户名称',
    BASE_ACCT_NO varchar(150) comment '贷款号',
    CCY varchar(3) comment '币种',
    SELL_NOT varchar(1) comment '是否卖断式 Y-是N-否',
    SELL_INT Decimal(17,2) comment '利息支出',
    SELL_OWN_DRAFT varchar(1) comment '是否本行票据 Y-是N-否',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码',
    primary  key (INTERNAL_KEY)
);
alter table MB_ACCT_DISCOUNT comment '票据贴现信息表  undefined';