drop table if exists IRL_ELEMENT;
/*==============================================================*/
/* Table: IRL_ELEMENT                                           */
/*==============================================================*/
create table IRL_ELEMENT
(
    ELEMENT_ID varchar(20) not null comment '因子名称',
    ELEMENT_TYPE varchar(1) not null comment '因子类型',
    ELEMENT_ATTR varchar(10) not null comment '因子数据类型',
    ELEMENT_LENGTH varchar(2) not null comment '字段长度',
    ELEMENT_DESC varchar(50) not null comment '字段描述',
    TABLE_NAME varchar(30) comment '因子取值对应的表',
    IRL_FIELD_VALUE varchar(50) comment '因子所对应的范围',
    COMPANY varchar(20) comment '所属法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (ELEMENT_ID,ELEMENT_TYPE)
);
alter table IRL_ELEMENT comment '因子表 undefined';