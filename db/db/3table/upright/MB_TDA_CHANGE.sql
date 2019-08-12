drop table if exists MB_TDA_CHANGE;
/*==============================================================*/
/* Table: MB_TDA_CHANGE                                           */
/*==============================================================*/
create table MB_TDA_CHANGE
(
    CHANGE_SEQ_NO varchar(50) not null comment '找零信息 找零交易序号',
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    TERM varchar(5) comment '存期',
    TERM_TYPE varchar(1) comment '存期类型 FM_PERIOD_FREQ.DAY_MTH',
    MATURITY_DATE varchar(8) comment '账户到期日',
    NEW_TERM varchar(5) comment '新期限',
    NEW_TERM_TYPE varchar(1) comment '修改后存期类型 FM_PERIOD_FREQ.DAY_MTH',
    NEW_MATURITY_DATE varchar(8) comment '新到期日',
    CHANGE_STATUS varchar(3) comment '变更状态',
    TRAN_DATE varchar(8) comment '交易日期',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    USER_ID varchar(30) comment '交易柜员 FM_USER.USER_ID',
    TRAN_BRANCH varchar(20) comment '交易支行 FM_BRANCH.BRANCH',
    TDA_CHANGE_TYPE varchar(1) comment '变更类型',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (CHANGE_SEQ_NO)
);
alter table MB_TDA_CHANGE comment '存期变更流水表 undefined';