drop table if exists GL_PROD_MAPPING;
/*==============================================================*/
/* Table: GL_PROD_MAPPING                                           */
/*==============================================================*/
create table GL_PROD_MAPPING
(
    MAPPING_TYPE varchar(50) not null comment '映射产品类型',
    PROD_TYPE varchar(50) not null comment '产品类型',
    MAPPING_DESC varchar(100) comment '映射名称',
    PROD_DESC varchar(100) comment '产品类型描述',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    COMPANY varchar(20) comment '法人代码',
    primary  key (MAPPING_TYPE)
);
alter table GL_PROD_MAPPING comment '产品映射表 undefined';