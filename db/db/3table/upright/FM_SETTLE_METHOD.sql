drop table if exists FM_SETTLE_METHOD;
/*==============================================================*/
/* Table: FM_SETTLE_METHOD                                           */
/*==============================================================*/
create table FM_SETTLE_METHOD
(
    SETTLE_METHOD varchar(3) not null comment '结算方法',
    SETTLE_METHOD_DESC varchar(20) not null comment '结算方法描述',
    PAY_REC varchar(1) not null comment '收付标记 ',
    SETTLE_ACCT_TYPE varchar(1) not null comment '结算帐户类型 ',
    DEST_CLIENT_TYPE varchar(1) not null comment '目标客户类型',
    ROUTE varchar(8) not null comment '联系方式类型 ',
    MEDIA varchar(8) not null comment '报表格式 ',
    FORMAT varchar(8) not null comment '电位类型 电文的类型',
    VERIFY_SECURITY varchar(1) not null comment '安全复合 ',
    RELEASE_SECURITY varchar(1) not null comment '安全释放',
    DEST_TYPE varchar(1) comment '目标类型',
    DEST_ID varchar(15) comment '目标ID',
    PRINT_MODE varchar(4) comment '打印模式',
    DP_SETTLE varchar(1) comment '是否为DP清算',
    IS_CASH varchar(1) comment '是否现金 ',
    DOC_TYPE varchar(10) comment '证件类型',
    CONTACT_TYPE varchar(3) comment '联系类型 取值',
    SENDERS_CONTACT_TYPE varchar(3) comment '发报方联系类型 取值',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (SETTLE_METHOD,PAY_REC)
);
alter table FM_SETTLE_METHOD comment '结算方法定义表 undefined';