drop table if exists MB_PROD_TYPE;
/*==============================================================*/
/* Table: MB_PROD_TYPE                                           */
/*==============================================================*/
create table MB_PROD_TYPE
(
    PROD_TYPE varchar(50) not null comment '产品类型',
    PROD_DESC varchar(100) not null comment '产品类型描述',
    PROD_CLASS varchar(20) not null comment '产品分类',
    PROD_GROUP varchar(1) comment '是否产品组',
    PROD_RANGE varchar(1) comment '产品作用范围',
    BASE_PROD_TYPE varchar(50) comment '基础产品',
    STATUS varchar(3) not null comment '状态',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (PROD_TYPE)
);
alter table MB_PROD_TYPE comment '产品类型定义表 undefined';