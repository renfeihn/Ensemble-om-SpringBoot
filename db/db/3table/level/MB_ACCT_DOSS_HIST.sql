drop table if exists MB_ACCT_DOSS_HIST;
/*==============================================================*/
/* Table: MB_ACCT_DOSS_HIST                                           */
/*==============================================================*/
create table MB_ACCT_DOSS_HIST
(
    INTERNAL_KEY Decimal(15) not null comment '账户标识符',
    SEQ_NO varchar(50) not null comment '序号',
    BASE_ACCT_NO varchar(150) comment '账号',
    ACCT_SEQ_NO varchar(8) comment '账户序列号，采用顺序数字，表示在同一账号、账户类型、币种下的不同子账户，比如定期存款序列号',
    ACCT_NAME varchar(200) comment '账户名称',
    PROD_TYPE varchar(50) comment '产品类型',
    CCY varchar(3) comment '币种',
    TAX_SC Decimal(17,2) comment '利息税',
    POR_INT_TOT Decimal(17,2) comment '本息合计',
    REMARK varchar(200) comment '备注',
    ACCT_STATUS varchar(3) comment '账户状态',
    AMT_TYPE varchar(10) comment '金额类型',
    BALANCE Decimal(17,2) comment '余额',
    INT_AMT Decimal(17,2) comment '利息金额',
    OPERATE_TYPE varchar(3) comment '操作类型',
    USER_ID varchar(30) comment '操作柜员',
    TRAN_BRANCH varchar(20) comment '交易机构',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_DATE varchar(8) comment '交易日期',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (INTERNAL_KEY,SEQ_NO)
);
alter table MB_ACCT_DOSS_HIST comment '久悬户登记簿历史表 undefined';