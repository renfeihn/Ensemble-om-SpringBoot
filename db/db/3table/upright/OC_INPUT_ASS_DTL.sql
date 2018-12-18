drop table if exists OC_INPUT_ASS_DTL;
/*==============================================================*/
/* Table: OC_INPUT_ASS_DTL                                           */
/*==============================================================*/
create table OC_INPUT_ASS_DTL
(
    ASSIGN_SEQ_NO varchar(50) comment '清分序号',
    CHANGE_NO varchar(10) comment '交换号',
    CHANGE_REGION varchar(4) comment '交换地区',
    CHANGE_DATE varchar(8) comment '交换日期',
    CHANGE_SESSION varchar(2) comment '交换场次',
    RECORD_BRANCH varchar(20) comment '录入机构',
    RECORD_USER_ID varchar(30) comment '录入柜员',
    OTH_BANK_CODE varchar(20) comment '对方机构',
    DOC_TYPE varchar(10) comment '票据类型',
    IDR_NUM Decimal(22,0) comment '录入借方总笔数',
    IDR_AMT Decimal(17,2) comment '录入借方总金额',
    ICR_NUM Decimal(22,0) comment '录入贷方总笔数',
    ICR_AMT Decimal(17,2) comment '录入贷方总金额',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间'
);
alter table OC_INPUT_ASS_DTL comment '同城票交提入清分明细表 undefined';