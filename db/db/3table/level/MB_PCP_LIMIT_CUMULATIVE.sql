drop table if exists MB_PCP_LIMIT_CUMULATIVE;
/*==============================================================*/
/* Table: MB_PCP_LIMIT_CUMULATIVE                                           */
/*==============================================================*/
create table MB_PCP_LIMIT_CUMULATIVE
(
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    LAST_CHANGE_DATE varchar(8) comment '最后变更日期 ',
    LIMIT_TYPE varchar(2) not null comment '类型  ',
    TOTAL_KEY varchar(30) comment '累计项',
    CR_DR_MAINT_IND varchar(1) comment '借贷标志  C:贷 D：借',
    LIMIT_AMT Decimal(17,2) comment '核准件总金额',
    LIMIT_NUM Decimal(17,2) comment '累计比数',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码'
);
alter table MB_PCP_LIMIT_CUMULATIVE comment '分户限额累计表 undefined';