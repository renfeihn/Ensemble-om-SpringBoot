drop table if exists BAT_HEADER_TRAN;
/*==============================================================*/
/* Table: BAT_HEADER_TRAN                                           */
/*==============================================================*/
create table BAT_HEADER_TRAN
(
    BATCH_NO varchar(50) not null comment '批处理号',
    BRANCH varchar(20) comment '机构代码',
    CCY varchar(3) comment '币种',
    VALUE_DATE varchar(8) comment '生效日期',
    BATCH_DATE varchar(8) comment '记账日期',
    DR_NO_ITEMS varchar(5) comment '借方笔数',
    DR_TOTAL_AMT Decimal(17,2) comment '借方金额',
    CR_NO_ITEMS varchar(5) comment '贷方笔数',
    CR_TOTAL_AMT Decimal(17,2) comment '贷方金额',
    REVERSED varchar(1) comment '是否撤销标志',
    REVERSE_DATE varchar(8) comment '冲正日期',
    NARRATIVE varchar(300) comment '摘要，开户时的账号用途，销户时的销户原因',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码',
    primary  key (BATCH_NO)
);
alter table BAT_HEADER_TRAN comment '批量对账数据 undefined';