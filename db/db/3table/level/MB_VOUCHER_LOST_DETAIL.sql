drop table if exists MB_VOUCHER_LOST_DETAIL;
/*==============================================================*/
/* Table: MB_VOUCHER_LOST_DETAIL                                           */
/*==============================================================*/
create table MB_VOUCHER_LOST_DETAIL
(
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    LOST_NO varchar(16) not null comment '挂失编号',
    SEQ_NO varchar(50) not null comment '序号',
    DOC_TYPE varchar(10) not null comment '凭证类型 TB_VOUCHER_DEF.DOC_TYPE',
    PREFIX varchar(10) comment '前缀',
    VOUCHER_START_NO varchar(50) comment '凭证起始号码',
    VOUCHAR_END_NO varchar(50) comment '凭证终止号码',
    STOP_START_DATE varchar(8) comment '挂失起始日期',
    STOP_END_DATE varchar(8) comment '起始补发日期',
    CHEQUE_STOP_END_DATE varchar(8) comment '支票起始解挂日期',
    LOST_VOUCHER_STATUS varchar(3) not null comment '挂失状态',
    NEW_DOC_TYPE varchar(10) comment '新凭证类型 TB_VOUCHER_DEF.DOC_TYPE',
    NEW_PREFIX varchar(10) comment '新凭证前缀',
    NEW_VOUCHER_NO varchar(50) comment '新凭证号码',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    SOURCE_TYPE varchar(10) comment '渠道 FM_CHANNEL.CHANNEL',
    primary  key (INTERNAL_KEY,LOST_NO,SEQ_NO)
);
alter table MB_VOUCHER_LOST_DETAIL comment '凭证挂失明细登记簿 undefined';