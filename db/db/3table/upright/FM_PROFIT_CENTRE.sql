drop table if exists FM_PROFIT_CENTRE;
/*==============================================================*/
/* Table: FM_PROFIT_CENTRE                                           */
/*==============================================================*/
create table FM_PROFIT_CENTRE
(
    PROFIT_CENTRE varchar(12) not null comment '利润中心',
    PROFIT_CENTRE_DESC varchar(30) not null comment '中文说明',
    PROFIT_CENTRE_DESC_EN varchar(30) comment '英文说明',
    PROFIT_CENTRE_TYPE varchar(1) not null default 'S'   comment '利润中心类型 S-Sub 记账类 C-Control 控制类',
    PROFIT_CENTRE_LEVEL varchar(50) comment '利润中心级别',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (PROFIT_CENTRE)
);
alter table FM_PROFIT_CENTRE comment '利润中心 undefined';