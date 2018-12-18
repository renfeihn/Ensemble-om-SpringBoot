drop table if exists MB_TRAN_DEF;
/*==============================================================*/
/* Table: MB_TRAN_DEF                                           */
/*==============================================================*/
create table MB_TRAN_DEF
(
    TRAN_TYPE varchar(10) not null comment '交易类型',
    TRAN_TYPE_DESC varchar(50) comment '交易类型描述',
    TRAN_CLASS varchar(10) comment '交易分类',
    SOURCE_TYPE varchar(10) comment '渠道 FM_CHANNEL.CHANNEL',
    CR_DR_MAINT_IND varchar(1) comment '借贷标志',
    REVERSAL_TRAN_TYPE varchar(10) comment '冲正交易类型 ',
    CASH_TRAN varchar(1) not null comment '现金交易',
    MULTI_RVS_TRAN_TYPE_IND varchar(20) comment '多种冲正方式标志',
    PROGRAM_ID_GROUP varchar(100) comment '交易类型与交易界面对应关系',
    REVERSAL_TRAN_FLAG varchar(1) comment '冲正交易标志',
    BALANCE_FLAG varchar(1) comment '余额标志',
    BAL_TYPE_PRIORITY varchar(2) comment '余额类型次序',
    PRINT_TRAN_DESC varchar(20) comment '凭证打印交易描述',
    IS_CORRECT varchar(1) comment '更正交易 Y:是 N:否',
    OTH_TRAN_TYPE varchar(10) comment '对方交易类型 ',
    RECALC_ACCT_STOP_PAY varchar(1) comment '重新计算余额止付标志 ',
    RECALC_RES_AMT varchar(1) comment '重新计算限制金额标志 ',
    RES_PRIORITY varchar(5) comment '冻结级别(限制级别) ',
    AVAILBAL_CALC_TYPE varchar(10) comment '金额计算类型',
    UPD_TRAILBOX_FLAG varchar(1) comment '尾箱更新标志',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    IS_INIT_PARAM varchar(1) comment '是否出厂参数',
    primary  key (TRAN_TYPE)
);
alter table MB_TRAN_DEF comment '交易类型定义表 undefined';