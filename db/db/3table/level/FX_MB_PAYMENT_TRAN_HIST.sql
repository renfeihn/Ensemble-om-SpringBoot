drop table if exists FX_MB_PAYMENT_TRAN_HIST;
/*==============================================================*/
/* Table: FX_MB_PAYMENT_TRAN_HIST                                           */
/*==============================================================*/
create table FX_MB_PAYMENT_TRAN_HIST
(
    SEQ_NO varchar(50) not null comment '序号',
    BRANCH varchar(20) not null comment '机构代码',
    CHANNEL_TYPE varchar(20) not null comment '渠道类型',
    CHANNEL_SEQ_NO varchar(50) not null comment '渠道流水号',
    TRAN_DATE varchar(8) not null comment '交易日期',
    TRAN_TYPE varchar(10) comment '交易类型',
    MESSAGE_CODE varchar(6) comment '报文代码',
    INTERNAL_KEY Decimal(15) comment '帐户主键',
    BASE_ACCT_NO varchar(150) comment '账号',
    ACCT_NAME varchar(200) comment '账户名称，一般指中文账户名称',
    REFERENCE varchar(50) comment '交易参考号',
    SETTLEMENT_DATE varchar(8) comment '清算日期',
    ORIG_CHANNEL_SEQ_NO varchar(50) comment '原交易渠道流水号',
    ORIG_SEQ_NO varchar(50) comment '原交易序号',
    CR_DR_IND varchar(1) comment '收入支出标志',
    TRAN_CCY varchar(3) comment '交易币种',
    TRAN_AMT Decimal(17,2) comment '交易金额',
    COLLATE_FLAG varchar(2) not null comment '对账标识',
    MSG_REG_FLAG varchar(2) not null comment '报文登记标识',
    DIRECTION varchar(2) comment '往来标志',
    SEND_BANK_CODE varchar(20) comment '发送行行号',
    RCV_BANK_CODE varchar(20) comment '接收行行号',
    USER_ID varchar(30) comment '使用柜员',
    MSG_ID varchar(50) comment '报文标识码',
    OTH_BASE_ACCT_NO varchar(150) comment '对方帐号/卡号',
    OTH_BASE_ACCT_NAME varchar(200) comment '对方账号户名',
    OTH_BANK_CODE varchar(20) comment '其他行代码',
    NARRATIVE varchar(300) comment '摘要，开户时的账号用途，销户时的销户原因',
    DEST_SUS_BRANCH varchar(20) comment '挂账机构',
    ERROR_NO varchar(11) comment '错误编号',
    ERROR_DESC varchar(4000) comment '未生成分录原因',
    PREFIX varchar(10) comment '前缀',
    DOC_TYPE varchar(10) comment '凭证类型',
    VOUCHER_ID varchar(30) comment '凭证主键',
    ACCT_BRANCH varchar(20) comment '账户开户行',
    TRAN_STATUS varchar(3) comment '客户交易状态 ',
    SETTLE_BRANCH varchar(20) comment '结算分行',
    REVERSED varchar(1) comment '是否撤销标志',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    primary  key (SEQ_NO)
);
alter table FX_MB_PAYMENT_TRAN_HIST comment '核心支付统一流水登记簙 undefined';

drop index FX_MB_PAYMENT_TH_IND2 on FX_MB_PAYMENT_TRAN_HIST;
/*==============================================================*/
/* Index: FX_MB_PAYMENT_TH_IND2                                           */
/*==============================================================*/
create index FX_MB_PAYMENT_TH_IND2 on FX_MB_PAYMENT_TRAN_HIST (
    CHANNEL_SEQ_NO
);

drop index FX_MB_PAYMENT_TH_IND3 on FX_MB_PAYMENT_TRAN_HIST;
/*==============================================================*/
/* Index: FX_MB_PAYMENT_TH_IND3                                           */
/*==============================================================*/
create index FX_MB_PAYMENT_TH_IND3 on FX_MB_PAYMENT_TRAN_HIST (
    TRAN_DATE
);