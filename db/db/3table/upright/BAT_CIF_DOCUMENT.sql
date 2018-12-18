drop table if exists BAT_CIF_DOCUMENT;
/*==============================================================*/
/* Table: BAT_CIF_DOCUMENT                                           */
/*==============================================================*/
create table BAT_CIF_DOCUMENT
(
    PARTY_ID varchar(20) comment '客户号',
    SEQ_NO varchar(50) comment '序号',
    GOVE_IDEN_NUM varchar(100) comment '政府分配标识号',
    GOVE_IDEN_NUM_TYPE_CODE varchar(10) comment '证件类型代码',
    ISS_COUNTRY varchar(3) comment '发证国家',
    ISS_DATE varchar(8) comment '签发日期',
    EXPIRY_DATE varchar(8) comment '到期日期',
    ISS_STATE varchar(10) comment '签发省、州',
    ISS_CITY varchar(8) comment '签发城市',
    DIST_CODE varchar(6) comment '地区代码',
    ISS_PLACE varchar(30) comment '签发地',
    ISS_UNIT varchar(60) comment '签发机关',
    VALID_FLAG varchar(10) comment '证件有效标志',
    PREF_FLAG varchar(1) comment '是否为首选地址 ',
    ID_CHECK_FLAG varchar(10) comment '是否联网核查',
    SRC_UPDATED_TS timestamp comment '源系统更新时间',
    UPDATED_SYSTEM_ID varchar(10) comment '更新外部系统号',
    INVALID_DATE varchar(8) comment '失效日期'
);
alter table BAT_CIF_DOCUMENT comment '客户证件信息 undefined';