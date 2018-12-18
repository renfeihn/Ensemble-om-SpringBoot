drop table if exists MB_CONTACT_LIST;
/*==============================================================*/
/* Table: MB_CONTACT_LIST                                           */
/*==============================================================*/
create table MB_CONTACT_LIST
(
    INTERNAL_KEY Decimal(15) not null comment '账户标识符',
    LINKMAN_TYPE varchar(3) not null comment '联系人类型',
    LINKMAN_NAME varchar(200) comment '联系人名称',
    DOCUMENT_TYPE varchar(3) comment '联系人证件类型',
    DOCUMENT_ID varchar(75) comment '联系人证件号',
    PHONE_NO1 varchar(20) comment '联系人电话',
    PHONE_NO2 varchar(20) comment '联系人电话2',
    LAST_CHANGE_DATE varchar(8) comment '最后修改日期',
    LAST_CHANGE_USER_ID varchar(30) comment '最后修改柜员',
    STATUS varchar(3) not null comment '状态',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字'
);
alter table MB_CONTACT_LIST comment '账户联系人信息表 undefined';