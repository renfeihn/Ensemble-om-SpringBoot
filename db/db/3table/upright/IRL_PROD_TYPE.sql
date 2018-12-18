drop table if exists IRL_PROD_TYPE;
/*==============================================================*/
/* Table: IRL_PROD_TYPE                                           */
/*==============================================================*/
create table IRL_PROD_TYPE
(
    PROD_TYPE varchar(50) not null comment '产品类型',
    PROD_TYPE_DESC varchar(100) not null comment '产品类型描述',
    PROD_GRP varchar(20) not null comment '产品组 ',
    INT_DATE_TYPE varchar(1) comment '利率生效方式  ',
    GL_MERGE_TYPE varchar(1) comment '计提是否合并标志',
    COMPANY varchar(20) comment '法人代码',
    FIXED_CALL varchar(1) comment '定期账户细类  ',
    TRAN_TIMESTAMP varchar(17) comment '时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    PREV_CALC_TYPE varchar(1) comment '倒起息算法 F正算 B逆算',
    primary  key (PROD_TYPE)
);
alter table IRL_PROD_TYPE comment '产品类型表 undefined';