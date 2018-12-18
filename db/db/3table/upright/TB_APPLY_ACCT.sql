drop table if exists TB_APPLY_ACCT;
/*==============================================================*/
/* Table: TB_APPLY_ACCT                                           */
/*==============================================================*/
create table TB_APPLY_ACCT
(
    APPLY_ACCT_ID varchar(10) not null comment '上门收款单位编号',
    ACCT_NO varchar(150) not null comment '单位账户',
    ACCT_NAME varchar(200) comment '账户名称',
    ACCT_TYPE varchar(10) not null comment '账户类型',
    ACCT_CCY varchar(3) not null comment '账户币种',
    BRANCH varchar(20) not null comment '机构编号',
    STATUS varchar(3) not null comment '状态',
    CREATE_BRANCH varchar(20) not null comment '创建柜员所属机构编号',
    USER_ID varchar(30) not null comment '创建柜员编号',
    CREATE_DATE varchar(8) not null comment '创建日期',
    UPDATE_DATE varchar(8) comment '更新日期',
    REFERENCE varchar(50) comment '交易参考号',
    COMPANY varchar(20) comment '法人',
    START_DATE varchar(8) not null comment '开始日期',
    END_DATE varchar(8) not null comment '终止日期',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (APPLY_ACCT_ID)
);
alter table TB_APPLY_ACCT comment '上门收款单位表 undefined';