drop table if exists DC_STAGE_INFO;
/*==============================================================*/
/* Table: DC_STAGE_INFO                                           */
/*==============================================================*/
create table DC_STAGE_INFO
(
    ISSUE_YEAR varchar(4) not null comment '发行年度',
    PROD_TYPE varchar(50) not null comment '产品类型 ',
    CCY varchar(3) not null comment '币种',
    STAGE_CODE varchar(50) not null comment '期次代码',
    TOTAL_LIMIT Decimal(17,2) not null comment '总放款额度',
    DISTRIBUTE_LIMIT Decimal(17,2) comment '已分配额度',
    HOLDING_LIMIT Decimal(17,2) comment '已占用额度',
    PREV_HOLDING_LIMIT Decimal(17,2) comment '上次已占用额度',
    PREV_USED_AMT Decimal(17,2) comment '上次已使用额度',
    LEAVE_LIMIT Decimal(17,2) comment '剩余额度',
    LAST_CHANGE_DATE varchar(8) comment '最后变更日期 ',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    STAGE_PROD_CLASS varchar(4) comment '期次产品分类',
    primary  key (STAGE_CODE)
);
alter table DC_STAGE_INFO comment '期次历史信息表 undefined';