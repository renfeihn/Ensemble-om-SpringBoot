drop table if exists FM_STRUCTURE_TYPE;
/*==============================================================*/
/* Table: FM_STRUCTURE_TYPE                                           */
/*==============================================================*/
create table FM_STRUCTURE_TYPE
(
    STRUCTURE_TYPE varchar(3) not null comment '结构类型',
    STRUCTURE_ATTR varchar(3) comment '结构属性',
    STRUCTURE_DESC varchar(60) not null comment '结构描述',
    STRUCTURE_LENGTH varchar(50) not null comment '结构长度',
    STRUCTURE_CLASS varchar(2) not null comment '结构分类 ',
    DELIMITER_IND varchar(1) not null default 'N'   comment '是否设置分隔符',
    RESTRICTED_DELIMITER varchar(200) comment '不容许的分隔符',
    COMPLETE_IND varchar(1) not null default 'N'   comment '是否设置完成',
    CHECK_DIGIT_FORMULA varchar(3) comment '检查规则 目前系统中该字段都是写死',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (STRUCTURE_TYPE)
);
alter table FM_STRUCTURE_TYPE comment '结构类型定义表 undefined';