drop table if exists FM_EXTERNAL_BRANCH;
/*==============================================================*/
/* Table: FM_EXTERNAL_BRANCH                                           */
/*==============================================================*/
create table FM_EXTERNAL_BRANCH
(
    BANK_CODE varchar(20) not null comment '银行代码',
    BRANCH_CODE varchar(6) not null comment '机构代码',
    BRANCH_NAME varchar(100) comment '机构名称',
    COUNTRY varchar(3) comment '国家',
    STATE varchar(10) comment '省、州 ',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (BANK_CODE,BRANCH_CODE)
);
alter table FM_EXTERNAL_BRANCH comment '外部金融机构分行表 undefined';