drop table if exists MB_APPR_LETTER_SUB;
/*==============================================================*/
/* Table: MB_APPR_LETTER_SUB                                           */
/*==============================================================*/
create table MB_APPR_LETTER_SUB
(
    APPR_LETTER_NO varchar(30) not null comment '核准件编号',
    MAIN_SUB_IND varchar(1) not null comment '核准件主子标志',
    CCY varchar(3) not null comment '币种',
    LIMIT_AMT Decimal(17,2) not null comment '核准件总金额',
    CR_TOTAL_AMT Decimal(17,2) comment '贷方金额',
    DR_TOTAL_AMT Decimal(17,2) comment '借方金额',
    GRACE_AMT Decimal(17,2) comment '浮动金额',
    GRACE_PROPORTION Decimal(17,2) comment '浮动比例',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (APPR_LETTER_NO,MAIN_SUB_IND,CCY)
);
alter table MB_APPR_LETTER_SUB comment '核准件子表信息 undefined';