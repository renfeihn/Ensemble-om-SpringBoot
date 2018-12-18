drop table if exists CIF_ANALOGUE_CLIENT;
/*==============================================================*/
/* Table: CIF_ANALOGUE_CLIENT                                           */
/*==============================================================*/
create table CIF_ANALOGUE_CLIENT
(
    ANALOGUE_GROUP varchar(50) not null comment '相似组',
    ANALOGUE_RULE_ID varchar(50) not null comment '相似规则编号',
    ANALAGUE_RULE_NAME varchar(50) comment '相似规则名称',
    GROUP_BRANCH varchar(20) not null comment '相似组有权处理机构',
    BRANCH varchar(20) not null comment '客户有权处理机构',
    CLIENT_NO varchar(20) not null comment '客户号',
    CH_CLIENT_NAME varchar(200) comment '客户名称（中）',
    CLIENT_NAME varchar(200) comment '客户名称（英）',
    DOCUMENT_TYPE varchar(3) comment '证件类型  CIF_DOCUMENT_TYPE',
    DOCUMENT_ID varchar(75) comment '证件号码',
    ISS_DATE varchar(8) comment '签发日期',
    EXPIRY_DATE varchar(8) comment '到期日期',
    ISS_AUTHORITY varchar(30) comment '签发机构',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间'
);
alter table CIF_ANALOGUE_CLIENT comment '相似客户信息表 undefined';