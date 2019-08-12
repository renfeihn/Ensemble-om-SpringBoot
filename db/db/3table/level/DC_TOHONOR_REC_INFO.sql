drop table if exists DC_TOHONOR_REC_INFO;
/*==============================================================*/
/* Table: DC_TOHONOR_REC_INFO                                           */
/*==============================================================*/
create table DC_TOHONOR_REC_INFO
(
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    BASE_ACCT_NO varchar(150) comment '账号',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    PROD_TYPE varchar(50) comment '产品类型',
    CCY varchar(3) comment '币种',
    STAGE_CODE varchar(50) comment '期次代码',
    ACCT_NAME varchar(200) comment '账户名称，一般指中文账户名称',
    BRANCH varchar(20) comment '开户机构',
    ACCT_OPEN_DATE varchar(8) comment '账户开户日期',
    MATURITY_DATE varchar(8) comment '账户到期日',
    PRI_AMT Decimal(17,2) comment '本金金额',
    YEAR_RATE Decimal(15,8) comment '年利率',
    INT_AMT Decimal(17,2) comment '利息金额',
    TRAN_DATE varchar(8) comment '交易日期',
    TOHONOR_RESULT varchar(5) comment '兑付/赎回结果',
    FAIL_REASON varchar(200) comment '失败原因',
    PRIINT_INTERNAL_KEY Decimal(15) comment '本息入账账户标识符',
    PRIINT_BASE_ACCT_NO varchar(150) comment '本息入账账号',
    PRIINT_ACCT_SEQ_NO varchar(8) comment '本息入账账户序列号',
    PRIINT_PROD_TYPE varchar(50) comment '本息入账账户产品类型',
    PRIINT_CCY varchar(3) comment '本息入账账户币种',
    BATCH_ONLINE varchar(1) comment '批处理或在线更新',
    DEAL_TYPE varchar(5) comment '处理类型',
    TOHONOR_REC_AMT Decimal(17,2) comment '兑付赎回金额',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    PRIINT_ACCT_NAME  varchar(200) comment '利息入账账户名称',
    STAGE_PROD_CLASS varchar(4) comment '期次产品分类'
);
alter table DC_TOHONOR_REC_INFO comment '到期自动兑付/赎回登记表 undefined';