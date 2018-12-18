drop table if exists MB_PCP_TRAN_HIST;
/*==============================================================*/
/* Table: MB_PCP_TRAN_HIST                                           */
/*==============================================================*/
create table MB_PCP_TRAN_HIST
(
    SEQ_NO varchar(50) not null comment '序号',
    TRAN_BRANCH varchar(20) comment '交易支行 FM_BRANCH.BRANCH',
    SOURCE_TYPE varchar(10) comment '渠道 FM_CHANNEL.CHANNEL',
    SOURCE_MODULE varchar(10) comment '模块',
    PCP_PROD_TYPE varchar(50) comment '资金池产品类型',
    GROUP_ID varchar(50) comment '账户组ID',
    INTERNAL_KEY Decimal(15) comment '帐户主键',
    BASE_ACCT_NO varchar(150) comment '账号',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    ACCT_CCY varchar(3) comment '账户币种，',
    PROD_TYPE varchar(50) comment '产品类型',
    TRAN_DATE varchar(8) not null comment '交易日期',
    EVENT_TYPE varchar(50) comment '事件类型 MB_EVENT_CLASS.EVENT_CLASS',
    CR_DR_MAINT_IND varchar(1) comment '借贷标志  C:贷 D：借',
    CCY varchar(3) comment '币种',
    TRAN_AMT Decimal(17,2) comment '交易金额',
    TRAN_TYPE varchar(10) comment '交易类型',
    REFERENCE varchar(50) comment '交易参考号',
    CHANNEL_SEQ_NO varchar(50) comment '渠道流水号',
    TRAN_DESC varchar(100) comment '交易描述',
    CLIENT_NO varchar(20) comment '客户号',
    OTH_SEQ_NO varchar(50) comment '对方交易流水号，比如转账时，转出交易对应的此字段为转入交易流水号，转入交易对应的此字段为转出交易流水号',
    OTH_INTERNALKEY Decimal(15) comment '转账时对方账户标识符',
    OTH_BASE_ACCT_NO varchar(150) comment '对方帐号/卡号',
    OTH_ACCT_SEQ_NO varchar(8) comment '对方账户序列号',
    OTH_PROD_TYPE varchar(50) comment '第三方产品类型  MB_PROD_TYPE.PROD_TYPE',
    OTH_ACCT_CCY varchar(3) comment '对方账户币种  FM_CURRENCY.CCY',
    TRAN_STATUS varchar(3) comment '状态 S:成功 F:失败',
    FAILURE_REASON varchar(4000) comment '失败原因',
    USER_ID varchar(30) comment '交易柜员 FM_USER.USER_ID',
    AUTH_USER_ID varchar(30) comment '授权柜员',
    COMPANY varchar(20) comment '法人代码',
    REVERSAL varchar(1) comment '冲正标志 Y:是 N:否',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (SEQ_NO)
);
alter table MB_PCP_TRAN_HIST comment '归集/下拨登记簿 undefined';