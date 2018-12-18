drop table if exists CIF_CLIENT_COMMISSION;
/*==============================================================*/
/* Table: CIF_CLIENT_COMMISSION                                           */
/*==============================================================*/
create table CIF_CLIENT_COMMISSION
(
    CLIENT_NO varchar(20) not null comment '客户号',
    AGENT varchar(50) comment '代办人',
    AGENT_DOC_ID varchar(75) comment '代办人证件号码',
    AGENT_DOC_TYPE varchar(3) comment '代办人证件类型，参数表：  CIF_DOCUMENT_TYPE  ',
    AGENT_EXPIRY_DATE varchar(8) comment '代办人证件到期日',
    LAST_CHANGE_DATE varchar(8) comment '更新日期',
    LAST_CHANGE_USER_ID varchar(30) comment '更新用户',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (CLIENT_NO)
);
alter table CIF_CLIENT_COMMISSION comment '客户开立代办人信息 undefined';