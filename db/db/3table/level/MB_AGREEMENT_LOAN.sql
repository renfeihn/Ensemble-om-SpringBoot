drop table if exists MB_AGREEMENT_LOAN;
/*==============================================================*/
/* Table: MB_AGREEMENT_LOAN                                           */
/*==============================================================*/
create table MB_AGREEMENT_LOAN
(
    AGREEMENT_ID varchar(30) not null comment '协议号',
    INT_RATE Decimal(15,8) comment '原始利率',
    INT_TYPE varchar(3) comment '利率类型',
    COMPANY varchar(20) comment '法人代码',
    ANYTIME_REC varchar(1) comment '随借随还标志',
    ENTRUST_SETTLE_FLAG varchar(2) comment '委托贷款结算标志 01-发放和回收都不自动 02-发放自动、回收不自动 03-发放不自动、回收自动 04-发放回收都自动',
    PRE_REPAY_DEAL varchar(1) comment '等额还款计划变更方式 A-变额不变期 T-变期不变额',
    ORIG_LOAN_AMT Decimal(17,2) comment '合同原始金额',
    GRACE_PERIOD varchar(5) comment '宽限期的天数',
    GRACE_END_MONTH varchar(3) comment '是否宽限到月末',
    PRI_PENALTY varchar(1) comment '是否收取罚息',
    INT_PENALTY varchar(1) comment '是否收取复利',
    OD_PRI_PENALTY varchar(1) comment '是否收取罚息的复利',
    OD_INT_PENALTY varchar(1) comment '是否收取复利的复利',
    SYNC_FINAL_BILLING varchar(1) comment '利随本清标志',
    PRE_PAY_RATE Decimal(15,8) comment '提前还本的补偿金率 ',
    PURPOSE varchar(6) comment '贷款用途 ',
    DD_END_DATE varchar(8) comment '发放截止日期 ',
    PAUSE_INT_IND varchar(1) comment '贷款停息标志 ',
    PRE_RATE_TYPE varchar(3) comment '提前还款费用类型 ',
    UI_PREPAYMENT Decimal(15,8) comment '折扣贷款提前还款罚率 ',
    UI_MIN_AMT Decimal(17,2) comment '折扣贷款提前还款最低罚金 ',
    PR_MIN_AMT Decimal(17,2) comment '提前还款最低补偿金 ',
    AUTO_LOAN_CLASSIFY varchar(1) comment '自动更改状态标记 Y-是 N-否',
    MAX_EXTEND_TIMES varchar(5) comment '最大展期次数',
    OLD_LOAN_NO varchar(150) comment '原贷款号 ',
    SOF_COUNTRY varchar(3) comment '资金来源国家 ',
    SOF_STATE varchar(10) comment '资金来源省 ',
    TF_REF_NO varchar(50) comment '国结参考号 ',
    CLOSE_REASON varchar(200) comment '贷款关闭原因 ',
    TRAN_REF_NO varchar(50) comment '贸易参考号',
    GUARANTY_STYLE varchar(6) comment '担保方式',
    ANALYSIS1 varchar(6) comment '统计标志1 ',
    ANALYSIS2 varchar(6) comment '统计标志2',
    ANALYSIS3 varchar(6) comment '统计标志3',
    CONTRACT_NO varchar(50) comment '合同号',
    CCY varchar(3) comment '币种',
    CREDIT_NO varchar(14) comment '项目号',
    ARR_BANK varchar(20) comment '银团贷款安排行',
    SELL_BANK varchar(20) comment '买入银行',
    RECOURSE_IND varchar(1) comment '追索标记',
    SOLD_IND varchar(1) comment '卖出标记',
    RELATED_LOAN_NO varchar(150) comment '关联贷款号',
    REV_TAX_IND varchar(1) comment '是否预提税标记',
    HUNTING_STATUS varchar(1) comment '持续扣款标志',
    TF_LOAN_TYPE varchar(50) comment 'TF贷款类型',
    MANAGER_BANK varchar(20) comment '银团贷款管理行',
    SSI_END_DATE varchar(8) comment '贴息截止日期',
    DD_INC_IND varchar(1) comment '增量发放标志',
    CALC_TIMES varchar(5) comment '气球贷计算期次',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    INTERNAL_KEY Decimal(15) comment '账户标识符',
    FORCE_GRACE varchar(1) comment '宽限期遇节假日是否顺延 Y:是 N:否',
    GRACE_CHARGE_INT varchar(1) comment '到期本金在宽限期是否收息 Y:是 N:否',
    ALLOC_SEQ_TYPE varchar(1) comment '自动还款类型 B 大本大息 S 小本小息',
    ALLOC_SEQ_PRI varchar(1) comment '本金顺序 ',
    ALLOC_SEQ_INT varchar(1) comment '利息顺序 ',
    ALLOC_SEQ_ODP varchar(1) comment '罚息顺序 ',
    ALLOC_SEQ_ODI varchar(1) comment '复利顺序 ',
    ALLOC_SEQ_FEE varchar(1) comment '费用顺序 ',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (AGREEMENT_ID)
);
alter table MB_AGREEMENT_LOAN comment '贷款签约表 undefined';

drop index MB_AGREEMENT_LOAN_IND1 on MB_AGREEMENT_LOAN;
/*==============================================================*/
/* Index: MB_AGREEMENT_LOAN_IND1                                           */
/*==============================================================*/
create index MB_AGREEMENT_LOAN_IND1 on MB_AGREEMENT_LOAN (
    CONTRACT_NO
);

drop index MB_AGREEMENT_LOAN_IND2 on MB_AGREEMENT_LOAN;
/*==============================================================*/
/* Index: MB_AGREEMENT_LOAN_IND2                                           */
/*==============================================================*/
create unique index MB_AGREEMENT_LOAN_IND2 on MB_AGREEMENT_LOAN (
    INTERNAL_KEY
);