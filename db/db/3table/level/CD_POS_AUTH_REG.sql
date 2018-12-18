drop table if exists CD_POS_AUTH_REG;
/*==============================================================*/
/* Table: CD_POS_AUTH_REG                                           */
/*==============================================================*/
create table CD_POS_AUTH_REG
(
    AUTH_SEQ_NO varchar(50) not null comment '预授权登记簿流水号',
    AUTH_ID varchar(6) not null comment '预授权码',
    CARD_NO varchar(50) not null comment '卡号',
    TRAN_DATE varchar(8) not null comment '交易日期',
    TRAN_TIMESTAMP varchar(17) not null comment '交易时间',
    TRAN_AMT Decimal(17,2) comment '预授权金额',
    CCY varchar(3) comment '预授权币种',
    FULL_AMT Decimal(17,2) comment '预授权完成金额',
    AUTH_FROM_DATE varchar(8) comment '预授权有效起始日期',
    AUTH_THRU_DATE varchar(8) comment '预授权有效截止日期',
    TRAN_STATUS varchar(3) not null comment '状态',
    REMARK varchar(200) comment '备注',
    SOURCE_TYPE varchar(10) comment '渠道',
    TERMINAL_ID varchar(200) comment '终端编号',
    MERCHANT_CODE varchar(20) comment '商行编号',
    CUP_DATE varchar(8) comment '银联日期',
    CUP_AREA_CODE varchar(20) comment '受理方标识码',
    CUP_SEND_CODE varchar(20) comment '发送机构标识码',
    RESTRAINT_SEQ_NO varchar(50) comment '限制编号',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (AUTH_SEQ_NO)
);
alter table CD_POS_AUTH_REG comment '卡片POS预授权登记簿 undefined';