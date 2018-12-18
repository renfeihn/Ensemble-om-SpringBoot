drop table if exists CIF_CLIENT_USED_INFO;
/*==============================================================*/
/* Table: CIF_CLIENT_USED_INFO                                           */
/*==============================================================*/
create table CIF_CLIENT_USED_INFO
(
    CLIENT_NO varchar(20) not null comment '客户号',
    INFO_TYPE varchar(3) not null comment '信息类型：  01 曾用名（中）  02 曾用名（英）    03 曾用国税登记号     04 曾用地税登记号     05 曾用营业执照号码    06 法人变更信息',
    USED_INFO varchar(50) comment '曾用信息',
    DOCUMENT_TYPE varchar(3) comment '变更前的法人证件类型',
    DOCUMENT_ID varchar(75) comment '变更前的法人证件号',
    LAST_CHANGE_DATE varchar(8) comment '更新日期',
    LAST_CHANGE_USER_ID varchar(30) comment '更新用户',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字'
);
alter table CIF_CLIENT_USED_INFO comment '客户曾用名曾用证件信息表 undefined';