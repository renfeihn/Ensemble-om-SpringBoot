drop table if exists MB_CHANNEL_TRAN_HIST;
/*==============================================================*/
/* Table: MB_CHANNEL_TRAN_HIST                                           */
/*==============================================================*/
create table MB_CHANNEL_TRAN_HIST
(
    SEQ_NO varchar(50) not null comment '序号',
    BRANCH varchar(20) not null comment '机构代码',
    CHANNEL_TYPE varchar(20) comment '渠道类型',
    CHANNEL_SEQ_NO varchar(50) not null comment '渠道流水号',
    TRAN_DATE varchar(8) not null comment '交易日期',
    TRAN_TYPE varchar(10) comment '交易类型',
    INTERNAL_KEY Decimal(15) comment '帐户主键',
    BASE_ACCT_NO varchar(150) comment '账号',
    ACCT_NAME varchar(200) comment '账户名称，一般指中文账户名称',
    REFERENCE varchar(50) comment '交易参考号',
    SETTLE_BRANCH varchar(20) comment '清算机构 FM_BRANCH.BRANCH',
    SETTLEMENT_DATE varchar(8) comment '清算日期',
    CR_DR_IND varchar(1) comment '收入支出标志  C:收入 D：支出',
    TRAN_CCY varchar(3) comment '交易币种  FM_CURRENCY.CCY',
    TRAN_AMT Decimal(17,2) comment '交易金额',
    USER_ID varchar(30) comment '交易柜员 FM_USER.USER_ID',
    OTH_ACCT_NO varchar(150) comment '其他账号',
    OTH_ACCT_NAME varchar(200) comment '对方户名',
    NARRATIVE varchar(300) comment '摘要，开户时的账号用途，销户时的销户原因',
    ERROR_NO varchar(11) comment '错误编号',
    ERROR_DESC varchar(4000) comment '未生成分录原因',
    PREFIX varchar(10) comment '前缀',
    DOC_TYPE varchar(10) comment '凭证类型 TB_VOUCHER_DEF.DOC_TYPE',
    VOUCHER_NO varchar(50) comment '凭证号',
    ACCT_BRANCH varchar(20) comment '账户开户行',
    BOOK_BRANCH varchar(20) comment '贷款银行',
    TRAN_STATUS varchar(3) comment '状态 S:成功 F:失败',
    GL_BRANCH varchar(20) comment '总账机构',
    REVERSED varchar(1) comment '是否撤销标志 Y:是 N:否',
    COLLATE_FLAG varchar(2) comment '对账标识',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    primary  key (SEQ_NO)
);
alter table MB_CHANNEL_TRAN_HIST comment '核心外围统一流水登记簙 undefined';

drop index MB_CHANL_TRAN_INDEX on MB_CHANNEL_TRAN_HIST;
/*==============================================================*/
/* Index: MB_CHANL_TRAN_INDEX                                           */
/*==============================================================*/
create unique index MB_CHANL_TRAN_INDEX on MB_CHANNEL_TRAN_HIST (
    SEQ_NO
);

drop index MB_CHANL_TRAN_INDEX_1 on MB_CHANNEL_TRAN_HIST;
/*==============================================================*/
/* Index: MB_CHANL_TRAN_INDEX_1                                           */
/*==============================================================*/
create index MB_CHANL_TRAN_INDEX_1 on MB_CHANNEL_TRAN_HIST (
    TRAN_DATE
);

drop index MB_CHANL_TRAN_INDEX_2 on MB_CHANNEL_TRAN_HIST;
/*==============================================================*/
/* Index: MB_CHANL_TRAN_INDEX_2                                           */
/*==============================================================*/
create index MB_CHANL_TRAN_INDEX_2 on MB_CHANNEL_TRAN_HIST (
    CHANNEL_SEQ_NO
);