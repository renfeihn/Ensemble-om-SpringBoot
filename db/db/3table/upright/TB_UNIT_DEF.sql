drop table if exists TB_UNIT_DEF;
/*==============================================================*/
/* Table: TB_UNIT_DEF                                           */
/*==============================================================*/
create table TB_UNIT_DEF
(
    UNIT_CODE varchar(10) not null comment '凭证单位代码',
    UNIT_DESC varchar(10) comment '凭证单位描述',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (UNIT_CODE)
);
alter table TB_UNIT_DEF comment '凭证单位定义表 undefined';