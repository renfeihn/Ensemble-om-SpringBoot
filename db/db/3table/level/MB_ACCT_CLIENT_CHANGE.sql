drop table if exists MB_ACCT_CLIENT_CHANGE;
/*==============================================================*/
/* Table: MB_ACCT_CLIENT_CHANGE                                           */
/*==============================================================*/
create table MB_ACCT_CLIENT_CHANGE
(
    SEQ_NO varchar(50) not null comment '序号',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    BASE_ACCT_NO varchar(150) comment '账号',
    ACCT_CCY varchar(3) comment '账户币种',
    PROD_TYPE varchar(50) comment '产品类型',
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    OLD_CLIENT_NO varchar(20) not null comment '原系统客户号',
    NEW_CLIENT_NO varchar(20) not null comment '新客户号',
    CHANGE_DATE varchar(8) not null comment '修改日期',
    CHANGE_USER_ID varchar(30) not null comment '更换柜员，指实际发卡柜员',
    AUTH_USER_ID varchar(30) not null comment '授权柜员',
    BRANCH varchar(20) not null comment '机构代码',
    TRAN_TIMESTAMP varchar(17) not null comment '时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (SEQ_NO,INTERNAL_KEY)
);
alter table MB_ACCT_CLIENT_CHANGE comment '账户持有人信息变更表 undefined';