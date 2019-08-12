drop table if exists MB_DEBT_ASSET_LOAN;
/*==============================================================*/
/* Table: MB_DEBT_ASSET_LOAN                                           */
/*==============================================================*/
create table MB_DEBT_ASSET_LOAN
(
    LOAN_NO varchar(150) not null comment '贷款号',
    PROD_TYPE varchar(50) not null comment '产品类型',
    CCY varchar(3) not null comment '币种',
    ACCT_SEQ_NO varchar(8) not null comment '账户序列号',
    PRI_AMT Decimal(17,2) comment '本金金额',
    ONBALANCE_INT_AMT Decimal(17,2) comment '表内应计利息',
    ONBALANCE_INTP_AMT Decimal(17,2) comment '表内应收利息 ',
    ONBALANCE_ODP_AMT Decimal(17,2) comment '表内应计罚息（包含罚息的复利）',
    ONBALANCE_ODPP_AMT varchar(17) comment '表内应收罚息（包含罚息的复利）',
    ONBALANCE_ODI_AMT varchar(17) comment '表内应计复利（包含复利的复利）',
    ONBALANCE_ODIP_AMT varchar(17) comment '表内应收复利（包含复利的复利）',
    OFFBALANCE_INT_AMT varchar(17) comment '表外应计利息',
    OFFBALANCE_INTP_AMT Decimal(17,2) comment '表外应收利息',
    OFFBALANCE_ODP_AMT Decimal(17,2) comment '表外应计罚息（包含罚息的复利）',
    OFFBALANCE_ODPP_AMT Decimal(17,2) comment '表外应收罚息（包含罚息的复利）',
    OFFBALANCE_ODI_AMT Decimal(17,2) comment '表外应计复利（包含复利的复利）',
    OFFBALANCE_ODIP_AMT Decimal(17,2) comment '表外应收复利（包含复利的复利）',
    WRITE_OFF_PRI_AMT Decimal(17,2) comment '核销本金金额',
    WRITE_OFF_INT_AMT Decimal(17,2) comment '核销利息金额（此处的利息金额包含了已核销的所有应计应收利息、罚息、复利金额）',
    TRAN_DATE varchar(8) comment '交易日期',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码',
    primary  key (LOAN_NO,PROD_TYPE,CCY,ACCT_SEQ_NO)
);
alter table MB_DEBT_ASSET_LOAN comment '抵债资产贷款信息表 undefined';