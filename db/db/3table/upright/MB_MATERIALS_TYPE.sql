drop table if exists MB_MATERIALS_TYPE;
/*==============================================================*/
/* Table: MB_MATERIALS_TYPE                                           */
/*==============================================================*/
create table MB_MATERIALS_TYPE
(
    MATERIALS_TYPE varchar(1) not null comment '抵债物资类别',
    MATERIALS_TYPE_DESC varchar(200) not null comment '抵债物资类别描述',
    COMPANY varchar(20) comment '法人代码',
    TRAN_DATE varchar(8) comment '交易日期',
    USER_ID varchar(30) comment '交易柜员 FM_USER.USER_ID',
    LAST_CHANGE_DATE varchar(8) comment '最后变更日期 ',
    LAST_CHANGE_USER_ID varchar(30) comment '上次修改柜员',
    primary  key (MATERIALS_TYPE)
);
alter table MB_MATERIALS_TYPE comment '抵债物资类别定义 undefined';