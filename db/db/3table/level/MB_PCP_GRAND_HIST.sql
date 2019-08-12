drop table if exists MB_PCP_GRAND_HIST;
/*==============================================================*/
/* Table: MB_PCP_GRAND_HIST                                           */
/*==============================================================*/
create table MB_PCP_GRAND_HIST
(
    SEQ_NO varchar(50) not null comment '序号',
    GROUP_ID varchar(50) comment '账户组ID',
    CLIENT_NO varchar(20) comment '客户号',
    INTERNAL_KEY Decimal(15) comment '帐户主键',
    TRAN_DATE varchar(8) comment '交易日期',
    DAY_INT_INCOME Decimal(17,8) comment '当日应收利息',
    DAY_INT_EXPENSE Decimal(17,8) comment '当日应付利息',
    DAY_TOTAL_INCOME Decimal(17,8) comment '累计应收利息',
    DAY_TOTAL_EXPENSE Decimal(17,8) comment '累计应付利息',
    PCP_BLANCE Decimal(17,2) comment '资金池账户余额',
    TOTAL_UP_AMT Decimal(17,2) comment '累计归集金额',
    TOTAL_DOWN_AMT Decimal(17,2) comment '累计下拨金额',
    DR_RATE Decimal(15,8) comment '借方利率',
    CR_RATE Decimal(15,8) comment '贷方利率',
    OTH_INTERNAL_KEY Decimal(15) comment '转账时对方账户标识符',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码',
    primary  key (SEQ_NO)
);
alter table MB_PCP_GRAND_HIST comment '资金池账户计价信息表 undefined';