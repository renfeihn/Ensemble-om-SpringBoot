drop table if exists MB_AGREEMENT_INT_PARAM;
/*==============================================================*/
/* Table: MB_AGREEMENT_INT_PARAM                                           */
/*==============================================================*/
create table MB_AGREEMENT_INT_PARAM
(
    SQL_ID varchar(30) not null comment 'sqlID',
    AGREEMENT_TYPE varchar(3) not null comment '协议类型  ASS-组合协议  FEE-暂不收费签约  FIN-卡理财签约  LOA-贷款协议  ODF-法人透支签约  PKG-费用套餐签约  PCD-周期性强制扣划  SMS-短信签约  SWP-约定转存签约',
    SQL_STRING varchar(200) not null comment 'SQL内容',
    IN_PARAM varchar(50) comment '入参',
    OUT_PARAM_KEY varchar(50) comment '出参',
    RUN_SHARED varchar(10) comment '分库shard',
    primary  key (SQL_ID)
);
alter table MB_AGREEMENT_INT_PARAM comment '协议参数取值表 undefined';