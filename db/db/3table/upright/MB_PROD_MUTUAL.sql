drop table if exists MB_PROD_MUTUAL;
/*==============================================================*/
/* Table: MB_PROD_MUTUAL                                           */
/*==============================================================*/
create table MB_PROD_MUTUAL
(
    CLIENT_TYPE varchar(3) not null comment '客户类型',
    PROD_TYPE varchar(50) not null comment '产品类型 ',
    MUT_PROD_TYPE varchar(50) not null comment '互斥产品类型',
    PROD_RELATION_TYPE varchar(10) not null default 'MUT' comment '关系类型',
    primary  key (CLIENT_TYPE,PROD_TYPE,MUT_PROD_TYPE,PROD_RELATION_TYPE)
);
alter table MB_PROD_MUTUAL comment '产品互斥参数表 undefined';