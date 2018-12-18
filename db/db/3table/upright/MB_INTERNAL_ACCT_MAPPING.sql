drop table if exists MB_INTERNAL_ACCT_MAPPING;
/*==============================================================*/
/* Table: MB_INTERNAL_ACCT_MAPPING                                           */
/*==============================================================*/
create table MB_INTERNAL_ACCT_MAPPING
(
    CHANNEL_TYPE varchar(20) not null comment '渠道类型',
    TRAN_TYPE varchar(10) not null comment '交易类型',
    BRANCH varchar(20) not null comment '机构代码',
    CCY varchar(3) not null comment '币种',
    INTER_TRAN_TYPE varchar(20) not null comment '内部交易类型 MB_TRAN_DEF.TRAN_TYPE',
    BASE_ACCT_NO varchar(150) not null comment '账号',
    OTH_ACCT_NO varchar(150) comment '其他账号'
);
alter table MB_INTERNAL_ACCT_MAPPING comment '内部帐账户映射 undefined';