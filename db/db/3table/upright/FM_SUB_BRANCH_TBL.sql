drop table if exists FM_SUB_BRANCH_TBL;
/*==============================================================*/
/* Table: FM_SUB_BRANCH_TBL                                           */
/*==============================================================*/
create table FM_SUB_BRANCH_TBL
(
    SUB_BRANCH_CODE varchar(20) not null comment '分行代码',
    SUB_BRANCH_NAME varchar(100) comment '分行名称',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (SUB_BRANCH_CODE)
);
alter table FM_SUB_BRANCH_TBL comment '分行定义表 undefined';