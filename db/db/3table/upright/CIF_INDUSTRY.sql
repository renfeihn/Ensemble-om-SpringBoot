drop table if exists CIF_INDUSTRY;
/*==============================================================*/
/* Table: CIF_INDUSTRY                                           */
/*==============================================================*/
create table CIF_INDUSTRY
(
    INDUSTRY varchar(20) not null comment '通用行业代码',
    INDUSTRY_DESC varchar(60) not null comment '说明',
    PARENT_INDUSTRY varchar(20) comment '上级通用行业代码',
    RISK_LEVEL varchar(5) comment '风险等级 H-高 L-低',
    INDUSTRY_LEVEL varchar(2) not null comment '层级',
    DETAIL_IND varchar(1) not null comment '是否明细代码 Y-是 N-否',
    STANDARD_IND varchar(1) not null comment '是否国际代码 Y-是 N-否',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (INDUSTRY)
);
alter table CIF_INDUSTRY comment '通用行业代码 undefined';