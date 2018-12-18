drop table if exists BAT_CIF_ADDR_ELEC;
/*==============================================================*/
/* Table: BAT_CIF_ADDR_ELEC                                           */
/*==============================================================*/
create table BAT_CIF_ADDR_ELEC
(
    PARTY_ID varchar(20) comment '客户号',
    SEQ_NO varchar(50) comment '地址系统编号  ',
    ADDR_CLAS_CODE varchar(10) comment '地址分类代码  ',
    ADDR_TYPE_CODE varchar(10) comment '地址类型代码',
    ELECTRON_ADDRESS varchar(100) comment '电子地址信息',
    PREF_FLAG varchar(1) comment '是否首选地址',
    SRC_UPDATED_TS timestamp comment '源系统更新时间',
    UPDATED_SYSTEM_ID varchar(10) comment '更新外部系统号',
    INVALID_DATE varchar(8) comment '失效日期'
);
alter table BAT_CIF_ADDR_ELEC comment '客户电子地址信息 undefined';