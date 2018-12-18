drop table if exists RC_ALL_LIST;
/*==============================================================*/
/* Table: RC_ALL_LIST                                           */
/*==============================================================*/
create table RC_ALL_LIST
(
    DATA_TYPE varchar(20) comment '数据类型   AccountNumber ——卡/折号   IDType_IDNumber ——证件号   ClientNo ——客户号   CellPhoneNumber ——手机号   IPAddress ——IP地址',
    DATA_VALUE varchar(50) comment '数据值',
    LIST_ORG varchar(12) comment '发送/审核机构',
    LIST_CATEGORY varchar(2) comment '名单种类',
    LIST_TYPE varchar(12) comment '名单类型',
    NAME varchar(200) comment '名称：个人姓名、公司机构名称或支付账号名称',
    VALID_FROM varchar(8) comment '生效起始时间,格式 YYYYMMDDHHMMSS',
    VALID_THRU varchar(8) comment '生效截止时间,格式 YYYYMMDDHHMMSS',
    NARRATIVE varchar(300) comment '名单说明',
    LOAD_DATE varchar(8) comment '导入日期',
    ORG_CODE varchar(12) comment '银行/支付机构编号：支付清算系统编号，支付机构以Z开头',
    ORG_CONTACTOR varchar(60) comment '发送机构联系人',
    CONTACT_TEL varchar(20) comment '发送机构联系人电话',
    AUDIT_TIMESTAMP varchar(17) comment '审核通过黑名单时间戳',
    LIST_TYPE_REMARK varchar(14) comment '名单类型冗余项',
    ISS_COUNTRY varchar(3) comment '签发国家',
    CLIENT_NO varchar(20) comment '如果data_type= IDType_IDNumber ，这里存放证件信息对应的核心系统客户号，如过无对应客户号则为空',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间'
);
alter table RC_ALL_LIST comment '加工后的行内外当前生效的全部名单，银行业务系统的检查基准 undefined';