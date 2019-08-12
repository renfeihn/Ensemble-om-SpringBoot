drop table if exists DC_STAGE_DEFINE;
/*==============================================================*/
/* Table: DC_STAGE_DEFINE                                           */
/*==============================================================*/
create table DC_STAGE_DEFINE
(
    ISSUE_YEAR varchar(4) comment '发行年度',
    PROD_TYPE varchar(50) comment '产品类型',
    CCY varchar(3) comment '币种',
    STAGE_CODE varchar(50) comment '期次代码',
    STAGE_CODE_DESC varchar(100) comment '期次描述',
    TRAN_DATE varchar(8) comment '交易日期',
    TRAN_BRANCH varchar(20) comment '交易机构',
    TOTAL_LIMIT Decimal(17,2) comment '总放款额度',
    DISTRIBUTE_LIMIT Decimal(17,2) comment '已分配额度',
    HOLDING_LIMIT Decimal(17,2) comment '已占用额度',
    LEAVE_LIMIT Decimal(17,2) comment '剩余额度',
    SALE_TYPE varchar(1) comment '销售方式  ',
    OPTION_METHOD varchar(2) comment '配额类型',
    ISSUE_START_DATE varchar(8) comment '发行起始日期',
    ISSUE_END_DATE varchar(8) comment '发行终止日期',
    INT_CALC_TYPE varchar(50) comment '计息方式 零息：0浮动计息：1固定利率：2',
    RESET_INT_FREQ varchar(2) comment '利率重置频率',
    PAY_INT_TYPE varchar(2) comment '付息方式',
    GET_INT_FREQ varchar(3) comment '取息频率',
    TRANSFER_FLAG varchar(1) comment '转让标识',
    PRE_WITHDRAW_FLAG varchar(1) comment '是否允许提前支取',
    PART_WITHDRAW_NUM varchar(3) comment '部提次数',
    TERM varchar(5) comment '存期',
    TERM_TYPE varchar(1) comment '存期类型',
    BACK_STATUS varchar(1) comment '恢复状态：N:未恢复,S:成功,F:失败',
    ERROR_DESC varchar(4000) comment '失败描述',
    USER_ID varchar(30) comment '操作柜员',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    STAGE_PROD_CLASS varchar(4) comment '期次产品分类',
    STAGE_REMARK varchar(200) comment '期次详细描述',
    STAGE_STATUS varchar(3) comment '期次状态',
    primary  key (STAGE_CODE)
);
alter table DC_STAGE_DEFINE comment '期次定义表 undefined';