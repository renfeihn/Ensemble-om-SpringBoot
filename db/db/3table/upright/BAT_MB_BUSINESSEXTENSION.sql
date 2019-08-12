drop table if exists BAT_MB_BUSINESSEXTENSION;
/*==============================================================*/
/* Table: BAT_MB_BUSINESSEXTENSION                                           */
/*==============================================================*/
create table BAT_MB_BUSINESSEXTENSION
(
    RELATIVESERIALNO varchar(30) comment '业务标识号',
    OCCURDATE varchar(8) comment '发生日期',
    EXTENSIONSUM Decimal(17,2) comment '展期金额',
    EXTENDRATE Decimal(15,8) comment '展期后利率',
    EXTENDMATURITY varchar(8) comment '展期后到期日',
    ORGID varchar(20) comment '机构号'
);
alter table BAT_MB_BUSINESSEXTENSION comment '信贷展期信息 undefined';