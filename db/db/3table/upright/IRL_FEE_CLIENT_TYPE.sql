drop table if exists IRL_FEE_CLIENT_TYPE;
/*==============================================================*/
/* Table: IRL_FEE_CLIENT_TYPE                                           */
/*==============================================================*/
create table IRL_FEE_CLIENT_TYPE
(
    FEE_TYPE varchar(8) not null comment '费率类型',
    CLIENT_TYPE varchar(3) not null comment '客户类型',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (FEE_TYPE,CLIENT_TYPE)
);
alter table IRL_FEE_CLIENT_TYPE comment '费率客户类型关系表 undefined';