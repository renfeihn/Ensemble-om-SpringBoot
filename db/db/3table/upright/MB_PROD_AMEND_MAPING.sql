drop table if exists MB_PROD_AMEND_MAPING;
/*==============================================================*/
/* Table: MB_PROD_AMEND_MAPING                                           */
/*==============================================================*/
create table MB_PROD_AMEND_MAPING
(
    PROD_TYPE varchar(50) not null comment '产品类型',
    AMEND_PROD_TYPE varchar(50) not null comment '可变更的产品类型(支持逗号分隔)',
    primary  key (PROD_TYPE)
);
alter table MB_PROD_AMEND_MAPING comment '产品变更映射表 undefined';