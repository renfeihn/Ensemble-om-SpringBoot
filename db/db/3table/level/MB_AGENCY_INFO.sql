drop table if exists MB_AGENCY_INFO;
/*==============================================================*/
/* Table: MB_AGENCY_INFO                                           */
/*==============================================================*/
create table MB_AGENCY_INFO
(
    BATCH_NO varchar(50) not null comment '批次号',
    AGREEMENT_ID varchar(30) not null comment '协议号',
    RES_SEQ_NO varchar(50) comment '限制序号',
    INTERNAL_KEY Decimal(15) not null comment '交易主账号',
    AGENCY_TYPE varchar(1) not null comment '代发代扣类型',
    TRAN_AMT Decimal(17,2) comment '交易总金额',
    CCY varchar(3) comment '交易币种',
    COUNTS varchar(15) comment '交易总数量',
    BATCH_STATUS varchar(3) comment '批次处理状态 ',
    USER_ID varchar(30) comment '操作柜员',
    TRAN_DATE varchar(8) comment '交易日期',
    EFFECT_DATE varchar(8) comment '生效日期',
    START_TIME_STAMP varchar(17) comment '入库起始时间',
    END_TIME_STAMP varchar(17) comment '入库终止时间',
    FAILURE_REASON varchar(4000) comment '入库失败原因',
    BATCH_START_TIME varchar(17) comment '批次处理起始时间戳',
    BATCH_END_TIME varchar(17) comment '批次处理终止时间戳',
    BATCH_FAILURE_REASON varchar(4000) comment '批处理失败原因',
    RUN_TIME varchar(3) comment '运行时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (BATCH_NO)
);
alter table MB_AGENCY_INFO comment '批量代发代扣交易信息表 undefined';