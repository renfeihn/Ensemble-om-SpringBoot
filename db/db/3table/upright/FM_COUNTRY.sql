drop table if exists FM_COUNTRY;
/*==============================================================*/
/* Table: FM_COUNTRY                                           */
/*==============================================================*/
create table FM_COUNTRY
(
    COUNTRY varchar(3) not null comment '国家',
    COUNTRY_DESC varchar(100) not null comment '名称',
    CCY varchar(3) comment '币种',
    COUNTRY_TEL varchar(4) comment '国家电话区号',
    NCCT varchar(1) comment '非合作国家',
    PSC varchar(1) comment '政治敏感国家',
    ISO_CODE varchar(3) comment 'ISO编码',
    SAFE_CODE varchar(3) comment 'SAFE编码',
    COMPANY varchar(20) comment '法人',
    REGION varchar(2) comment '地区',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (COUNTRY)
);
alter table FM_COUNTRY comment '国家代码 国家的基本信息表 undefined';