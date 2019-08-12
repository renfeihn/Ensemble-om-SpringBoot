drop table if exists MB_MANUAL_TRAN_HIST;
/*==============================================================*/
/* Table: MB_MANUAL_TRAN_HIST                                           */
/*==============================================================*/
create table MB_MANUAL_TRAN_HIST
(
    SEQ_NO varchar(50) not null comment '序号',
    GL_SEQ_NO varchar(8) comment '总账序号',
    GL_CLIENT_NO varchar(20) comment '总账客户号',
    GL_CODE varchar(20) comment '科目',
    GL_CCY varchar(3) comment '总账币种',
    GL_PROFIT_CENTRE varchar(12) comment '总账利润中心',
    GL_BRANCH varchar(20) comment '总账机构',
    BRANCH varchar(20) comment '机构代码',
    POST_DATE varchar(8) comment '入帐日期',
    VALUE_DATE varchar(8) comment '记账日期',
    TRAN_AMT Decimal(17,2) comment '交易金额',
    TRAN_CCY varchar(3) comment '交易币种',
    REFERENCE varchar(50) comment '交易参考号',
    CHANNEL_SEQ_NO varchar(50) comment '渠道流水号',
    NARRATIVE varchar(300) comment '摘要',
    USER_ID varchar(30) comment '使用柜员',
    BANK_SEQ_NO varchar(50) comment '银行交易序号',
    REVERSED varchar(1) comment '是否撤销标志',
    SOURCE_TYPE varchar(10) comment '渠道类型 ',
    SOURCE_MODULE varchar(10) comment '源模块',
    STATUS varchar(3) comment '状态 ',
    BUSINESS_UNIT varchar(10) comment '帐套',
    CR_DR_IND varchar(1) comment '收入支出标志',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    primary  key (SEQ_NO)
);
alter table MB_MANUAL_TRAN_HIST comment '存款手工记账务表 undefined';

drop index MB_MAUA_TRAN_INDEX on MB_MANUAL_TRAN_HIST;
/*==============================================================*/
/* Index: MB_MAUA_TRAN_INDEX                                           */
/*==============================================================*/
create unique index MB_MAUA_TRAN_INDEX on MB_MANUAL_TRAN_HIST (
    SEQ_NO
);

drop index MB_MAUA_TRAN_INDEX_1 on MB_MANUAL_TRAN_HIST;
/*==============================================================*/
/* Index: MB_MAUA_TRAN_INDEX_1                                           */
/*==============================================================*/
create index MB_MAUA_TRAN_INDEX_1 on MB_MANUAL_TRAN_HIST (
    VALUE_DATE
);

drop index MB_MAUA_TRAN_INDEX_2 on MB_MANUAL_TRAN_HIST;
/*==============================================================*/
/* Index: MB_MAUA_TRAN_INDEX_2                                           */
/*==============================================================*/
create index MB_MAUA_TRAN_INDEX_2 on MB_MANUAL_TRAN_HIST (
    POST_DATE
);

drop index MB_MAUA_TRAN_INDEX_3 on MB_MANUAL_TRAN_HIST;
/*==============================================================*/
/* Index: MB_MAUA_TRAN_INDEX_3                                           */
/*==============================================================*/
create index MB_MAUA_TRAN_INDEX_3 on MB_MANUAL_TRAN_HIST (
    REFERENCE
);