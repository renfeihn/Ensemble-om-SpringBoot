drop table if exists MB_COMMISSION;
/*==============================================================*/
/* Table: MB_COMMISSION                                           */
/*==============================================================*/
create table MB_COMMISSION
(
    COMMISSION_DOC_TYPE varchar(3) not null comment '代办人证件类型',
    COMMISSION_DOC_ID varchar(75) not null comment '代办人证件号码',
    COMMISSION_CLIENT_NAME varchar(200) comment '代办人客户名称',
    COMMISSION_CLIENT_NO varchar(20) comment '代办人客户号',
    COUNTRY varchar(3) comment '国家',
    CHECK_DATE varchar(8) not null comment '检查日期',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (COMMISSION_DOC_TYPE,COMMISSION_DOC_ID,CHECK_DATE)
);
alter table MB_COMMISSION comment '代办人核查登记表 undefined';