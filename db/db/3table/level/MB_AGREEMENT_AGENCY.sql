drop table if exists MB_AGREEMENT_AGENCY;
/*==============================================================*/
/* Table: MB_AGREEMENT_AGENCY                                           */
/*==============================================================*/
create table MB_AGREEMENT_AGENCY
(
    AGREEMENT_ID varchar(30) not null comment '协议号',
    AGENCY_TYPE varchar(1) not null comment '代发代扣类型 C:代发,D:代扣 ',
    RUN_TIME varchar(3) comment '运行时间：   INP:联机   EOD:EOD',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    primary  key (AGREEMENT_ID)
);
alter table MB_AGREEMENT_AGENCY comment '代发代扣签约协议表 undefined';