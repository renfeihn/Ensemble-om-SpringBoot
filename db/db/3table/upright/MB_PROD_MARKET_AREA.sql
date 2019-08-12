drop table if exists MB_PROD_MARKET_AREA;
/*==============================================================*/
/* Table: MB_PROD_MARKET_AREA                                           */
/*==============================================================*/
create table MB_PROD_MARKET_AREA
(
    SEQ_NO varchar(50) not null comment '序号',
    COUNTRY varchar(3) not null comment '国家',
    STATE varchar(10) comment '省、州  FM_STATE.STATE',
    CITY varchar(8) comment '所在城市',
    PROD_TYPE varchar(50) not null comment '产品类型',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间'
);
alter table MB_PROD_MARKET_AREA comment '产品营销地区表 undefined';