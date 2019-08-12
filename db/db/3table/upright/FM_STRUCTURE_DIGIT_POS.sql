drop table if exists FM_STRUCTURE_DIGIT_POS;
/*==============================================================*/
/* Table: FM_STRUCTURE_DIGIT_POS                                           */
/*==============================================================*/
create table FM_STRUCTURE_DIGIT_POS
(
    STRUCTURE_TYPE varchar(3) not null comment '结构类型',
    DIGIT_POS varchar(50) not null comment '数字位置',
    CHECK_DIGIT_IND varchar(1) not null default 'N'   comment '是否进行数字的权重计算',
    WEIGHT varchar(5) comment '权重',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (STRUCTURE_TYPE,DIGIT_POS)
);
alter table FM_STRUCTURE_DIGIT_POS comment '结构数字校验位定义表 undefined';