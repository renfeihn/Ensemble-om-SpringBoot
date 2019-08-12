drop table if exists MB_ACCT_AGREEMENT;
/*==============================================================*/
/* Table: MB_ACCT_AGREEMENT                                           */
/*==============================================================*/
create table MB_ACCT_AGREEMENT
(
    INTERNAL_KEY Decimal(15) not null comment '帐户主键',
    AGREEMENT_ID varchar(30) not null comment '协议编号',
    DAC_VALUE varchar(32) comment 'DAC值  防篡改加密',
    COMPANY varchar(20) comment '法人代码',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (INTERNAL_KEY,AGREEMENT_ID)
);
alter table MB_ACCT_AGREEMENT comment '协议表 undefined';