drop table if exists MB_TRAN_HIST_YHT;
/*==============================================================*/
/* Table: MB_TRAN_HIST_YHT                                           */
/*==============================================================*/
create table MB_TRAN_HIST_YHT
(
    OLD_REFERENCE varchar(50) not null comment '旧交易流水号 ',
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    BASE_ACCT_NO varchar(150) not null comment '账号',
    PROD_TYPE varchar(50) not null comment '产品类型',
    CCY varchar(3) not null comment '币种',
    ACCT_SEQ_NO varchar(8) not null comment '账户序列号',
    TRAN_AMT Decimal(17,2) not null comment '交易金额',
    TRAN_CCY varchar(3) not null comment '交易币种 ',
    REFERENCE varchar(50) not null comment '交易参考号',
    OTH_INTERNAL_KEY Decimal(15) not null comment '转账时对方账户标识符',
    OTH_BASE_ACCT_NO varchar(150) not null comment '对方帐号/卡号',
    OTH_ACCT_CCY varchar(3) not null comment '对方账户币种',
    OTH_PROD_TYPE varchar(50) not null comment '第三方产品类型',
    OTH_ACCT_SEQ_NO varchar(8) not null comment '对方账户序列号',
    USER_ID varchar(30) not null comment '交易柜员',
    BRANCH varchar(20) comment '机构代码',
    TRAN_TIME Decimal(11,0) not null comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码'
);
alter table MB_TRAN_HIST_YHT comment '一户通手工调整交易流水表 undefined';