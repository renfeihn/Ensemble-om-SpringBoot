drop table if exists FM_STRUCTURE_ATTR;
/*==============================================================*/
/* Table: FM_STRUCTURE_ATTR                                           */
/*==============================================================*/
create table FM_STRUCTURE_ATTR
(
    ATTR varchar(3) not null comment '结构属性',
    DESCRIPTION varchar(50) not null comment '结构属性说明',
    CHAR_ARRAY varchar(200) not null comment '取值范围 取值范围',
    COMPANY varchar(20) comment '法人',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (ATTR)
);
alter table FM_STRUCTURE_ATTR comment '结构属性定义表 undefined';