drop table if exists mb_branch_change_detail;
/*==============================================================*/
/* Table: mb_branch_change_detail                                           */
/*==============================================================*/
create table mb_branch_change_detail
(
    SEQ_NO varchar(50) comment '序号',
    BASE_ACCT_NO varchar(150) comment '账号',
    ACCT_NAME varchar(200) comment '账户名称，一般指中文账户名称',
    SOURCE_MODULE varchar(10) comment '模块',
    FLAG varchar(1) comment '处理标志',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    AMEND_SEQ_NO varchar(50) comment '变更序号'
);
alter table mb_branch_change_detail comment '日终批处理文件明细登记表 undefined';