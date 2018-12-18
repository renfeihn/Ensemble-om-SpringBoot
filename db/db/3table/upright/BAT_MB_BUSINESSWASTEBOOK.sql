drop table if exists BAT_MB_BUSINESSWASTEBOOK;
/*==============================================================*/
/* Table: BAT_MB_BUSINESSWASTEBOOK                                           */
/*==============================================================*/
create table BAT_MB_BUSINESSWASTEBOOK
(
    TSERIALNO varchar(60) comment '交易流水号',
    SERIALNO varchar(40) comment '业务标识号',
    OCCURDATE varchar(8) comment '发生日期',
    TRANSACTIONFLAG varchar(20) comment '交易标志',
    OCCURDIRECTION varchar(20) comment '发生方向',
    OCCURTYPE varchar(20) comment '发生类型',
    OCCURSUBJECT varchar(20) comment '发生摘要',
    BUSINESSDESC varchar(20) comment '业务描述',
    ACTUALSUM Decimal(17,2) comment '实际发生额',
    SUBJECTNO varchar(20) comment '科目',
    ORGID varchar(20) comment '机构'
);
alter table BAT_MB_BUSINESSWASTEBOOK comment '信贷交易流水表 undefined';