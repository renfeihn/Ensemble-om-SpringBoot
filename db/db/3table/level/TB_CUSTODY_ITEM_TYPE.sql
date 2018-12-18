drop table if exists TB_CUSTODY_ITEM_TYPE;
/*==============================================================*/
/* Table: TB_CUSTODY_ITEM_TYPE                                           */
/*==============================================================*/
create table TB_CUSTODY_ITEM_TYPE
(
    CUSTODY_TYPE varchar(4) not null comment '代管物品种类',
    CUSTODY_TYPE_DESC varchar(50) comment '种类描述',
    CUSTODY_UNIT varchar(30) comment '代保管品单位',
    CCY varchar(3) comment '币种',
    ACCOUNT_WAY varchar(2) comment '记账方式（0-按数量，1按金额）',
    VOUCHER_INPUT_FLAG varchar(2) comment '凭证号是否必输（0-是，1-否）',
    USER_ID varchar(30) comment '新增柜员',
    BRANCH_ID varchar(20) comment '新增机构',
    ADD_DATE varchar(8) comment '新增日期',
    ITEM_STATE varchar(3) comment '状态(N-新增、U-修改)',
    UPDATE_USER_ID varchar(30) comment '修改柜员',
    UPDATE_BRANCH_ID varchar(20) comment '修改机构',
    UPDATE_DATE varchar(8) comment '修改日期',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (CUSTODY_TYPE)
);
alter table TB_CUSTODY_ITEM_TYPE comment '代保管物品种类信息表 undefined';