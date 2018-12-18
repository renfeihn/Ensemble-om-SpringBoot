drop table if exists MB_UPD_BALANCE_TRAN;
/*==============================================================*/
/* Table: MB_UPD_BALANCE_TRAN                                           */
/*==============================================================*/
create table MB_UPD_BALANCE_TRAN
(
    SEQ_NO varchar(50) not null comment '交易序号',
    INTERNAL_KEY Decimal(15) comment '账户标识符',
    TRAN_DATE varchar(8) comment '交易日期',
    TRAN_TYPE varchar(10) comment '交易类型',
    EVENT_TYPE varchar(50) comment '事件类型',
    CR_DR_MAINT_IND varchar(1) comment '借贷标志',
    TRAN_AMT Decimal(17,2) comment '交易金额',
    BAL_CALC_FLAG varchar(1) comment '金额处理标志  Y-已经处理，更新至余额  N-未处理，未更新至余额',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (SEQ_NO)
);
alter table MB_UPD_BALANCE_TRAN comment '批量更新余额信息表 undefined';

drop index MUBT_IND1 on MB_UPD_BALANCE_TRAN;
/*==============================================================*/
/* Index: MUBT_IND1                                           */
/*==============================================================*/
create index MUBT_IND1 on MB_UPD_BALANCE_TRAN (
    INTERNAL_KEY
);

drop index MUBT_IND2 on MB_UPD_BALANCE_TRAN;
/*==============================================================*/
/* Index: MUBT_IND2                                           */
/*==============================================================*/
create index MUBT_IND2 on MB_UPD_BALANCE_TRAN (
    BAL_CALC_FLAG
);