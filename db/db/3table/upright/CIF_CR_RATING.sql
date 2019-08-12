drop table if exists CIF_CR_RATING;
/*==============================================================*/
/* Table: CIF_CR_RATING                                           */
/*==============================================================*/
create table CIF_CR_RATING
(
    CR_RATING varchar(4) not null comment '信用等级',
    CR_RATING_DESC varchar(30) comment '信用等级描述',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (CR_RATING)
);
alter table CIF_CR_RATING comment '信用等级表 undefined';