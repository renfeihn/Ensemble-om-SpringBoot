drop table if exists FM_REF_CODE;
/*==============================================================*/
/* Table: FM_REF_CODE                                           */
/*==============================================================*/
create table FM_REF_CODE
(
    REF_LANG varchar(20) not null comment '语言',
    DOMAIN varchar(70) not null comment '表字段',
    FIELD_VALUE varchar(8) not null comment '取值范围',
    ABBREVIATION timestamp comment '缩写',
    MEANING varchar(30) not null comment '取值的含义说明',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (REF_LANG,DOMAIN,FIELD_VALUE)
);
alter table FM_REF_CODE comment '系统内部预定义参数表 undefined';