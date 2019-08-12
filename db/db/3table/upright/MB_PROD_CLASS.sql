drop table if exists MB_PROD_CLASS;
/*==============================================================*/
/* Table: MB_PROD_CLASS                                           */
/*==============================================================*/
create table MB_PROD_CLASS
(
    PROD_CLASS varchar(20) not null comment '产品分类',
    PROD_CLASS_DESC varchar(100) not null comment '产品分类描述',
    PROD_CLASS_LEVEL varchar(10) comment '产品分类层级  1：1级  2： 2级',
    PARENT_PROD_CLASS varchar(20) comment '上级产品分类 取值于MB_PROD_CLASS.PROD_CLASS',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (PROD_CLASS)
);
alter table MB_PROD_CLASS comment '产品分类定义表 undefined';