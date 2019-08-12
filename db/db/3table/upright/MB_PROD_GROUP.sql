drop table if exists MB_PROD_GROUP;
/*==============================================================*/
/* Table: MB_PROD_GROUP                                           */
/*==============================================================*/
create table MB_PROD_GROUP
(
    PROD_TYPE varchar(50) not null comment '产品父类型',
    PROD_SUB_TYPE varchar(50) not null comment '产品子类型',
    SEQ_NO varchar(50) not null comment '序号',
    DEFAULT_PROD varchar(1) comment '是否默认产品',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    RATIO Decimal(5,2) comment '存益贷产品系数',
    primary  key (PROD_TYPE,PROD_SUB_TYPE)
);
alter table MB_PROD_GROUP comment '产品组定义表 undefined';