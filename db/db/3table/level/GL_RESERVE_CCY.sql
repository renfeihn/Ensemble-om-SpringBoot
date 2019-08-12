drop table if exists GL_RESERVE_CCY;
/*==============================================================*/
/* Table: GL_RESERVE_CCY                                           */
/*==============================================================*/
create table GL_RESERVE_CCY
(
    BRANCH varchar(20) not null comment '机构代码',
    PAY_CCY varchar(3) not null comment '缴存币种  FM_CURRENCY.CCY',
    PAY_TYPE varchar(8) not null comment '准备金类型 GL_RESERVE_PAY_CCY.PAY_TYPE',
    BRANCH_PAY_ACCT varchar(50) comment '本机构缴存账号',
    ATTACH_BRANCH_PAY_ACCT varchar(50) comment '上级机构缴存账号',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    SEQ_NO varchar(50) not null comment '序号',
    primary  key (SEQ_NO)
);
alter table GL_RESERVE_CCY comment '准备金缴存币种定义表 undefined';