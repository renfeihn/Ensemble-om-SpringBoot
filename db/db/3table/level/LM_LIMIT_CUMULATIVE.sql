drop table if exists LM_LIMIT_CUMULATIVE;
/*==============================================================*/
/* Table: LM_LIMIT_CUMULATIVE                                           */
/*==============================================================*/
create table LM_LIMIT_CUMULATIVE
(
    INTERNAL_KEY Decimal(15) comment '帐户主键',
    LAST_CHANGE_DATE varchar(8) comment '最后变更日期 ',
    TOTAL_KEY varchar(30) comment '累计项',
    CR_DR_MAINT_IND varchar(1) comment '借贷标志 ',
    LIMIT_AMT Decimal(17,2) comment '核准件总金额',
    LIMIT_NUM Decimal(17,2) comment '累计比数',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间'
);
alter table LM_LIMIT_CUMULATIVE comment '限额额度累计信息表 undefined';