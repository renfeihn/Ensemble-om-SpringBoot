drop table if exists MB_BATCH_LAW_ATTACH;
/*==============================================================*/
/* Table: MB_BATCH_LAW_ATTACH                                           */
/*==============================================================*/
create table MB_BATCH_LAW_ATTACH
(
    BATCH_NO varchar(50) not null comment '批次号',
    DEDUCTION_JUDICIARY_NAME varchar(200) not null comment '有权机关名称',
    LAW_NO varchar(50) not null comment '法律文书号',
    JUDICIARY_OFFICER_NAME varchar(200) not null comment '经办人1姓名',
    JUDICIARY_DOCUMENT_TYPE varchar(3) not null comment '经办人1证件类型',
    JUDICIARY_DOCUMENT_ID varchar(75) not null comment '经办人1证件号码',
    JUDICIARY_OTH_OFFICER_NAME varchar(200) not null comment '经办人2姓名',
    JUDICIARY_OTH_DOCUMENT_TYPE varchar(3) not null comment '经办人2证件类型',
    JUDICIARY_OTH_DOCUMENT_ID varchar(75) not null comment '经办人2证件号码',
    MAIN_FILE_NAME varchar(300) comment '汇总文件名称',
    DETAIL_FILE_NAME varchar(300) comment '明细文件名称',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (BATCH_NO)
);
alter table MB_BATCH_LAW_ATTACH comment '批量司法查询附加表 undefined';