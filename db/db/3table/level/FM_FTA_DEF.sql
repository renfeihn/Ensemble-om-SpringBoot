drop table if exists FM_FTA_DEF;
/*==============================================================*/
/* Table: FM_FTA_DEF                                           */
/*==============================================================*/
create table FM_FTA_DEF
(
    FTA_CODE varchar(10) not null comment '自贸区代码',
    FTA_DESC varchar(50) comment '自贸区名称',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    COUNTRY varchar(3) comment '国家',
    STATE varchar(10) comment '省、州 ',
    CITY varchar(8) comment '所在城市',
    FTA_TYPE varchar(17) comment '自贸区类型',
    FTA_NATURE varchar(17) comment '自贸区属性',
    FTE_FLAG varchar(15) comment '区内机构标识',
    FTI_FLAG varchar(15) comment '区内个人标识',
    FTN_FLAG varchar(15) comment '境外机构标识',
    FTU_FLAG varchar(15) comment '同业机构标识',
    FTF_FLAG varchar(15) comment '区内境外个人标识',
    primary  key (FTA_CODE)
);
alter table FM_FTA_DEF comment '自贸区代码定义 undefined';