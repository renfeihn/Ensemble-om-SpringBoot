drop table if exists MB_CLEAN_PARAMETER;
/*==============================================================*/
/* Table: MB_CLEAN_PARAMETER                                           */
/*==============================================================*/
create table MB_CLEAN_PARAMETER
(
    SEQ_NO varchar(50) not null comment '序号',
    PROD_TYPE varchar(50) comment '产品类型',
    CCY varchar(3) comment '币种',
    ACCT_TYPE varchar(10) comment '账户类型',
    BALANCE Decimal(17,2) comment '余额',
    TERM_PERIOD varchar(5) comment '敞口类型',
    TERM_TYPE varchar(1) comment '存期类型 FM_PERIOD_FREQ.DAY_MTH',
    START_TIME varchar(30) comment '起始时间',
    END_TIME varchar(30) comment '终止时间',
    AGREEMENT_TYPE varchar(3) comment '协议类型  ',
    PERIOD_FREQ varchar(2) comment '频率类型',
    PERIOD_FREQ_TYPE varchar(2) comment '期限类型',
    LAST_CLEAN_DATE varchar(8) comment '上一清扫日期',
    CLEAN_TYPE varchar(4) comment '清扫类型',
    ACCT_STATUS varchar(3) comment '核算状态',
    STATUS varchar(3) comment '状态 A:有效 E:失效',
    NEXT_CLEAN_DATE varchar(8) comment '下一清扫日期',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (SEQ_NO)
);
alter table MB_CLEAN_PARAMETER comment '账户清理参数表 undefined';