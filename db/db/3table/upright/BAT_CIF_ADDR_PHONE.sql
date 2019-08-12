drop table if exists BAT_CIF_ADDR_PHONE;
/*==============================================================*/
/* Table: BAT_CIF_ADDR_PHONE                                           */
/*==============================================================*/
create table BAT_CIF_ADDR_PHONE
(
    PARTY_ID varchar(20) comment '客户号',
    SEQ_NO varchar(50) comment '地址系统编号',
    ADDR_CLAS_CODE varchar(10) comment '地址分类代码',
    ADDR_TYPE_CODE varchar(10) comment '地址类型代码',
    COUNTRY_NUMBER varchar(10) comment '国家区号',
    DISTRICT_NUMBER varchar(10) comment '地区区号',
    PHONE_NUMBER varchar(40) comment '电话号码',
    EXT_NUMBER varchar(10) comment '分机号',
    SMS_FLAG varchar(10) comment '是否接受短信',
    BEST_CON_TIME varchar(10) comment '最佳联系时间',
    CON_LANGUAGE varchar(10) comment '联系语言',
    PREF_FLAG varchar(1) comment '是否首选电话',
    SRC_UPDATED_TS timestamp comment '源系统更新时间',
    UPDATED_SYSTEM_ID varchar(10) comment '更新外部系统号',
    INVALID_DATE varchar(8) comment '失效日期'
);
alter table BAT_CIF_ADDR_PHONE comment '客户电话信息 undefined';