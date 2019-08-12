drop table if exists MB_ATTR_VALUE;
/*==============================================================*/
/* Table: MB_ATTR_VALUE                                           */
/*==============================================================*/
create table MB_ATTR_VALUE
(
    ATTR_KEY varchar(30) not null comment '参数KEY值 取值于MB_ATTR_TYPE.ATTR_KEY',
    ATTR_VALUE varchar(400) not null comment '参数值',
    VALUE_DESC varchar(100) not null comment '参数值描述',
    REF_TABLE varchar(50) comment '引用表名',
    REF_CONDITION varchar(1000) comment '引用条件',
    REF_COLUMNS varchar(50) comment '关联表描述列  ',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (ATTR_KEY,ATTR_VALUE)
);
alter table MB_ATTR_VALUE comment '参数值定义表 undefined';