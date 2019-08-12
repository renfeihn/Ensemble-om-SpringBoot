drop table if exists fm_brchstatus_detail;
/*==============================================================*/
/* Table: fm_brchstatus_detail                                           */
/*==============================================================*/
create table fm_brchstatus_detail
(
    BRANCH varchar(20) comment '机构代码',
    TRAN_DATE varchar(8) comment '交易日期',
    REG_TYPE varchar(1) comment '登记类型',
    REG_VALUE varchar(50) comment '登记值  ',
    USER_ID varchar(30) comment '使用柜员',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '时间戳'
);
alter table fm_brchstatus_detail comment '机构登记簿 undefined';