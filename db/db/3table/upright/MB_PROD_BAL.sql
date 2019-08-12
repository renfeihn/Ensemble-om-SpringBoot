drop table if exists MB_PROD_BAL;
/*==============================================================*/
/* Table: MB_PROD_BAL                                           */
/*==============================================================*/
create table MB_PROD_BAL
(
    PROD_TYPE varchar(50) not null comment '产品类型',
    CCY varchar(3) not null comment '币种',
    AMT Decimal(17,2) not null comment '金额',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (PROD_TYPE,CCY)
);
alter table MB_PROD_BAL comment '产品余额信息表 undefined';