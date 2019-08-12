drop table if exists MB_EXCHANGE_TRAN_ATTACH;
/*==============================================================*/
/* Table: MB_EXCHANGE_TRAN_ATTACH                                           */
/*==============================================================*/
create table MB_EXCHANGE_TRAN_ATTACH
(
    SEQ_NO varchar(50) not null comment '交易序号',
    TRAN_DATE varchar(8) comment '交易日期',
    SOURCE_MODULE varchar(10) comment '源模块',
    EXCHANGE_TYPE varchar(2) comment '结售汇类型',
    EXCHANGE_REPORT_NO varchar(12) comment '报送号码',
    EXCHANGE_CLASS varchar(2) comment '申报类型',
    EXCHANGE_REPORT_TYPE varchar(1) comment '申报客户类型',
    EXCHANGE_PURPOSE varchar(5) comment '用途',
    EXCHANGE_PURPOSE_DETAILS varchar(50) comment '用途详细信息',
    EXCHANGE_ITEM_CODE varchar(10) comment '结售汇项目编码',
    EXCHANGE_TRAN_CODE varchar(10) comment '收入方交易编码',
    EXCHANGE_TRAN_CODET varchar(10) comment '支出方交易编码',
    LAST_CHANGE_USER_ID varchar(30) comment '更新柜员',
    LAST_CHANGE_DATE varchar(8) comment '更新日期',
    APPR_USER_ID varchar(30) comment '复核柜员',
    APPROVAL_DATE varchar(8) comment '复核日期',
    STATUS varchar(3) comment '状态',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (SEQ_NO)
);
alter table MB_EXCHANGE_TRAN_ATTACH comment '结售汇交易流水附属表 undefined';