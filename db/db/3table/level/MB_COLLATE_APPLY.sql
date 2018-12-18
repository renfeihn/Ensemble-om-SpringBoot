drop table if exists MB_COLLATE_APPLY;
/*==============================================================*/
/* Table: MB_COLLATE_APPLY                                           */
/*==============================================================*/
create table MB_COLLATE_APPLY
(
    SEQ_NO varchar(50) not null comment '序号',
    TRAN_DATE varchar(8) not null comment '交易日期',
    CHANNEL_TYPE varchar(20) comment '渠道类型',
    CHANNEL_SEQ_NO varchar(50) comment '渠道流水号',
    FILE_PATH varchar(512) comment '文件路径',
    STATUS varchar(3) comment '状态 ',
    SETTLE_BRANCH varchar(20) comment '结算分行',
    START_DATE varchar(8) comment '起始对账日期',
    END_DATE varchar(8) comment '截止对账日期',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    primary  key (SEQ_NO)
);
alter table MB_COLLATE_APPLY comment '对账申请登记簙 undefined';

drop index mb_seq_index on MB_COLLATE_APPLY;
/*==============================================================*/
/* Index: mb_seq_index                                           */
/*==============================================================*/
create unique index mb_seq_index on MB_COLLATE_APPLY (
    SEQ_NO
);

drop index mb_tran_index1 on MB_COLLATE_APPLY;
/*==============================================================*/
/* Index: mb_tran_index1                                           */
/*==============================================================*/
create index mb_tran_index1 on MB_COLLATE_APPLY (
    TRAN_DATE
);