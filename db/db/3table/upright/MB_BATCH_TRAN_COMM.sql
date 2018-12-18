drop table if exists MB_BATCH_TRAN_COMM;
/*==============================================================*/
/* Table: MB_BATCH_TRAN_COMM                                           */
/*==============================================================*/
create table MB_BATCH_TRAN_COMM
(
    BATCH_NO varchar(50) not null comment '批处理号',
    OLD_BRANCH varchar(20) comment '变更前机构',
    NEW_BRANCH varchar(20) comment '变更后机构',
    BAL_UPD_TYPE varchar(1) comment '余额更新类型',
    CCY varchar(3) comment '币种',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (BATCH_NO)
);
alter table MB_BATCH_TRAN_COMM comment '公共批量登记簿 undefined';