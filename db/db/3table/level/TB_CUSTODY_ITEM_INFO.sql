drop table if exists TB_CUSTODY_ITEM_INFO;
/*==============================================================*/
/* Table: TB_CUSTODY_ITEM_INFO                                           */
/*==============================================================*/
create table TB_CUSTODY_ITEM_INFO
(
    CUSTODY_TYPE varchar(4) not null comment '代管物品种类',
    ITEM_ID varchar(20) not null comment '物品编号',
    BRANCH_ID varchar(20) comment '所属机构',
    USER_ID varchar(30) comment '所属柜员',
    SUM varchar(15) comment '数量',
    AMT Decimal(17,2) comment '金额',
    VOUCHER_ID varchar(30) comment '凭证号码',
    COMPANY_NAME varchar(50) comment '单位名称',
    IN_DATE varchar(8) comment '入库日期',
    ITEM_STATE varchar(3) comment '状态(A-已入库，C-已出库，D-已删除)',
    STORE_PERSON varchar(50) comment '存放人',
    CONTACT_TEL varchar(20) comment '联系电话',
    DRAW_PERSON varchar(50) comment '领取人',
    APPR_USER_ID varchar(30) comment '复核柜员',
    IN_USER_ID varchar(30) comment '入库柜员',
    OUT_USER_ID varchar(30) comment '出库柜员',
    OUT_DATE varchar(8) comment '出库日期',
    UPDATE_DATE varchar(8) comment '修改日期',
    HANDOVER_DATE varchar(8) comment '交接日期',
    DELETE_DATE varchar(8) comment '删除日期',
    LAST_USER_ID varchar(30) comment '上一所属柜员',
    LAST_BRANCH_ID varchar(20) comment '上一所属机构',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    CCY varchar(3) comment '币种',
    primary  key (CUSTODY_TYPE,ITEM_ID)
);
alter table TB_CUSTODY_ITEM_INFO comment '代保管物品管理信息表 undefined';