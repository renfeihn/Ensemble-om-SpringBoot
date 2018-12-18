drop table if exists MB_PRICE_FEE_DEFINE;
/*==============================================================*/
/* Table: MB_PRICE_FEE_DEFINE                                           */
/*==============================================================*/
create table MB_PRICE_FEE_DEFINE
(
    PROD_FEE_TYPE varchar(8) not null comment '产品类型/费用类型',
    GL_CODE varchar(20) not null comment '科目代码GL_PROD_ACCOUNTING',
    CR_DR varchar(1) not null comment '借贷标志',
    TAXRATE_CODE varchar(3) not null comment '税率代码',
    START_DATE varchar(8) not null comment '生效日期',
    AFTER_TREATMENT varchar(1) comment '是否补充处理',
    OPER_NARRATIVE varchar(200) comment '备注',
    TAX_GL_CODE varchar(20) not null comment '税率科目代码',
    COMPANY varchar(20) comment '法人代码',
    primary  key (PROD_FEE_TYPE,GL_CODE,CR_DR,START_DATE)
);
alter table MB_PRICE_FEE_DEFINE comment '价税分离范围定义表 undefined';