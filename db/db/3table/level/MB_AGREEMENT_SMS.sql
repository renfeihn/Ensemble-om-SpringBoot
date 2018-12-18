drop table if exists MB_AGREEMENT_SMS;
/*==============================================================*/
/* Table: MB_AGREEMENT_SMS                                           */
/*==============================================================*/
create table MB_AGREEMENT_SMS
(
    AGREEMENT_ID varchar(30) not null comment '协议号',
    CONTACT_TEL varchar(20) not null comment '联系电话',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (AGREEMENT_ID)
);
alter table MB_AGREEMENT_SMS comment '短信签约表 undefined';