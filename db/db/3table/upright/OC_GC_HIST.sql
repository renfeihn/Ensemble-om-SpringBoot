drop table if exists OC_GC_HIST;
/*==============================================================*/
/* Table: OC_GC_HIST                                           */
/*==============================================================*/
create table OC_GC_HIST
(
    OC_REF_NO varchar(50) not null comment '同城交易流水号',
    BRANCH varchar(20) comment '交易机构',
    CHANGE_NO varchar(10) comment '交换号码',
    CHANGE_REGION varchar(4) comment '交换地区',
    CHANGE_DATE varchar(8) comment '交换日期',
    CHANGE_SESSION varchar(2) comment '交换场次',
    TRAN_DATE varchar(8) comment '轧差日期',
    REFERENCE varchar(50) comment '记账交易参考号',
    DR_CR_FLAG varchar(1) comment '借贷方向',
    GC_AMT Decimal(17,2) comment '轧差金额',
    ODR_NUM Decimal(22,0) comment '提出借方笔数',
    ODR_AMT Decimal(17,2) comment '提出借方金额',
    OCR_NUM Decimal(22,0) comment '提出贷方笔数',
    OCR_AMT Decimal(17,2) comment '提出贷方金额',
    IDR_NUM Decimal(22,0) comment '提入借方笔数',
    IDR_AMT Decimal(17,2) comment '提入借方金额',
    ICR_NUM Decimal(22,0) comment '提入贷方笔数',
    ICR_AMT Decimal(17,2) comment '提入贷方金额',
    GC_CANCLE varchar(1) comment '清查划拨标记',
    REVERSAL_FLAG varchar(1) comment '是否冲正',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ODRT_NUM Decimal(22,0) comment '提出借方退票数',
    ODRT_AMT Decimal(17,2) comment '提出借方退票金额',
    OCRT_NUM Decimal(22,0) comment '提出贷方退票数',
    OCRT_AMT Decimal(17,2) comment '提出贷方退票金额',
    IDRT_NUM Decimal(22,0) comment '提入借方退票数',
    IDRT_AMT Decimal(17,2) comment '提入借方退票金额',
    ICRT_NUM Decimal(22,0) comment '提入贷方退票数',
    ICRT_AMT Decimal(17,2) comment '提入贷方退票金额',
    primary  key (OC_REF_NO)
);
alter table OC_GC_HIST comment '同城票交扎差清算表 undefined';