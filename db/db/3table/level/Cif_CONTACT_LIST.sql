drop table if exists Cif_contact_list;
/*==============================================================*/
/* Table: Cif_contact_list                                           */
/*==============================================================*/
create table Cif_contact_list
(
    CLIENT_KEY Decimal(15) not null comment '关系客户内部键',
    LINKMAN_TYPE varchar(3) not null comment '联系人类型 ',
    LINKMAN_NAME varchar(200) comment '联系人名称',
    DOCUMENT_TYPE varchar(3) not null comment '证件类型 CIF_DOCUMENT_TYPE.DOCUMENT_TYPE',
    DOCUMENT_ID varchar(75) not null comment '证件号码',
    PHONE_NO1 varchar(20) comment '联系人电话',
    PHONE_NO2 varchar(20) comment '联系人电话2',
    LAST_CHANGE_DATE varchar(8) comment '最后变更日期 ',
    LAST_CHANGE_USER_ID varchar(30) comment '上次修改柜员',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字'
);
alter table Cif_contact_list comment '客户联系人表 undefined';