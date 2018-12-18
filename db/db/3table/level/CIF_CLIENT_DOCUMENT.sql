drop table if exists CIF_CLIENT_DOCUMENT;
/*==============================================================*/
/* Table: CIF_CLIENT_DOCUMENT                                           */
/*==============================================================*/
create table CIF_CLIENT_DOCUMENT
(
    CLIENT_NO varchar(20) not null comment '客户号',
    ISS_COUNTRY varchar(3) not null comment '发证国家 FM_CURRENCY.COUNTRY',
    DOCUMENT_TYPE varchar(3) not null comment '证件类型 CIF_DOCUMENT_TYPE.DOCUMENT_TYPE',
    DOCUMENT_ID varchar(75) not null comment '证件号码',
    ISS_DATE varchar(8) comment '签发日期',
    EXPIRY_DATE varchar(8) comment '到期日期',
    ISS_PLACE varchar(30) comment '签发地',
    ISS_AUTHORITY varchar(30) comment '签发机构',
    PREF_FLAG varchar(1) not null comment '是否为首选地址 ',
    LAST_CHANGE_DATE varchar(8) comment '最后变更日期 ',
    LAST_CHANGE_USER_ID varchar(30) comment '上次修改柜员',
    DIST_CODE varchar(6) comment '地区代码',
    ISS_STATE varchar(10) comment '签发省、州  FM_STATE.STATE',
    ISS_CITY varchar(8) comment '签发城市 FM_CITY.CITY',
    NEW_DOCUMENT_ID varchar(75) comment '证件号码2',
    COMPANY varchar(20) comment '法人代码',
    INSPECT_DATE varchar(8) comment '上次核查日期',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (ISS_COUNTRY,DOCUMENT_TYPE,DOCUMENT_ID,PREF_FLAG)
);
alter table CIF_CLIENT_DOCUMENT comment '客户证件信息 undefined';

drop index CIF_CLIENT_DOC_IND1 on CIF_CLIENT_DOCUMENT;
/*==============================================================*/
/* Index: CIF_CLIENT_DOC_IND1                                           */
/*==============================================================*/
create index CIF_CLIENT_DOC_IND1 on CIF_CLIENT_DOCUMENT (
    ISS_COUNTRY,DOCUMENT_TYPE,DOCUMENT_ID
);

drop index CIF_CLIENT_DOC_IND2 on CIF_CLIENT_DOCUMENT;
/*==============================================================*/
/* Index: CIF_CLIENT_DOC_IND2                                           */
/*==============================================================*/
create index CIF_CLIENT_DOC_IND2 on CIF_CLIENT_DOCUMENT (
    CLIENT_NO
);