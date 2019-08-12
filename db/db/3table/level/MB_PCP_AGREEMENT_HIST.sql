drop table if exists MB_PCP_AGREEMENT_HIST;
/*==============================================================*/
/* Table: MB_PCP_AGREEMENT_HIST                                           */
/*==============================================================*/
create table MB_PCP_AGREEMENT_HIST
(
    SEQ_NO varchar(50) not null comment '序号',
    AGREEMENT_ID varchar(30) comment '协议编号',
    GROUP_ID varchar(50) comment '账户组ID',
    OPTION_TYPE varchar(2) comment '操作类型',
    PROGRAM_ID varchar(20) comment '交易码',
    TRAN_DATE varchar(8) comment '交易日期',
    BASE_ACCT_NO varchar(150) comment '账号',
    PROD_TYPE varchar(50) comment '产品类型',
    CCY varchar(3) comment '币种',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    SOURCE_TYPE varchar(10) comment '渠道 FM_CHANNEL.CHANNEL',
    USER_ID varchar(30) comment '交易柜员 FM_USER.USER_ID',
    APPR_USER_ID varchar(30) comment '复核柜员',
    AUTH_USER_ID varchar(30) comment '授权柜员',
    BRANCH varchar(20) comment '机构代码',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    COMPANY varchar(20) comment '法人代码',
    primary  key (SEQ_NO)
);
alter table MB_PCP_AGREEMENT_HIST comment '现金池签约维护解约流水表 undefined';