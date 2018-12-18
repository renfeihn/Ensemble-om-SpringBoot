drop table if exists BAT_CIF_ADDR_STREET;
/*==============================================================*/
/* Table: BAT_CIF_ADDR_STREET                                           */
/*==============================================================*/
create table BAT_CIF_ADDR_STREET
(
    PARTY_ID varchar(20) comment '客户号',
    SEQ_NO varchar(50) comment '地址系统编号',
    ADDR_CLAS_CODE varchar(10) comment '地址分类代码',
    ADDR_TYPE_CODE varchar(10) comment '地址类型代码',
    POSTCODE varchar(10) comment '邮政编码',
    COUNTRY_CODE varchar(10) comment '国家代码',
    PROVINCE_CODE varchar(10) comment '省、州代码',
    CITY_CODE varchar(10) comment '城市 ',
    ADDR_STREET1 varchar(200) comment '地址1',
    ADDR_STREET2 varchar(200) comment '地址2',
    ADDR_STREET3 varchar(200) comment '地址3',
    PREF_FLAG varchar(1) comment '是否首选地址',
    SRC_UPDATED_TS timestamp comment '源系统更新时间',
    UPDATED_SYSTEM_ID varchar(10) comment '更新外部系统号',
    INVALID_DATE varchar(8) comment '失效日期'
);
alter table BAT_CIF_ADDR_STREET comment '客户地址信息 undefined';