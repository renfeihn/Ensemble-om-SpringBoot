drop table if exists FM_BANK_HIERARCHY;
/*==============================================================*/
/* Table: FM_BANK_HIERARCHY                                           */
/*==============================================================*/
create table FM_BANK_HIERARCHY
(
    HIERARCHY_CODE varchar(5) not null comment '层级代码',
    HIERARCHY_NAME varchar(15) comment '层级说明',
    HIERARCHY_LEVEL varchar(50) comment '级别',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (HIERARCHY_CODE)
);
alter table FM_BANK_HIERARCHY comment '机构层次表 undefined';

drop index AK_KBH_UK2_FM_BANK_ on FM_BANK_HIERARCHY;
/*==============================================================*/
/* Index: AK_KBH_UK2_FM_BANK_                                           */
/*==============================================================*/
create unique index AK_KBH_UK2_FM_BANK_ on FM_BANK_HIERARCHY (
    HIERARCHY_NAME,HIERARCHY_LEVEL
);