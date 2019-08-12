drop table if exists GL_BATCH_HEADER;
/*==============================================================*/
/* Table: GL_BATCH_HEADER                                           */
/*==============================================================*/
create table GL_BATCH_HEADER
(
    BATCH_NO varchar(50) not null comment '批处理号',
    BRANCH varchar(20) not null comment '分行',
    BATCH_STATUS varchar(3) not null comment '批处理状态 A-Accepted D-Deleted O-Open P-Posted',
    BATCH_DATE varchar(8) not null comment '记账日期',
    NO_OF_ITEMS varchar(10) comment '记录数',
    USER_ID varchar(30) not null comment '用户号',
    ACCEPT_USER varchar(30) comment '复核柜员',
    HASH_TOTAL Decimal(17,2) comment 'HASH总额',
    VALUE_DATE varchar(8) not null comment '起息日',
    TRAN_DATE varchar(8) comment '交易日期',
    LAST_CHANGE_DATE varchar(8) comment '上次修改日',
    LAST_RUN_DATE varchar(8) comment '上次运行日',
    WS_ID varchar(200) comment '终端编号',
    API_IND varchar(1) comment '接口',
    EVENT_ID varchar(50) comment '事件类型',
    REVERSED varchar(1) comment '冲正标识 Y/N',
    PREV_BATCH_NO varchar(50) comment '上次批处理号',
    CCY varchar(3) comment '币种',
    CCY_RATE Decimal(15,8) comment '折算汇率',
    BUSINESS_UNIT varchar(10) comment '账套',
    REVERSAL_DATE varchar(8) comment '冲正日期',
    TRAN_BRANCH varchar(20) comment '交易机构',
    BANK_SEQ_NO varchar(50) comment '银行账务序号',
    COMPANY varchar(20) comment '法人代码',
    NARRATIVE varchar(300) comment '描述',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (BATCH_NO)
);
alter table GL_BATCH_HEADER comment '总账手工记账处理头信息 undefined';