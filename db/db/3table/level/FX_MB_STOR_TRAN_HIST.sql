drop table if exists FX_MB_STOR_TRAN_HIST;
/*==============================================================*/
/* Table: FX_MB_STOR_TRAN_HIST                                           */
/*==============================================================*/
create table FX_MB_STOR_TRAN_HIST
(
    SEQ_NO varchar(50) not null comment '序号',
    INTERNAL_KEY Decimal(15) comment '账号关键字',
    BASE_ACCT_NO varchar(150) comment '账号',
    ACCT_NAME varchar(200) comment '账户名称',
    CHANNEL_SEQ_NO varchar(50) not null comment '渠道交易流水号',
    CHANNEL_TYPE varchar(20) not null comment '渠道类型',
    TRAN_TYPE varchar(10) not null comment '交易类型 ',
    TRAN_AMT Decimal(17,2) comment '交易金额',
    TRAN_CCY varchar(3) comment '交易币种',
    MSG_ID varchar(50) comment '报文标识号',
    TRAN_DATE varchar(8) not null comment '交易日期',
    TRAN_STATUS varchar(3) not null comment '交易状态',
    OTH_BASE_ACCT_NO varchar(150) comment '对方账号 ',
    OTH_ACCT_NAME varchar(200) comment '对方户名',
    ORIG_CHANNEL_SEQ_NO varchar(50) comment '原渠道业务流水号',
    ORIG_SEQ_NO varchar(50) comment '原渠道业务流水号',
    USER_ID varchar(30) comment '操作柜员',
    BRANCH varchar(20) comment '机构',
    ACCT_BRANCH varchar(20) comment '开户机构',
    BOOK_BRANCH varchar(20) comment '记账机构',
    OTH_BANK_CODE varchar(20) comment '对方银行行号',
    CR_DR_IND varchar(1) comment '借贷标记',
    PREFIX varchar(10) comment '票据/凭证前缀',
    DOC_TYPE varchar(10) comment '凭证类型',
    VOUCHER_NO varchar(50) comment '凭证号码',
    NARRATIVE varchar(300) comment '摘要',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    TRAN_TIMESTAMP varchar(17) comment '交易时间',
    primary  key (SEQ_NO)
);
alter table FX_MB_STOR_TRAN_HIST comment '核心支付待汇划业务登记簙 undefined';

drop index FX_MB_STOR_TRANH_IND2 on FX_MB_STOR_TRAN_HIST;
/*==============================================================*/
/* Index: FX_MB_STOR_TRANH_IND2                                           */
/*==============================================================*/
create unique index FX_MB_STOR_TRANH_IND2 on FX_MB_STOR_TRAN_HIST (
    SEQ_NO
);

drop index FX_MB_STOR_TRANH_IND3 on FX_MB_STOR_TRAN_HIST;
/*==============================================================*/
/* Index: FX_MB_STOR_TRANH_IND3                                           */
/*==============================================================*/
create index FX_MB_STOR_TRANH_IND3 on FX_MB_STOR_TRAN_HIST (
    TRAN_DATE
);