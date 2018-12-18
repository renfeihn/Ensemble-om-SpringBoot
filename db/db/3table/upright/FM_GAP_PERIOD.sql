drop table if exists FM_GAP_PERIOD;
/*==============================================================*/
/* Table: FM_GAP_PERIOD                                           */
/*==============================================================*/
create table FM_GAP_PERIOD
(
    GAP_TYPE varchar(5) not null comment '敞口类型',
    PERIOD_NO varchar(5) not null comment '期限',
    PERIOD_TYPE varchar(1) not null comment '期限类型',
    PERIOD_DESC varchar(10) not null comment '期限描述',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (GAP_TYPE,PERIOD_NO,PERIOD_TYPE)
);
alter table FM_GAP_PERIOD comment '敞口期限信息 undefined';