drop table if exists CIF_SALUTATION;
/*==============================================================*/
/* Table: CIF_SALUTATION                                           */
/*==============================================================*/
create table CIF_SALUTATION
(
    SALUTATION varchar(20) not null comment '称呼代码',
    SALUTATION_DESC varchar(10) comment '称呼代码说明',
    GENDER_FLAG varchar(1) comment '适用性别 M-男 F-女 U-未知',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (SALUTATION)
);
alter table CIF_SALUTATION comment '称呼类型表 undefined';