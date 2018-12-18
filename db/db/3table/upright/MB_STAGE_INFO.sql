drop table if exists MB_STAGE_INFO;
/*==============================================================*/
/* Table: MB_STAGE_INFO                                           */
/*==============================================================*/
create table MB_STAGE_INFO
(
    ISSUE_YEAR varchar(4) not null comment '发行年度',
    PROD_TYPE varchar(50) not null comment '产品类型',
    CCY varchar(3) not null comment '币种',
    STAGE_CODE varchar(50) not null comment '期次代码',
    ISSUE_AMT Decimal(17,2) not null comment '期次发行额度',
    USED_AMT Decimal(17,2) comment '期次已使用额度',
    PREV_USED_AMT Decimal(17,2) comment '上次已使用额度',
    LAST_CHANGE_DATE varchar(8) comment '上次更新日期',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (STAGE_CODE)
);
alter table MB_STAGE_INFO comment '期次信息表 undefined';