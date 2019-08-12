drop table if exists MB_PURPOSE;
/*==============================================================*/
/* Table: MB_PURPOSE                                           */
/*==============================================================*/
create table MB_PURPOSE
(
    PURPOSE varchar(6) not null comment '目的',
    PURPOSE_DESC varchar(30) not null comment '描述',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (PURPOSE)
);
alter table MB_PURPOSE comment '资金用途 undefined';