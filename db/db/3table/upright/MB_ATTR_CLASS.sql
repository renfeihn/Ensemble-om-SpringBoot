drop table if exists MB_ATTR_CLASS;
/*==============================================================*/
/* Table: MB_ATTR_CLASS                                           */
/*==============================================================*/
create table MB_ATTR_CLASS
(
    ATTR_CLASS varchar(20) not null comment '参数分类',
    ATTR_CLASS_DESC varchar(100) not null comment '参数分类描述',
    ATTR_CLASS_LEVEL varchar(10) comment '参数分类层级',
    PARENT_ATTR_CLASS varchar(20) comment '上级参数分类',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (ATTR_CLASS)
);
alter table MB_ATTR_CLASS comment '参数分类定义表 undefined';