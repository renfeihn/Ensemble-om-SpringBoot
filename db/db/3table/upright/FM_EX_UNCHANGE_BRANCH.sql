drop table if exists FM_EX_UNCHANGE_BRANCH;
/*==============================================================*/
/* Table: FM_EX_UNCHANGE_BRANCH                                           */
/*==============================================================*/
create table FM_EX_UNCHANGE_BRANCH
(
    BRANCH varchar(20) not null comment '机构号',
    UNCHANGE_BRANCH varchar(20) not null comment '平盘机构号',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (BRANCH)
);
alter table FM_EX_UNCHANGE_BRANCH comment '汇率平盘机构定义 undefined';