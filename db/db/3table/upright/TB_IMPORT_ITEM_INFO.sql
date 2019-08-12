drop table if exists TB_IMPORT_ITEM_INFO;
/*==============================================================*/
/* Table: TB_IMPORT_ITEM_INFO                                           */
/*==============================================================*/
create table TB_IMPORT_ITEM_INFO
(
    ITEM_TYPE varchar(50) not null comment '重要物品类型',
    ITEM_SUBTYPE varchar(50) not null comment '重要物品子类型',
    USER_ID varchar(30) not null comment '所属柜员',
    BRANCH_ID varchar(20) not null comment '所属机构',
    ITEM_ID varchar(20) not null comment '重要物品编号',
    ITEM_STATE varchar(3) not null comment '物品状态',
    REMARK varchar(200) comment '备注',
    LAST_USER_ID varchar(30) comment '上一所属柜员',
    LAST_BRANCH_ID varchar(20) comment '上一所属机构',
    END_USER_ID varchar(30) comment '最后操作柜员',
    REGIST_DATE varchar(8) not null comment '登记日期',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (ITEM_TYPE,ITEM_SUBTYPE,ITEM_ID)
);
alter table TB_IMPORT_ITEM_INFO comment '重要物品登记信息表 undefined';