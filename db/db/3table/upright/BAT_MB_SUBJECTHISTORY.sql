drop table if exists BAT_MB_SUBJECTHISTORY;
/*==============================================================*/
/* Table: BAT_MB_SUBJECTHISTORY                                           */
/*==============================================================*/
create table BAT_MB_SUBJECTHISTORY
(
    SUBJECTNO varchar(20) comment '科目',
    CURRENCY varchar(20) comment '币种',
    INPUTDATE varchar(8) comment '发生日期',
    DEBITCOUNT Decimal(22,0) comment '借方笔数',
    CREDITCOUNT Decimal(22,0) comment '贷方笔数',
    DEBITSUM Decimal(22,0) comment '借方发生额',
    CREDITSUM Decimal(22,0) comment '贷方发生额',
    BALANCE Decimal(17,2) comment '余额',
    BALANCEDIRECTION varchar(1) comment '余额方向',
    ORGID varchar(20) comment '机构'
);
alter table BAT_MB_SUBJECTHISTORY comment '科目余额 undefined';