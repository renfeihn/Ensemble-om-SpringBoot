drop table if exists MB_PROD_ACCT_BAL;
/*==============================================================*/
/* Table: MB_PROD_ACCT_BAL                                           */
/*==============================================================*/
create table MB_PROD_ACCT_BAL
(
    BRANCH varchar(20) not null comment '机构代码',
    CCY varchar(3) not null comment '币种',
    PROD_TYPE varchar(50) not null comment '产品类型',
    STATUS varchar(3) not null comment '状态 A:有效 E:失效',
    AMT_TYPE varchar(10) not null comment '金额类型',
    BALANCE Decimal(17,2) not null comment '余额',
    LAST_CHANGE_DATE varchar(8) comment '最后变更日期 ',
    PROFIT_CENTRE varchar(12) comment '利润中心 FM_PROFIT_CENTRE.PROFIT_CENTRE',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    GL_CODE varchar(20) comment '科目代码 AC_SUBJECT.SUBJECT_CODE'
);
alter table MB_PROD_ACCT_BAL comment '产品分户余额表 undefined';