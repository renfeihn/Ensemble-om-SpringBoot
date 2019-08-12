drop table if exists MB_BATCH_CHARGE;
/*==============================================================*/
/* Table: MB_BATCH_CHARGE                                           */
/*==============================================================*/
create table MB_BATCH_CHARGE
(
    BATCH_SEQ_NO varchar(50) not null comment '批次序号',
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    BASE_ACCT_NO varchar(150) not null comment '账号',
    PROD_TYPE varchar(50) not null comment '产品类型',
    ACCT_CCY varchar(3) not null comment '账户币种，',
    ACCT_SEQ_NO varchar(8) not null comment '账户序列号',
    CLIENT_NO varchar(20) not null comment '客户号',
    CLIENT_TYPE varchar(3) not null comment '客户类型',
    CHARGE_PERIOD_FREQ varchar(2) not null comment '收取频率',
    CHARGE_DAY varchar(2) comment '收费日',
    NEXT_CHARGE_DATE varchar(8) not null comment '下一收费日期',
    FEE_TYPE varchar(8) not null comment '费用类型 ',
    FEE_CCY varchar(3) comment '收费币种  ',
    ORIG_FEE_AMT Decimal(17,2) comment '原始费用金额,即折扣前的费用金额',
    DISC_FEE_AMT Decimal(17,2) comment '折扣金额',
    FEE_AMT Decimal(17,2) comment '手续费金额',
    DISC_TYPE varchar(30) comment '折扣类型',
    DISC_RATE Decimal(15,8) comment '折扣率',
    BO_IND varchar(1) comment '日终/联机标志',
    TAX_TYPE varchar(3) comment '税率类型  ',
    TAX_RATE Decimal(15,8) comment '税率',
    TAX_AMT Decimal(17,2) comment '税金',
    REFERENCE varchar(50) comment '交易参考号',
    CHANNEL_SEQ_NO varchar(50) comment '渠道流水号',
    TRAN_DATE varchar(8) comment '交易日期',
    TRAN_BRANCH varchar(20) comment '交易机构',
    USER_ID varchar(30) comment '交易柜员',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    PROFIT_ALLOT_FLAG varchar(1) default 'N' comment '是否需要分润',
    OPEN_BRANCH_PERCENT Decimal(15,8) comment '账户行比例,记录百分数',
    TRAN_BRANCH_PERCENT Decimal(15,8) comment '交易行比例,记录百分数',
    OPEN_PROFIT_AMT Decimal(17,2) comment '账户行分润金额',
    TRAN_PROFIT_AMT Decimal(17,2) comment '交易行分润金额',
    OPEN_ACCT_BRANCH varchar(20) comment '账户行',
    primary  key (BATCH_SEQ_NO)
);
alter table MB_BATCH_CHARGE comment '批量费用登记表 undefined';