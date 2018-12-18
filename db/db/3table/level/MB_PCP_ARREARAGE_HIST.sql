drop table if exists MB_PCP_ARREARAGE_HIST;
/*==============================================================*/
/* Table: MB_PCP_ARREARAGE_HIST                                           */
/*==============================================================*/
create table MB_PCP_ARREARAGE_HIST
(
    SEQ_NO varchar(50) not null comment '序号',
    GROUP_ID varchar(50) comment '账户组ID',
    CLIENT_NO varchar(20) comment '客户号',
    INTERNAL_KEY Decimal(15) comment '帐户主键',
    TRAN_DATE varchar(8) comment '交易日期',
    OSD_DATE varchar(8) comment '欠费日期',
    OTH_INTERNAL_KEY Decimal(15) comment '转账时对方账户标识符',
    TOTAL_ARRE_INCOME Decimal(17,2) comment '欠收',
    TOTAL_ARRE_EXPENSE Decimal(17,2) comment '欠付',
    OSD_STATUS varchar(3) comment '欠费状态',
    REFERENCE varchar(50) comment '交易参考号',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码',
    primary  key (SEQ_NO)
);
alter table MB_PCP_ARREARAGE_HIST comment '资金池周期扣划欠费明细表 undefined';