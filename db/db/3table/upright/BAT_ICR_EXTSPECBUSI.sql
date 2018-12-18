drop table if exists BAT_ICR_EXTSPECBUSI;
/*==============================================================*/
/* Table: BAT_ICR_EXTSPECBUSI                                           */
/*==============================================================*/
create table BAT_ICR_EXTSPECBUSI
(
    ACCOUNT_NO varchar(50) comment '贷款业务号',
    OCCURE_DATE varchar(8) comment '发生日期',
    SPEC_BUSI_TYPE varchar(5) comment '特殊交易类型',
    CHANGE_MONTHS varchar(10) comment '变更月数',
    SPEC_BUSI_SUM varchar(30) comment '发生金额',
    SPEC_BUSI_DETAIL varchar(30) comment '明细信息'
);
alter table BAT_ICR_EXTSPECBUSI comment '特殊交易信息接口 undefined';