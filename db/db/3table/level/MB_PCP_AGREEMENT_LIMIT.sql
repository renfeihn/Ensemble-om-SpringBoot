drop table if exists MB_PCP_AGREEMENT_LIMIT;
/*==============================================================*/
/* Table: MB_PCP_AGREEMENT_LIMIT                                           */
/*==============================================================*/
create table MB_PCP_AGREEMENT_LIMIT
(
    AGREEMENT_ID varchar(30) not null comment '协议编号',
    LIMIT_TYPE varchar(2) not null comment '类型  ',
    FREQUENCE varchar(2) comment '频率',
    START_DATE varchar(8) comment '生效日期',
    END_DATE varchar(8) comment '终止日期',
    STATUS varchar(3) comment '状态 A:有效 E:失效',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    ROUTER_KEY varchar(100) comment '分库路由关键字',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (AGREEMENT_ID,LIMIT_TYPE)
);
alter table MB_PCP_AGREEMENT_LIMIT comment '资金池签约限额信息表 undefined';