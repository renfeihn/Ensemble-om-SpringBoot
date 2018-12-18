drop table if exists TB_IMPORT_ITEM_TYPE;
/*==============================================================*/
/* Table: TB_IMPORT_ITEM_TYPE                                           */
/*==============================================================*/
create table TB_IMPORT_ITEM_TYPE
(
    ITEM_TYPE varchar(50) not null comment '重要物品类型',
    ITEM_TYPE_DESC varchar(50) comment '物品类型描述',
    USER_ID varchar(30) comment '新增柜员',
    BRANCH_ID varchar(20) comment '新增机构',
    ADD_DATE varchar(8) comment '新增日期',
    ITEM_STATE varchar(3) comment '物品状态',
    UPDATE_USER_ID varchar(30) comment '修改柜员',
    UPDATE_BRANCH_ID varchar(20) comment '修改机构',
    UPDATE_DATE varchar(8) comment '更新日期',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (ITEM_TYPE)
);
alter table TB_IMPORT_ITEM_TYPE comment '物品类型信息表 undefined';