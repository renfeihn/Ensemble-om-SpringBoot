drop table if exists MB_MANUAL_DETAIL;
/*==============================================================*/
/* Table: MB_MANUAL_DETAIL                                           */
/*==============================================================*/
create table MB_MANUAL_DETAIL
(
    SEQ_NO varchar(50) not null comment '序号',
    ITEM_NO varchar(50) not null comment '条目编号',
    TRAN_DATE varchar(8) not null comment '交易日期',
    BRANCH varchar(20) comment '机构代码',
    GL_CODE varchar(20) comment '科目',
    CLIENT_NO varchar(20) comment '客户号',
    PROFIT_CENTRE varchar(12) comment '利润中心 ',
    CCY varchar(3) comment '币种',
    GL_SEQ_NO varchar(8) comment '总账序号',
    GL_TYPE varchar(1) comment '账户类型  （客户账）',
    BASE_ACCT_NO varchar(150) comment '账号',
    PROD_TYPE varchar(50) comment '产品类型 ',
    CR_DR_IND varchar(1) comment '收入支出标志',
    TRAN_CCY varchar(3) comment '交易币种',
    TRAN_AMT Decimal(17,2) comment '交易金额',
    REMARK varchar(200) comment '备注，用来描述制卡原因，比如正常制卡，补换卡等',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    primary  key (SEQ_NO,ITEM_NO)
);
alter table MB_MANUAL_DETAIL comment '存款多笔统一流水详细登记簙 undefined';

drop index MB_MANUAL_DETAIL_INDEX on MB_MANUAL_DETAIL;
/*==============================================================*/
/* Index: MB_MANUAL_DETAIL_INDEX                                           */
/*==============================================================*/
create unique index MB_MANUAL_DETAIL_INDEX on MB_MANUAL_DETAIL (
    SEQ_NO
);

drop index MB_MANUAL_DETAIL_INDEX_1 on MB_MANUAL_DETAIL;
/*==============================================================*/
/* Index: MB_MANUAL_DETAIL_INDEX_1                                           */
/*==============================================================*/
create index MB_MANUAL_DETAIL_INDEX_1 on MB_MANUAL_DETAIL (
    ITEM_NO
);

drop index MB_MANUAL_DETAIL_INDEX_2 on MB_MANUAL_DETAIL;
/*==============================================================*/
/* Index: MB_MANUAL_DETAIL_INDEX_2                                           */
/*==============================================================*/
create index MB_MANUAL_DETAIL_INDEX_2 on MB_MANUAL_DETAIL (
    TRAN_DATE
);