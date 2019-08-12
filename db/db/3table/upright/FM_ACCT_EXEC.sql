drop table if exists FM_ACCT_EXEC;
/*==============================================================*/
/* Table: FM_ACCT_EXEC                                           */
/*==============================================================*/
create table FM_ACCT_EXEC
(
    ACCT_EXEC varchar(30) not null comment '客户经理',
    ACCT_EXEC_NAME varchar(50) not null comment '客户经理姓名',
    MANAGER varchar(30) comment '主管经理',
    PROFIT_SEGMENT varchar(12) comment '利润中心',
    COLLAT_MGR_IND varchar(1) not null default 'N'   comment '是否担保经理 Y-是 N-否',
    BRANCH varchar(20) comment '归属机构',
    COMPANY varchar(20) comment '法人',
    DOCUMENT_TYPE varchar(3) comment '证件类型',
    DOCUMENT_ID varchar(75) comment '证件号码',
    ISS_COUNTRY varchar(3) comment '发证国家',
    CONTACT_ID varchar(50) comment '联系电话',
    ACCT_EXEC_TYPE varchar(3) comment '客户经理类型',
    ACCT_EXEC_STATUS varchar(3) comment '客户经理状态',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (ACCT_EXEC)
);
alter table FM_ACCT_EXEC comment '客户经理表 undefined';