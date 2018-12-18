drop table if exists DC_YEAR_PLAN_INFO ;
/*==============================================================*/
/* Table: DC_YEAR_PLAN_INFO                                            */
/*==============================================================*/
create table DC_YEAR_PLAN_INFO 
(
    ISSUE_YEAR varchar(4) comment '发行年度',
    CCY varchar(3) comment '币种',
    ADJUST_LIMIT Decimal(17,2) comment '调整额度',
    OLD_RECORD_LIMIT Decimal(17,2) comment '调整前备案额度',
    RECORD_LIMIT Decimal(17,2) comment '调整后备案额度',
    DISTRIBUTE_LIMIT Decimal(17,2) comment '已分配额度',
    LEAVE_LIMIT Decimal(17,2) comment '调整后剩余额度',
    TRAN_BRANCH varchar(20) comment '交易机构',
    USER_ID varchar(30) comment '使用柜员',
    AUTH_USER_ID varchar(30) comment '授权柜员',
    TRAN_DATE varchar(8) comment '交易日期',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间'
);
alter table DC_YEAR_PLAN_INFO  comment '年度发行计划信息历史表 undefined';