drop table if exists OC_CHANGE_ACCT;
/*==============================================================*/
/* Table: OC_CHANGE_ACCT                                           */
/*==============================================================*/
create table OC_CHANGE_ACCT
(
    BRANCH varchar(20) comment '机构',
    CHANGE_ACCT_NO varchar(150) comment '对方账号',
    CHANGE_ACCT_NAME varchar(200) comment '对方账户名称',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间'
);
alter table OC_CHANGE_ACCT comment '同城票交常用交换账号表 undefined';