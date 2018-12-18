drop table if exists FM_BRANCH_REGION_DEF;
/*==============================================================*/
/* Table: FM_BRANCH_REGION_DEF                                           */
/*==============================================================*/
create table FM_BRANCH_REGION_DEF
(
    BRANCH_ID varchar(20) not null comment '机构',
    USER_REGION_TYPE varchar(20) not null comment '自定义区域类型',
    USER_REGION_CODE varchar(20) not null comment '自定义区域代码',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    primary  key (BRANCH_ID,USER_REGION_TYPE,USER_REGION_CODE)
);
alter table FM_BRANCH_REGION_DEF comment '机构自定义区域设置 undefined';