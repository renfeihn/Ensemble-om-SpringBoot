drop table if exists FM_ACCT_CLIENT_RELATION;
/*==============================================================*/
/* Table: FM_ACCT_CLIENT_RELATION                                           */
/*==============================================================*/
create table FM_ACCT_CLIENT_RELATION
(
    CLIENT_NO varchar(20) comment '客户号',
    BASE_ACCT_NO varchar(150) comment '账号',
    INTERNAL_KEY Decimal(15) comment '账户主键',
    CARD_NO varchar(50) comment '卡号',
    BRANCH varchar(20) comment '机构',
    COMPANY varchar(20) comment '法人代码',
    SHARD_ID varchar(10) comment '分库标志',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间'
);
alter table FM_ACCT_CLIENT_RELATION comment '账户客户关系表 undefined';

drop index FACR_IND4 on FM_ACCT_CLIENT_RELATION;
/*==============================================================*/
/* Index: FACR_IND4                                           */
/*==============================================================*/
create unique index FACR_IND4 on FM_ACCT_CLIENT_RELATION (
    INTERNAL_KEY
);

drop index FACR_IND1 on FM_ACCT_CLIENT_RELATION;
/*==============================================================*/
/* Index: FACR_IND1                                           */
/*==============================================================*/
create index FACR_IND1 on FM_ACCT_CLIENT_RELATION (
    CLIENT_NO
);

drop index FACR_IND2 on FM_ACCT_CLIENT_RELATION;
/*==============================================================*/
/* Index: FACR_IND2                                           */
/*==============================================================*/
create index FACR_IND2 on FM_ACCT_CLIENT_RELATION (
    BASE_ACCT_NO
);

drop index FACR_IND3 on FM_ACCT_CLIENT_RELATION;
/*==============================================================*/
/* Index: FACR_IND3                                           */
/*==============================================================*/
create index FACR_IND3 on FM_ACCT_CLIENT_RELATION (
    CARD_NO
);