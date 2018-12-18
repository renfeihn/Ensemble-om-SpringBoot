drop table if exists GL_RESERVE_OUT_PAY_TYPE;
/*==============================================================*/
/* Table: GL_RESERVE_OUT_PAY_TYPE                                           */
/*==============================================================*/
create table GL_RESERVE_OUT_PAY_TYPE
(
    PAY_TYPE varchar(8) not null comment '准备金类型',
    PAY_TYPE_DESC varchar(50) comment '准备金类型描述信息',
    PAY_ACCT_TYPE varchar(10) comment '缴存账户类型',
    PAY_ACCT_CLIENT_NO varchar(20) comment '缴存客户号',
    PAY_ACCT_CLIENT_NAME varchar(200) comment '缴存客户名称',
    ADJUST_ACCT_TYPE varchar(10) comment '对方账户类型',
    ADJUST_ACCT_CLIENT_NO varchar(20) comment '对方客户号',
    ADJUST_ACCT_CLIENT_NAME varchar(200) comment '客户名称',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    COMPANY varchar(20) comment '法人代码',
    primary  key (PAY_TYPE)
);
alter table GL_RESERVE_OUT_PAY_TYPE comment '对外缴存准备金定义 undefined';