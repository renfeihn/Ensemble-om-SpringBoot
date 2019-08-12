drop table if exists MB_FEE_AMORTIZE_DETAIL;
/*==============================================================*/
/* Table: MB_FEE_AMORTIZE_DETAIL                                           */
/*==============================================================*/
create table MB_FEE_AMORTIZE_DETAIL
(
    AMORTIZE_SEQ_NO Decimal(20) not null comment '摊销序号',
    AGREEMENT_ID varchar(30) not null comment '合约编号',
    CLIENT_NO varchar(20) not null comment '客户号',
    TRAN_TYPE varchar(10) not null comment '交易类型',
    FEE_TYPE varchar(8) not null comment '费用类型',
    AMORTIZE_PERIOD_FREQ varchar(2) not null comment '摊销频率 ',
    AMORTIZE_TIME varchar(2) not null comment '摊销时间 F-期初 L-期末 D-周期内固定日期',
    AMORTIZE_MONTH varchar(2) comment '摊销月',
    AMORTIZE_DAY varchar(2) comment '摊销日',
    AMORTIZE_CCY varchar(3) not null comment '摊销币种',
    AMORTIZE_AMT Decimal(17,2) not null comment '摊销金额',
    AMORTIZE_DATE varchar(8) not null comment '摊销日期',
    EFFECT_DATE varchar(8) not null comment '生效日期',
    REFERENCE varchar(50) comment '交易参考号',
    CHANNEL_SEQ_NO varchar(50) comment '渠道流水号',
    END_DATE varchar(8) comment '结束日期',
    GL_POSTED varchar(1) not null comment '过账标志',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (AMORTIZE_SEQ_NO)
);
alter table MB_FEE_AMORTIZE_DETAIL comment '费用摊销明细表 undefined';