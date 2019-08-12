drop table if exists FM_BANK;
/*==============================================================*/
/* Table: FM_BANK                                           */
/*==============================================================*/
create table FM_BANK
(
    BANK_CODE varchar(20) not null comment '银行代码',
    BANK_ID varchar(8) comment '银行ID',
    BANK_NAME varchar(35) not null comment '银行名称',
    BANK_TYPE varchar(1) not null comment '银行类别 O-Our Bank 我行                      B-Bank 他行 S-Building Society建房互助协会 T-Third Party Bank第三方银行',
    STATUS varchar(3) not null comment '状态',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (BANK_CODE)
);
alter table FM_BANK comment '外部金融机构定义表 undefined';