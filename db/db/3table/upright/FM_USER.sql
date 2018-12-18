drop table if exists FM_USER;
/*==============================================================*/
/* Table: FM_USER                                           */
/*==============================================================*/
create table FM_USER
(
    USER_ID varchar(30) not null comment '柜员ID',
    USER_NAME varchar(200) not null comment '柜员名称',
    DOCUMENT_TYPE varchar(3) comment '证件类型 ',
    DOCUMENT_ID varchar(75) comment '证件号码',
    USER_LEVEL varchar(1) comment '柜员级别 0~9 9为最高级别',
    BRANCH varchar(20) comment '机构',
    DEPARTMENT varchar(3) comment '部门',
    USER_LANG varchar(20) comment '柜员语言',
    ACCT_EXEC varchar(30) comment '客户经理',
    TBOOK varchar(2) comment '账薄 默认UA',
    PROFIT_CENTRE varchar(12) comment '利润中心',
    APPLICATION_USER varchar(1) comment '是否应用柜员',
    USER_DESC varchar(300) comment '柜员描述信息',
    EOD_SOD_ENABLED varchar(1) not null comment '是否批处理用户',
    ACCOUNT_STATUS varchar(32) not null comment '柜员状态 ',
    AUTH_LEVEL varchar(1) comment '授权级别',
    USER_TYPE varchar(100) not null comment '柜员类别 ',
    INTER_BRANCH_IND varchar(1) not null comment '跨机构处理标志 ',
    MAKER varchar(30) comment '创建柜员',
    CHECKER varchar(30) comment '复核柜员',
    MAKE_DATE varchar(8) comment '创建日期',
    CHECK_DATE varchar(8) comment '复核日期',
    INTER_BRANCH_CL varchar(1) default 'N' comment '贷款业务机构',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (USER_ID)
);
alter table FM_USER comment '核心柜员信息表 undefined';