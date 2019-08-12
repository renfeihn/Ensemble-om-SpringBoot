drop table if exists MB_ATTR_TYPE;
/*==============================================================*/
/* Table: MB_ATTR_TYPE                                           */
/*==============================================================*/
create table MB_ATTR_TYPE
(
    ATTR_KEY varchar(30) not null comment '参数KEY',
    ATTR_TYPE varchar(50) comment '参数数据类型',
    ATTR_DESC varchar(100) not null comment '参数描述',
    ATTR_CLASS varchar(20) not null comment '参数分类 取值于MB_ATTR_CLASS.ATTR_CLASS',
    USE_METHOD varchar(10) not null comment '使用方式 EVAL  ',
    VALUE_METHOD varchar(10) not null comment '取值方式',
    SET_VALUE_FLAG varchar(10) comment '参数值设置方式',
    BUSI_CATEGORY varchar(50) comment '业务分类',
    STATUS varchar(3) not null comment '状态',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (ATTR_KEY)
);
alter table MB_ATTR_TYPE comment '参数定义表 undefined';