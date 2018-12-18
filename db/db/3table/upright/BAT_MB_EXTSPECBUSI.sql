drop table if exists BAT_MB_EXTSPECBUSI;
/*==============================================================*/
/* Table: BAT_MB_EXTSPECBUSI                                           */
/*==============================================================*/
create table BAT_MB_EXTSPECBUSI
(
    ACCOUNTNO varchar(50) comment '贷款业务号',
    OCCUREDATE varchar(8) comment '发生日期',
    SPECBUSITYPE varchar(2) comment '特殊交易类型',
    CHANGEMONTHS Decimal(22,0) comment '变更月数',
    SPECBUSISUM Decimal(22,0) comment '发生金额'
);
alter table BAT_MB_EXTSPECBUSI comment '信贷特殊交易表 undefined';