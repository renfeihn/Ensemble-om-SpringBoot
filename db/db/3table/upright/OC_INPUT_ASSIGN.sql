drop table if exists OC_INPUT_ASSIGN;
/*==============================================================*/
/* Table: OC_INPUT_ASSIGN                                           */
/*==============================================================*/
create table OC_INPUT_ASSIGN
(
    ASSIGN_SEQ_NO varchar(50) not null comment '清分序号',
    TRAN_DATE varchar(8) comment '交易日期',
    USER_ID varchar(30) comment '清分柜员',
    BRANCH varchar(20) comment '交易机构',
    CHANGE_NO varchar(10) comment '交换号 ',
    CHANGE_REGION varchar(4) comment '交换地区',
    CHANGE_DATE varchar(8) comment '交换日期',
    CHANGE_SESSION varchar(2) comment '交换场次',
    IDR_TOTAL_NUM Decimal(22,0) comment '提入借方总笔数',
    IDR_TOTAL_AMT Decimal(17,2) comment '提入借方总金额',
    ICR_TOTAL_NUM Decimal(22,0) comment '提入贷方总笔数',
    ICR_TOTAL_AMT Decimal(17,2) comment '提入贷方总金额',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (ASSIGN_SEQ_NO)
);
alter table OC_INPUT_ASSIGN comment '同城票交提入业务清分表 undefined';