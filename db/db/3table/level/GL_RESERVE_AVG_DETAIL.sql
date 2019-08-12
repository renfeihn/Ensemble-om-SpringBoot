drop table if exists GL_RESERVE_AVG_DETAIL;
/*==============================================================*/
/* Table: GL_RESERVE_AVG_DETAIL                                           */
/*==============================================================*/
create table GL_RESERVE_AVG_DETAIL
(
    FREQ_BRANCH varchar(20) comment '缴存机构',
    DOWN_BRANCH varchar(20) not null comment '下级机构',
    PAY_TYPE varchar(8) not null comment '准备金类型 GL_RESERVE_PAY_CCY.PAY_TYPE',
    GL_CODE varchar(20) not null comment '科目代码 AC_SUBJECT.SUBJECT_CODE',
    TRAN_DATE varchar(8) not null comment '交易日期',
    PAY_TYPE_DESC varchar(50) not null comment '准备金类型描述信息',
    PAY_WAY varchar(3) not null comment '缴存方式',
    FROM_PAY_CCY varchar(3) not null comment '原缴存币种  FM_CURRENCY.CCY',
    FROM_TRAN_AMT Decimal(17,2) not null comment '原缴存金额',
    TO_PAY_CCY varchar(3) not null comment '缴存币种  FM_CURRENCY.CCY',
    TO_TRAN_AMT Decimal(17,2) not null comment '缴存金额',
    LAST_PAY_AMT Decimal(17,2) not null comment '上一缴存日缴存金额',
    SUM_BAL_FLAG varchar(1) comment '余额汇总方式',
    BALANCE Decimal(17,2) not null comment '余额',
    DAYS_OF_TEN Decimal(10,0) not null comment '天数',
    FROM_DATE_TEN varchar(8) not null comment '本旬缴存起始日期',
    TO_DATE_TEN varchar(8) not null comment '本旬缴存终止日期',
    CR_DR_MAINT_IND varchar(1) not null comment '借贷标志  C:贷 D：借',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳'
);
alter table GL_RESERVE_AVG_DETAIL comment '准备金缴存明细表 undefined';