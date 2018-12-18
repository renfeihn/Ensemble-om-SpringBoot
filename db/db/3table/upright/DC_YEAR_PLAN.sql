drop table if exists DC_YEAR_PLAN;
/*==============================================================*/
/* Table: DC_YEAR_PLAN                                           */
/*==============================================================*/
create table DC_YEAR_PLAN
(
    ISSUE_YEAR varchar(4) not null comment '发行年度',
    CCY varchar(3) not null comment '币种',
    RECORD_LIMIT Decimal(17,2) comment '备案额度',
    ADJUST_LIMIT Decimal(17,2) comment '调整额度',
    DISTRIBUTE_LIMIT Decimal(17,2) comment '已分配额度',
    LEAVE_LIMIT Decimal(17,2) comment '剩余额度',
    TRAN_BRANCH varchar(20) comment '交易机构',
    USER_ID varchar(30) comment '交易柜员',
    TRAN_DATE varchar(8) comment '交易日期',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (ISSUE_YEAR,CCY)
);
alter table DC_YEAR_PLAN comment '年度发行计划信息表 undefined';