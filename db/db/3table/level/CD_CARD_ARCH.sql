drop table if exists CD_CARD_ARCH;
/*==============================================================*/
/* Table: CD_CARD_ARCH                                           */
/*==============================================================*/
create table CD_CARD_ARCH
(
    CARD_NO varchar(50) not null comment '卡号',
    CLIENT_NO varchar(20) comment '客户号：持卡人客户号',
    PROD_TYPE varchar(50) not null comment '产品类型',
    CARD_STATUS varchar(3) not null comment '卡状态',
    LOST_STATUS varchar(3) not null comment '挂失状态',
    BRANCH varchar(20) comment '申请机构',
    APP_FLAG varchar(1) comment '是否附属卡',
    BASE_ACCT_NO varchar(150) comment '账号,卡对应的账号',
    MAIN_CARD_NO varchar(50) comment '副卡所属主卡卡号，APP_FLAG为Y时不能为空',
    VALID_FROM_DATE varchar(8) comment '有效期起始日期',
    VALID_THRU_DATE varchar(8) comment '有效期截止日期',
    CARD_CVN varchar(20) comment '卡片CVN信息',
    TREAD_PWD varchar(50) comment '交易密码，为启用',
    QUERY_PWD varchar(50) comment '查询密码，未启用',
    APPLY_USER_ID varchar(30) comment '申请柜员',
    ISSUE_USER_ID varchar(30) comment '发卡柜员',
    ISSUE_DATE varchar(8) comment '发卡日期',
    CLOSE_USER_ID varchar(30) comment '销卡柜员',
    CLOSE_DATE varchar(8) comment '销卡日期',
    CLOSE_REASON varchar(200) comment '销卡原因 ',
    CHANGE_CARD_NUM varchar(5) comment '换卡次数，若是同号换卡，记录换卡次数',
    IS_SIGN_FLAG varchar(1) comment '是否记名卡：0-否 1-是',
    CARD_MEDIUM varchar(1) comment '卡介质：0-磁条卡 1-IC卡',
    APPLY_NO varchar(15) comment '制卡申请编号，序列号',
    BATCH_JOB_NO varchar(50) comment '制卡文件批次号',
    ACCT_SEQ_NO varchar(8) comment '账户序列号：用卡做金融交易时需要确定子账户，通过序列号来确定',
    DAC_VALUE varchar(32) comment 'DAC值  防篡改加密',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    CARD_PB_UNION varchar(1) comment '卡折合一标志',
    primary  key (CARD_NO)
);
alter table CD_CARD_ARCH comment '卡片基本信息表 undefined';