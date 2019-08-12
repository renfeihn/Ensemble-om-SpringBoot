drop table if exists MB_AC_HIST;
/*==============================================================*/
/* Table: MB_AC_HIST                                           */
/*==============================================================*/
create table MB_AC_HIST
(
    SEQ_NO varchar(50) not null comment '交易序号',
    INTERNAL_KEY Decimal(15) not null comment '账户标识符',
    BASE_ACCT_NO varchar(150) comment '账号/卡号',
    ACCT_SEQ_NO varchar(8) comment '账户序列号',
    ACCT_CCY varchar(3) comment '账户币种',
    PROD_TYPE varchar(50) comment '产品类型',
    ACCT_DESC varchar(150) comment '帐户描述',
    CLIENT_NO varchar(20) comment '客户号',
    CLIENT_TYPE varchar(3) comment '客户类型',
    TRAN_DATE varchar(8) not null comment '交易日期',
    TRAN_TYPE varchar(10) comment '交易类型',
    EVENT_TYPE varchar(50) comment '事件类型 在fm_prod_event_type 中定义',
    CCY varchar(3) comment '币种',
    AMT_TYPE varchar(10) comment '金额类型',
    TRAN_AMT Decimal(17,2) comment '交易金额',
    BRANCH varchar(20) comment '交易机构',
    SOURCE_TYPE varchar(10) comment '渠道类型 见fm_channel表的渠道定义',
    USER_ID varchar(30) comment '柜员ID',
    REFERENCE varchar(50) comment '交易参考号',
    BANK_SEQ_NO varchar(50) comment '银行交易序号',
    REVERSAL varchar(1) comment '冲正标志',
    REVERSAL_TRAN_TYPE varchar(10) comment '冲正交易类型',
    REVERSAL_DATE varchar(8) comment '冲正日期',
    NARRATIVE varchar(300) comment '摘要',
    TRAN_TIMESTAMP varchar(17) comment '交易时间',
    PROFIT_CENTRE varchar(12) comment '利润中心',
    BUSINESS_UNIT varchar(10) comment '帐套',
    SOURCE_MODULE varchar(10) comment '来源模块',
    COMPANY varchar(20) comment '法人代码',
    LENDER varchar(20) comment '贷款人',
    ACCT_STATUS varchar(3) comment '账户状态 N：新建                   H：待激活                    A：活动                     D：睡眠                    S：久悬                   M：到期未结清                   P：到期已结清                   R：撤销                                   C：自动关闭                   E：手工关闭',
    ACCOUNTING_STATUS varchar(3) comment '核算状态',
    ACCT_BRANCH varchar(20) comment '账户机构',
    GL_POSTED varchar(1) comment '过账标志',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (SEQ_NO)
);
alter table MB_AC_HIST comment '账户核算流水表 undefined';