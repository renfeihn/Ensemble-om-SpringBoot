drop table if exists MB_ACCT_EVENT_REGISTER_DTLS;
/*==============================================================*/
/* Table: MB_ACCT_EVENT_REGISTER_DTLS                                           */
/*==============================================================*/
create table MB_ACCT_EVENT_REGISTER_DTLS
(
    INTERNAL_KEY Decimal(15) not null comment '账户主键',
    BATCH_SEQ_NO varchar(50) not null comment '批次序号，和rb_tda_hist中的seq_no对应',
    SEQ_NO varchar(50) not null comment '交易序号',
    MOVT_STATUS varchar(1) comment '场景类型 ',
    TRAN_SEQ_NO varchar(50) comment '交易流水号',
    TRAN_DATE varchar(8) comment '交易日期',
    TRAN_TYPE varchar(10) comment '交易类型',
    TRAN_AMT Decimal(17,2) comment '交易金额',
    TAX_AMT Decimal(17,2) comment '应收税金',
    INT_TYPE varchar(3) comment '利率类型',
    INT_RATE Decimal(15,8) comment '支取利率',
    INT_END_DATE varchar(8) comment '下一取息日',
    THIRD_PARTY_INTERNAL_KEY Decimal(15) comment '第三方账号',
    INT_STATUS varchar(3) comment '利息状态 I-计提,T-待入账,D-支取',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (INTERNAL_KEY,BATCH_SEQ_NO,SEQ_NO)
);
alter table MB_ACCT_EVENT_REGISTER_DTLS comment '账户重要事件登记簿明细信息 undefined';