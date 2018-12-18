drop table if exists MB_ACCT_UP_DOWN_INFO;
/*==============================================================*/
/* Table: MB_ACCT_UP_DOWN_INFO                                           */
/*==============================================================*/
create table MB_ACCT_UP_DOWN_INFO
(
    SEQ_NO varchar(50) comment '序号',
    INTERNAL_KEY Decimal(15) comment '帐户主键',
    BASE_ACCT_NO varchar(150) comment '账号',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    ACCT_CCY varchar(3) comment '账户币种，对于AIO账户和一本通账户，账户币种为XXX',
    PROD_TYPE varchar(50) comment '产品类型 ',
    OLD_ACCT_CLASS varchar(2) comment '升降级前账户类别',
    ACCT_CLASS varchar(2) comment '账户类别  ',
    UP_DOWN_TYPE varchar(10) comment '账户升降级表示符',
    USER_ID varchar(30) comment '使用柜员',
    TRAN_BRANCH varchar(20) comment '交易机构',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (SEQ_NO)
);
alter table MB_ACCT_UP_DOWN_INFO comment 'II/III类账户升降级信息表 undefined';