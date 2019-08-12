drop table if exists BAT_SUBJECT_HISTORY;
/*==============================================================*/
/* Table: BAT_SUBJECT_HISTORY                                           */
/*==============================================================*/
create table BAT_SUBJECT_HISTORY
(
    SUBJECT_NO varchar(20) comment '科目号',
    CURRENCY varchar(20) comment '币种',
    INPUT_DATE varchar(8) comment '发生日期',
    DEBIT_COUNT Decimal(22) comment '借方笔数',
    CREDIT_COUNT Decimal(22) comment '贷方笔数',
    DEBIT_SUM Decimal(21,6) comment '借方发生额',
    CREDIT_SUM Decimal(21,6) comment '贷方发生额',
    BALANCE Decimal(17,2) comment '余额',
    BALANCE_DIRECTION varchar(5) comment '余额方向',
    ORG_ID varchar(20) comment '机构号'
);
alter table BAT_SUBJECT_HISTORY comment '科目余额信息接口 undefined';