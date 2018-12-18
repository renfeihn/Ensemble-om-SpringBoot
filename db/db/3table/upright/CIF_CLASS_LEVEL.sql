drop table if exists CIF_CLASS_LEVEL;
/*==============================================================*/
/* Table: CIF_CLASS_LEVEL                                           */
/*==============================================================*/
create table CIF_CLASS_LEVEL
(
    CLASS_LEVEL varchar(4) not null comment '综合评级',
    CLASS_LEVEL_DESC varchar(50) comment '综合评级描述',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (CLASS_LEVEL)
);
alter table CIF_CLASS_LEVEL comment '参数表 undefined';