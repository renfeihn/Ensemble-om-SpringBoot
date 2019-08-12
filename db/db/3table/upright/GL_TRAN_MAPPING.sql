drop table if exists GL_TRAN_MAPPING;
/*==============================================================*/
/* Table: GL_TRAN_MAPPING                                           */
/*==============================================================*/
create table GL_TRAN_MAPPING
(
    INDEX_NO varchar(3) not null comment '序号',
    OBJECT_NAME varchar(20) not null comment '对象名称',
    KEY_NAME varchar(20) not null comment '映射字段',
    KEY_DESC varchar(100) comment '映射描述',
    IS_AMOUNT varchar(1) comment '是否金额',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    COMPANY varchar(20) comment '法人代码',
    primary  key (INDEX_NO)
);
alter table GL_TRAN_MAPPING comment '交易映射表 undefined';