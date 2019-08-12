drop table if exists mb_gl_batch_tran_detail;
/*==============================================================*/
/* Table: mb_gl_batch_tran_detail                                           */
/*==============================================================*/
create table mb_gl_batch_tran_detail
(
    BATCH_NO varchar(50) not null comment '批处理号',
    SEQ_NO varchar(50) not null comment '序号',
    CLIENT_NO varchar(20) comment '客户号',
    BRANCH varchar(20) comment '机构代码',
    PROD_TYPE varchar(50) comment '产品类型 ',
    SUBJECT_CODE varchar(20) comment '科目代码',
    SUBJECT_DESC varchar(100) comment '科目描述',
    ACCT_NAME varchar(200) comment '账户名称，一般指中文账户名称',
    BASE_ACCT_NO varchar(150) comment '账号',
    ACCT_OPEN_DATE varchar(8) comment '账户开户日期',
    CCY varchar(3) comment '币种',
    BAL_UPD_TYPE varchar(1) comment '余额更新类型',
    ERROR_DESC varchar(4000) comment '错误原因',
    TRAN_STATUS varchar(3) comment '客户交易状态 ',
    primary  key (BATCH_NO,SEQ_NO)
);
alter table mb_gl_batch_tran_detail comment '内部账户批量开立详细信息表 undefined';