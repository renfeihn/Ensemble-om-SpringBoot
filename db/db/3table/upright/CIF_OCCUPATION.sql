drop table if exists CIF_OCCUPATION;
/*==============================================================*/
/* Table: CIF_OCCUPATION                                           */
/*==============================================================*/
create table CIF_OCCUPATION
(
    OCCUPATION_CODE varchar(6) not null comment '职业类别',
    OCCUPATION_DESC varchar(50) not null comment '职业说明',
    RISK_LEVEL varchar(5) comment '风险等级 H-高 L-低',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (OCCUPATION_CODE)
);
alter table CIF_OCCUPATION comment '职业分类表 undefined';