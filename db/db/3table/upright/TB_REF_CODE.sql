drop table if exists TB_REF_CODE;
/*==============================================================*/
/* Table: TB_REF_CODE                                           */
/*==============================================================*/
create table TB_REF_CODE
(
    REF_LANG varchar(20) not null comment '语言',
    REF_GROUP varchar(20) not null comment '分组',
    DOMAIN varchar(70) not null comment '参数',
    FIELD_VALUE varchar(8) not null comment '取值',
    ABBREVIATION timestamp comment '缩写',
    MEANING varchar(30) not null comment '说明',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (REF_LANG,REF_GROUP,DOMAIN)
);
alter table TB_REF_CODE comment '尾箱模块参数表 undefined';