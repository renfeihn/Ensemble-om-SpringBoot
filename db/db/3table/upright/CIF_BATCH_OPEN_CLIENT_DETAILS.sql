drop table if exists CIF_BATCH_OPEN_CLIENT_DETAILS;
/*==============================================================*/
/* Table: CIF_BATCH_OPEN_CLIENT_DETAILS                                           */
/*==============================================================*/
create table CIF_BATCH_OPEN_CLIENT_DETAILS
(
    BATCH_NO varchar(50) not null comment '批次号',
    SEQ_NO varchar(50) not null comment '序号',
    OPEN_BRANCH varchar(20) comment '开立机构',
    OPEN_DATE varchar(8) comment '开立时间',
    ERROR_DESC varchar(4000) comment '错误描述',
    TRAN_STATUS varchar(3) comment '处理状态',
    CLIENT_TYPE varchar(3) comment '客户类型',
    CATEGORY_TYPE varchar(3) comment '客户分类',
    CONTACT_TYPE varchar(3) comment '联系方式',
    DOCUMENT_TYPE varchar(3) comment '证件类型',
    DOCUMENT_ID varchar(75) comment '证件号码',
    ISS_COUNTRY varchar(3) comment '证件签发国家',
    EXPIRY_DATE varchar(8) comment '证件有效期',
    CH_CLIENT_NAME varchar(200) comment '客户中文名称',
    CLIENT_NAME varchar(200) comment '客户英文名称',
    SEX varchar(1) comment '性别',
    OCCUPATION_CODE varchar(6) comment '客户职业',
    PHONE_NO varchar(50) comment '固定电话',
    MOBILE_NO varchar(50) comment '移动电话',
    EMAIL varchar(50) comment '个人邮件',
    LOCATION varchar(50) comment '客户地址',
    CLIENT_NO varchar(20) comment '客户号',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (BATCH_NO,SEQ_NO)
);
alter table CIF_BATCH_OPEN_CLIENT_DETAILS comment '批量开立客户详细信息表 undefined';