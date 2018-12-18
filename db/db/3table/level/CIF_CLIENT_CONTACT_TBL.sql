drop table if exists CIF_CLIENT_CONTACT_TBL;
/*==============================================================*/
/* Table: CIF_CLIENT_CONTACT_TBL                                           */
/*==============================================================*/
create table CIF_CLIENT_CONTACT_TBL
(
    CLIENT_NO varchar(20) not null comment '客户号',
    CONTACT_TYPE varchar(3) not null comment '联系类型',
    ROUTE varchar(8) not null comment '联系方式',
    ADDRESS varchar(140) not null comment '地址',
    CONTACT_TEL varchar(20) comment '联系电话',
    SALUTATION varchar(20) comment '称呼',
    POSTAL_CODE varchar(6) comment '邮政编码',
    PREF_FLAG varchar(1) comment '是否为首选地址 Y-首选联系信息 N-不是首选联系信息',
    COUNTRY_TEL varchar(4) comment '国家电话区号',
    CITY_TEL varchar(4) comment '城市电话区号',
    LAST_CHANGE_DATE varchar(8) comment '更新日期',
    LAST_CHANGE_USER_ID varchar(30) comment '更新用户',
    ADDR_MODE varchar(1) comment '地址模式 1-中文方式 2-英文方式',
    COUNTRY varchar(3) comment '国家',
    STATE varchar(10) comment '省、州',
    CITY varchar(8) comment '城市',
    ADDRESS1 varchar(140) comment '地址1',
    MOBILE_PHONE varchar(20) comment '手机号码',
    LINKMAN varchar(25) comment '对账联系人',
    COMPANY varchar(20) comment '法人代码',
    BIC_CODE varchar(12) comment 'BIC代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (CLIENT_NO,CONTACT_TYPE)
);
alter table CIF_CLIENT_CONTACT_TBL comment '客户联系信息 undefined';