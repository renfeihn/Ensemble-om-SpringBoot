drop table if exists RC_LIST_ORG;
/*==============================================================*/
/* Table: RC_LIST_ORG                                           */
/*==============================================================*/
create table RC_LIST_ORG
(
    LIST_ORG varchar(12) not null comment '名单发送/审核机构  200501——公安  300501——工商总局  400501——高法(暂缓实现)  500501——工信部(暂缓实现)  600501——中国支付清算协会(暂缓实现)  700501——银行卡清算(暂缓实现)  000000——本行  ',
    LIST_ORG_NAME varchar(50) comment '机构名称',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (LIST_ORG)
);
alter table RC_LIST_ORG comment '发送机构 undefined';