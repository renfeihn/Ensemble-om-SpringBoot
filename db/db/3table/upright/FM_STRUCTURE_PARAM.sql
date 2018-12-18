drop table if exists FM_STRUCTURE_PARAM;
/*==============================================================*/
/* Table: FM_STRUCTURE_PARAM                                           */
/*==============================================================*/
create table FM_STRUCTURE_PARAM
(
    STRUCTURE_TYPE varchar(3) not null comment '结构类型',
    PARAM_TYPE varchar(2) not null comment '参数类型 ',
    LENGTH varchar(50) not null comment '长度',
    START_POS varchar(50) not null comment '起始位置',
    END_POS varchar(50) not null comment '结束位置',
    PADDING_CHAR varchar(1) comment '填充字符',
    SEQ_TYPE varchar(3) comment '顺序号类型',
    STRING_VALUE varchar(99) comment '字符值',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (STRUCTURE_TYPE,PARAM_TYPE,START_POS)
);
alter table FM_STRUCTURE_PARAM comment '结构参数定义表 undefined';