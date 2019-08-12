drop table if exists MB_OD_FACILITY;
/*==============================================================*/
/* Table: MB_OD_FACILITY                                           */
/*==============================================================*/
create table MB_OD_FACILITY
(
    INTERNAL_KEY Decimal(15) not null comment '账户KEY值',
    BASE_ACCT_NO varchar(150) comment '账号',
    ACCT_CCY varchar(3) comment '币种',
    PROD_TYPE varchar(50) comment '产品类型',
    ACCT_SEQ_NO varchar(8) comment '账户序号',
    OD_TYPE varchar(30) not null comment '透支类型',
    OD_SEQ_NO varchar(50) not null comment '透支序号',
    OTH_INTERNAL_KEY Decimal(15) comment '转账时对方账户标识符',
    OTH_BASE_ACCT_NO varchar(150) comment '对方帐号/卡号',
    OTH_ACCT_CCY varchar(3) comment '对方账户币种  ',
    OTH_PROD_TYPE varchar(50) comment '第三方产品类型',
    OTH_ACCT_SEQ_NO varchar(8) comment '关联账户序号',
    OD_EFFECT_FROM_DATE varchar(8) comment '透支生效起始日',
    OD_EFFECT_TO_DATE varchar(8) comment '透支生效截止日',
    OD_GRACE_PERIOD varchar(5) comment '透支免息期',
    OD_GRACE_PERIOD_TYPE varchar(1) comment '透支期限类型',
    OD_LIMIT Decimal(17,2) comment '透支限额',
    NARRATIVE varchar(300) comment '摘要',
    LAST_CHANGE_DATE varchar(8) comment '上次变动日期',
    LAST_CHANGE_USER_ID varchar(30) comment '上次变动柜员',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (INTERNAL_KEY,OD_TYPE,OD_SEQ_NO)
);
alter table MB_OD_FACILITY comment '账户透支信息表 undefined';