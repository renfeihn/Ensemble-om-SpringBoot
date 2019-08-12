drop table if exists MB_ACCOUNTING_STATUS;
/*==============================================================*/
/* Table: MB_ACCOUNTING_STATUS                                           */
/*==============================================================*/
create table MB_ACCOUNTING_STATUS
(
    ACCOUNTING_STATUS varchar(3) not null comment '核算状态',
    ACCOUNTING_STATUS_DESC varchar(50) comment '核算状态描述',
    AUTO_CHANGE varchar(1) comment '自动变化标志 Y-是N-否 Y时根据期间自动变化',
    CHANGE_TYPE varchar(3) comment '变化类型  PPD-本金逾期 IPD-利息逾期 APD-本息逾期 INA-不活动  ',
    PERIOD varchar(50) comment '期间',
    PERIOD_TYPE varchar(1) comment '期间类型 D 天 M 月 Y 年',
    AVAILABLE varchar(1) comment '是否可交易标识 Y 允许 N 不允许',
    NON_PERFORMING varchar(1) comment '是否涉及利息 Y-是N-否',
    NON_PERFORMING_PRI varchar(1) comment '是否涉及本金 Y-是N-否',
    WRITE_OFF varchar(1) comment '是否核销 Y-是N-否',
    TERMINATE_IND varchar(1) comment '是否终止 Y-是N-否',
    SUSPEND_IND varchar(1) comment '是否久悬',
    GRACE_DAY varchar(1) comment '是否考虑宽限期 Y-是N-否',
    HUNTING_STATUS varchar(1) comment '持续扣款标志 Y-允许 N-不允许',
    COMPANY varchar(20) comment '法人代码',
    ALLOC_SEQ_TYPE varchar(1) comment '自动还款类型 B 大本大息 S 小本小息',
    ALLOC_SEQ_PRI varchar(1) comment '本金顺序 ',
    ALLOC_SEQ_INT varchar(1) comment '利息顺序 ',
    ALLOC_SEQ_ODP varchar(1) comment '罚息顺序 ',
    ALLOC_SEQ_ODI varchar(1) comment '复利顺序 ',
    ALLOC_SEQ_FEE varchar(1) comment '费用顺序 ',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (ACCOUNTING_STATUS)
);
alter table MB_ACCOUNTING_STATUS comment '核算状态变化规则配置 undefined';