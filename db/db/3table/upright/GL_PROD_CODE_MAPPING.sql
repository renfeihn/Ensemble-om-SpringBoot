drop table if exists GL_PROD_CODE_MAPPING;
/*==============================================================*/
/* Table: GL_PROD_CODE_MAPPING                                           */
/*==============================================================*/
create table GL_PROD_CODE_MAPPING
(
    PROD_TYPE varchar(50) not null comment '产品',
    STATUS varchar(3) not null comment '状态  账户信息是核算状态  凭证信息是凭证状态  其他无状态赋值ALL即可',
    AMT_TYPE varchar(10) not null comment '金额类型',
    GL_CODE_COL varchar(100) comment '科目映射列名',
    GL_CODE varchar(20) comment '客户号',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    COMPANY varchar(20) comment '法人代码',
    primary  key (PROD_TYPE,STATUS,AMT_TYPE)
);
alter table GL_PROD_CODE_MAPPING comment '产品科目映射表 undefined';