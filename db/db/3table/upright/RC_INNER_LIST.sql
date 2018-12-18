drop table if exists RC_INNER_LIST;
/*==============================================================*/
/* Table: RC_INNER_LIST                                           */
/*==============================================================*/
create table RC_INNER_LIST
(
    DATA_TYPE varchar(20) comment '数据类型   AccountNumber ——卡/折号   IDType_IDNumber ——证件号   ClientNo ——客户号   CellPhoneNumber ——手机号   IPAddress ——IP地址',
    DATA_VALUE varchar(50) comment '数据值',
    LIST_ORG varchar(12) comment '发送机构:默认000000',
    LIST_TYPE varchar(12) comment '名单类型',
    NAME varchar(200) comment '名称：个人姓名、公司机构名称或支付账号名称',
    AUDIT_TIMESTAMP varchar(17) comment '审核通过黑名单时间戳',
    VALID_FROM varchar(8) comment '生效起始时间,格式 YYYYMMDDHHMMSS',
    VALID_THRU varchar(8) comment '生效截止时间,格式 YYYYMMDDHHMMSS',
    NARRATIVE varchar(300) comment '名单说明',
    LIST_CATEGORY varchar(2) comment '名单种类',
    CREATE_USER_ID varchar(30) comment '录入柜员',
    CREATE_DATE varchar(8) comment '录入日期',
    RECORD_STATUS varchar(1) comment '状态：A-新增 C-取消',
    CANCEL_USER_ID varchar(30) comment '取消柜员',
    CANCEL_DATE varchar(8) comment '取消日期',
    ISS_COUNTRY varchar(3) default 'CHN' comment '当数据类型为证件信息时，此处录入发证国家，默认CHN',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间'
);
alter table RC_INNER_LIST comment '行内名单 undefined';