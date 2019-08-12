drop table if exists RC_CB_BLACK_GRAY_LIST;
/*==============================================================*/
/* Table: RC_CB_BLACK_GRAY_LIST                                           */
/*==============================================================*/
create table RC_CB_BLACK_GRAY_LIST
(
    DATA_TYPE varchar(20) comment '数据类型  ',
    DATA_VALUE varchar(50) comment '数据值',
    OPERATOR varchar(1) comment ' 操作符 ：增加/减少 +/-',
    LIST_ORG varchar(12) comment '名单发送/审核机构 ',
    LIST_TYPE varchar(12) comment '名单类型代码',
    NAME varchar(200) comment '物品名称',
    ORG_CODE varchar(12) comment '银行/支付机构编号：支付清算系统编号，支付机构以Z开头',
    ORG_CONTACTOR varchar(60) comment '发送机构联系人',
    CONTACT_TEL varchar(20) comment '联系电话',
    AUDIT_TIMESTAMP varchar(17) comment '审核通过黑名单时间戳',
    LIST_TYPE_REMARK varchar(14) comment '名单类型冗余项',
    VALID_TERM varchar(29) comment '有效期',
    NARRATIVE varchar(300) comment '摘要，开户时的账号用途，销户时的销户原因',
    LIST_CATEGORY varchar(2) comment '名单种类代码',
    CREATE_USER_ID varchar(30) comment '录入柜员',
    LOAD_DATE varchar(8) comment '导入日期',
    BATCH_NO varchar(50) not null comment '批处理号',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_STATUS varchar(3) comment '状态 S:成功 F:失败',
    SEQ_NO varchar(50) not null comment '序号',
    ERROR_DESC varchar(4000) comment '未生成分录原因',
    primary  key (BATCH_NO,SEQ_NO)
);
alter table RC_CB_BLACK_GRAY_LIST comment '人行原始黑灰名单 undefined';