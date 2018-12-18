drop table if exists TB_VOUCHER_UNIT;
/*==============================================================*/
/* Table: TB_VOUCHER_UNIT                                           */
/*==============================================================*/
create table TB_VOUCHER_UNIT
(
    DOC_TYPE varchar(10) not null comment '凭证类型',
    UNIT_BASE varchar(10) not null comment '单位基数',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    UNIT_TYPE varchar(50) not null comment '凭证单位',
    primary  key (DOC_TYPE,UNIT_TYPE)
);
alter table TB_VOUCHER_UNIT comment '凭证单位信息定义 undefined';