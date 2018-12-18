drop table if exists GL_RESERVE_GAT_SUBJECT;
/*==============================================================*/
/* Table: GL_RESERVE_GAT_SUBJECT                                           */
/*==============================================================*/
create table GL_RESERVE_GAT_SUBJECT
(
    FREQ_BRANCH varchar(20) not null comment '缴存机构',
    DOWN_BRANCH varchar(20) not null comment '下级机构',
    PAY_TYPE varchar(8) not null comment '准备金类型 GL_RESERVE_PAY_CCY.PAY_TYPE',
    PAY_TYPE_DESC varchar(50) not null comment '准备金类型描述信息',
    TRAN_DATE varchar(8) not null comment '交易日期',
    TRAN_AMT Decimal(17,2) not null comment '交易金额',
    PAY_CCY varchar(3) not null comment '缴存币种  FM_CURRENCY.CCY',
    ADD_MINUS varchar(17) not null comment '调增调减',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    LAST_PAY_BASE_SUM Decimal(17,2) comment '上一缴存基数',
    PAY_BASE_SUM Decimal(17,2) comment '缴存基数'
);
alter table GL_RESERVE_GAT_SUBJECT comment '准备金缴存科目余额汇总 undefined';