drop table if exists MB_JUDICIARY_INFO;
/*==============================================================*/
/* Table: MB_JUDICIARY_INFO                                           */
/*==============================================================*/
create table MB_JUDICIARY_INFO
(
    TRAN_DATE varchar(8) comment '交易日期',
    DOCUMENT_ID varchar(75) comment '证件号码',
    DOCUMENT_TYPE varchar(3) comment '证件类型 CIF_DOCUMENT_TYPE.DOCUMENT_TYPE',
    CLIENT_NO varchar(20) comment '客户号',
    CLIENT_NAME varchar(200) comment '客户名称',
    BASE_ACCT_NO varchar(150) comment '账号',
    DEDUCTION_JUDICIARY_NAME varchar(200) comment '有权机关名称',
    LAW_NO varchar(50) comment '法律文书号',
    JUDICIARY_OFFICER_NAME varchar(200) comment '经办人1姓名',
    JUDICIARY_DOCUMENT_TYPE varchar(3) comment '经办人1证件类型  CIF_DOCUMENT_TYPE.DOCUMENT_TYPE',
    JUDICIARY_DOCUMENT_ID varchar(75) comment '经办人1证件号码',
    JUDICIARY_OTH_OFFICER_NAME varchar(200) comment '经办人2姓名',
    JUDICIARY_OTH_DOCUMENT_TYPE varchar(3) comment '经办人2证件类型  CIF_DOCUMENT_TYPE.DOCUMENT_TYPE',
    JUDICIARY_OTH_DOCUMENT_ID varchar(75) comment '经办人2证件号码',
    TRAN_BRANCH varchar(20) comment '交易支行 FM_BRANCH.BRANCH',
    USER_ID varchar(30) comment '交易柜员 FM_USER.USER_ID',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    AUTH_USER_ID varchar(30) comment '授权柜员'
);
alter table MB_JUDICIARY_INFO comment '司法查询登记簿 undefined';