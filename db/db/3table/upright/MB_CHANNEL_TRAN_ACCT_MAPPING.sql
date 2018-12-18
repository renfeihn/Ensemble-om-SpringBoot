drop table if exists MB_CHANNEL_TRAN_ACCT_MAPPING;
/*==============================================================*/
/* Table: MB_CHANNEL_TRAN_ACCT_MAPPING                                           */
/*==============================================================*/
create table MB_CHANNEL_TRAN_ACCT_MAPPING
(
    BASE_ACCT_NO varchar(150) comment '内部账号',
    CHANNEL_TYPE varchar(20) not null comment '渠道类型',
    TRAN_TYPE varchar(10) not null comment '交易类型',
    BRANCH varchar(20) not null comment '机构',
    CCY varchar(3) not null comment '币种',
    primary  key (CHANNEL_TYPE,TRAN_TYPE,BRANCH,CCY)
);
alter table MB_CHANNEL_TRAN_ACCT_MAPPING comment '配置渠道、交易类型对应内部账号表 undefined';