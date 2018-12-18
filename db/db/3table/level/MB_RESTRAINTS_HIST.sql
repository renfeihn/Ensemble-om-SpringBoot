drop table if exists MB_RESTRAINTS_HIST;
/*==============================================================*/
/* Table: MB_RESTRAINTS_HIST                                           */
/*==============================================================*/
create table MB_RESTRAINTS_HIST
(
    SEQ_NO varchar(50) not null comment '序号',
    INTERNAL_KEY Decimal(15) comment '帐户主键',
    RESTRAINT_TYPE varchar(3) comment '限制类型 ',
    RESTRAINT_SEQ_NO varchar(50) comment '冻结编号',
    INIT_SEQ_NO varchar(50) comment '初始限制流水号',
    START_DATE varchar(8) comment '生效日期',
    END_DATE varchar(8) comment '终止日期',
    PLEDGED_AMT Decimal(17,2) comment '限制金额',
    RES_ACCT_RANGE varchar(1) comment '限制账户范围   ',
    LAST_CHANGE_DATE varchar(8) comment '最后变更日期 ',
    LAST_CHANGE_USER_ID varchar(30) comment '上次修改柜员',
    CHANNEL_SEQ_NO varchar(50) comment '渠道流水号',
    SOURCE_TYPE varchar(10) comment '渠道',
    BASE_ACCT_NO varchar(150) comment '账号',
    SYSTEM_PHASE varchar(3) comment '系统所处的阶段',
    MAIN_FLAG varchar(1) comment '主、分帐户类型标志 ',
    STATUS varchar(3) comment '状态',
    LAST_STATUS varchar(3) comment '前一限制状态',
    NARRATIVE varchar(300) comment '摘要，开户时的账号用途，销户时的销户原因',
    RESTRAINT_JUDICIARY_NAME varchar(200) comment '冻结机关名称',
    RESTRAINT_LAW_NO varchar(50) comment '冻结机关法律文书号',
    RELEASE_JUDICIARY_NAME varchar(200) comment '解冻机关名称',
    RELEASE_LAW_NO varchar(50) comment '解冻机关法律文书号',
    DEDUCTION_JUDICIARY_NAME varchar(200) comment '有权机关名称',
    DEDUCTION_LAW_NO varchar(50) comment '扣划法律文书号',
    JUDICIARY_OFFICER_NAME varchar(200) comment '经办人1姓名',
    JUDICIARY_DOCUMENT_TYPE varchar(3) comment '经办人1证件类型  ',
    JUDICIARY_DOCUMENT_ID varchar(75) comment '经办人1证件号码',
    JUDICIARY_OTH_OFFICER_NAME varchar(200) comment '经办人2姓名',
    JUDICIARY_OTH_DOCUMENT_TYPE varchar(3) comment '经办人2证件类型  ',
    JUDICIARY_OTH_DOCUMENT_ID varchar(75) comment '经办人2证件号码',
    AUTH_USER_ID varchar(30) comment '授权柜员',
    COMPANY varchar(20) comment '法人代码',
    REFERENCE varchar(50) comment '交易参考号',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    RES_PRIORITY varchar(5) comment '冻结级别(限制级别) ',
    SUB_RESTRAINT_CLASS varchar(2) comment '子限制类别',
    BRANCH varchar(20) comment '机构代码',
    primary  key (SEQ_NO)
);
alter table MB_RESTRAINTS_HIST comment '帐户限制历史表 undefined';