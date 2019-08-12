drop table if exists FM_ECON_DIST;
/*==============================================================*/
/* Table: FM_ECON_DIST                                           */
/*==============================================================*/
create table FM_ECON_DIST
(
    ECON_DIST varchar(3) not null comment '经济特区',
    ECON_DIST_DESC varchar(60) not null comment '描述',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (ECON_DIST)
);
alter table FM_ECON_DIST comment '经济特区 此表作为静态参数表。 undefined';