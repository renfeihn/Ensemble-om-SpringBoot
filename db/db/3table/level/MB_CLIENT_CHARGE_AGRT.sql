drop table if exists MB_CLIENT_CHARGE_AGRT;
/*==============================================================*/
/* Table: MB_CLIENT_CHARGE_AGRT                                           */
/*==============================================================*/
create table MB_CLIENT_CHARGE_AGRT
(
    AGREEMENT_ID varchar(30) not null comment '协议号',
    FEE_TYPE varchar(8) not null comment '服务费类型',
    CHARGE_WAY varchar(1) comment '收费方式',
    PERIOD_FREQ varchar(2) comment '收费频率',
    SERV_DAY varchar(2) comment '收费日',
    NEXT_CHARGE_DATE varchar(8) comment '下一收费日期',
    STATUS varchar(3) comment '状态',
    OTH_BUSINESS_NO varchar(50) comment '对手业务编号',
    SEQ_NO varchar(50) comment '业务序列号',
    OTH_NAME varchar(200) comment '对手名称',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (AGREEMENT_ID,FEE_TYPE)
);
alter table MB_CLIENT_CHARGE_AGRT comment '客户收费协议 undefined';