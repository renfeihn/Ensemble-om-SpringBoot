drop table if exists gl_branch_change;
/*==============================================================*/
/* Table: gl_branch_change                                           */
/*==============================================================*/
create table gl_branch_change
(
    TRAN_DATE varchar(8) not null comment '交易日期',
    NEW_BRANCH varchar(20) not null comment '变更后机构',
    OLD_BRANCH varchar(20) not null comment '变更前机构',
    PET_FLAG varchar(1) comment '处理标志',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    AMEND_SEQ_NO varchar(50) not null comment '变更序号',
    primary  key (AMEND_SEQ_NO)
);
alter table gl_branch_change comment '核算需要处理的全机构拆并数据 undefined';