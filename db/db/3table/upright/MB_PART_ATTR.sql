drop table if exists MB_PART_ATTR;
/*==============================================================*/
/* Table: MB_PART_ATTR                                           */
/*==============================================================*/
create table MB_PART_ATTR
(
    PART_TYPE varchar(50) not null comment '指标类型',
    ATTR_KEY varchar(30) not null comment '参数KEY',
    ATTR_VALUE varchar(400) comment '参数值',
    COMPANY varchar(20) comment '法人代码',
    TRAN_TIMESTAMP varchar(17) comment '交易时间戳',
    TRAN_TIME Decimal(11,0) comment '交易时间',
    primary  key (PART_TYPE,ATTR_KEY)
);
alter table MB_PART_ATTR comment '指标参数定义表 undefined';