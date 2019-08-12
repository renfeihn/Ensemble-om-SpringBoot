drop table if exists CIF_CONTROL_CONTACT;
/*==============================================================*/
/* Table: CIF_CONTROL_CONTACT                                           */
/*==============================================================*/
create table CIF_CONTROL_CONTACT
(
    CLIENT_NO varchar(20) not null comment '客户号',
    CONTACT_ADDRESS_TYPE varchar(2) not null comment '联系地址类型',
    COUNTRY varchar(3) comment '国家',
    STATE varchar(10) comment '省、州  FM_STATE.STATE',
    CITY varchar(8) comment '所在城市',
    CONTACT_TEL varchar(20) comment '联系电话',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (CLIENT_NO,CONTACT_ADDRESS_TYPE)
);
alter table CIF_CONTROL_CONTACT comment '控制人税收居民联系表 undefined';