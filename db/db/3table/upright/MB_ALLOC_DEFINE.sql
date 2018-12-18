drop table if exists MB_ALLOC_DEFINE;
/*==============================================================*/
/* Table: MB_ALLOC_DEFINE                                           */
/*==============================================================*/
create table MB_ALLOC_DEFINE
(
    ALLOC_CODE varchar(3) not null comment '扣款顺序编号',
    ACCOUNTING_STATUS varchar(3) not null comment '核算状态',
    ALLOC_DESC varchar(50) not null comment '扣款顺序描述',
    ALLOC_SEQ_TYPE varchar(1) comment '自动还款类型 ',
    ALLOC_SEQ_PRI varchar(1) comment '本金顺序 ',
    ALLOC_SEQ_INT varchar(1) comment '利息顺序 ',
    ALLOC_SEQ_ODP varchar(1) comment '罚息顺序 ',
    ALLOC_SEQ_ODI varchar(1) comment '复利顺序 ',
    ALLOC_SEQ_FEE varchar(1) comment '费用顺序 ',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (ALLOC_CODE,ACCOUNTING_STATUS)
);
alter table MB_ALLOC_DEFINE comment '贷款扣款顺序定义表 undefined';