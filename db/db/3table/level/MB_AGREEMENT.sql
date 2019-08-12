drop table if exists MB_AGREEMENT;
/*==============================================================*/
/* Table: MB_AGREEMENT                                           */
/*==============================================================*/
create table MB_AGREEMENT
(
    AGREEMENT_ID varchar(30) not null comment '协议号',
    AGREEMENT_TYPE varchar(3) not null comment '协议类型 ',
    AGRE_PROD_TYPE varchar(50) comment '签约主产品类型',
    START_DATE varchar(8) not null comment '开始日期',
    END_DATE varchar(8) not null comment '终止日期',
    AGREEMENT_KEY_TYPE varchar(3) comment '协议键类型',
    AGREEMENT_KEY varchar(30) comment '协议键值',
    BASE_ACCT_NO varchar(150) comment '账号',
    PROD_TYPE varchar(50) comment '产品类型',
    CCY varchar(3) comment '账户币种，对于AIO账户和一本通账户，账户币种为XXX',
    ACCT_SEQ_NO varchar(8) comment '账户序列号，采用顺序数字，表示在同一账号、账户类型、币种下的不同子账户，比如定期存款序列号',
    CLIENT_NO varchar(20) comment '客户号',
    CLIENT_SHORT varchar(30) comment '客户简称',
    AGREEMENT_STATUS varchar(3) comment '协议状态',
    BRANCH varchar(20) comment '签约机构',
    AGREEMENT_OPEN_DATE varchar(8) comment '签约时间',
    USER_ID varchar(30) comment '签约柜员',
    LAST_CHANGE_USER_ID varchar(30) comment '上一修改柜员',
    LAST_CHANGE_DATE varchar(8) comment '上一修改时间',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    CLOSE_ACCT_FLAG varchar(1) comment '签约后是否允许销户',
    OPPOSITE_INTERNAL_KEY Decimal(15) comment '签约对方账号内部键',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    ACCT_NAME varchar(200) comment '账户名称，一般指中文账户名称',
    primary  key (AGREEMENT_ID)
);
alter table MB_AGREEMENT comment '合同/协议信息表 undefined';

drop index MB_AGREEMENT_IND2 on MB_AGREEMENT;
/*==============================================================*/
/* Index: MB_AGREEMENT_IND2                                           */
/*==============================================================*/
create index MB_AGREEMENT_IND2 on MB_AGREEMENT (
    AGREEMENT_TYPE,AGREEMENT_KEY
);

drop index MB_AGREEMENT_IND3 on MB_AGREEMENT;
/*==============================================================*/
/* Index: MB_AGREEMENT_IND3                                           */
/*==============================================================*/
create index MB_AGREEMENT_IND3 on MB_AGREEMENT (
    BASE_ACCT_NO,PROD_TYPE,CCY,ACCT_SEQ_NO
);

drop index MB_AGREEMENT_IND4 on MB_AGREEMENT;
/*==============================================================*/
/* Index: MB_AGREEMENT_IND4                                           */
/*==============================================================*/
create index MB_AGREEMENT_IND4 on MB_AGREEMENT (
    OPPOSITE_INTERNAL_KEY
);